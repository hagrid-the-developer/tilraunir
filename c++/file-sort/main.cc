#include "core/app-template.hh"
#include "core/reactor.hh"
#include <boost/range.hpp>
#include <boost/iterator/counting_iterator.hpp>
#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <iostream>

namespace
{

// Questions:
//   * How to allocate memory? Through new/delete, malloc/free?
//     Can I use std::vector etc. without special allocator?
//   * How can I share file between threads/fibers?
//   * Is it possible to use some sorter name for namespace seastar? :-)


template <typename T>
T round_to(const T val, const T round) noexcept {
    return (val + round - 1) / round;
}

template <typename T>
T align_to(const T val, const T alignment) noexcept {
    return (val + alignment - 1) / alignment * alignment;
}

struct Page {
    char data_[4096];

    friend bool operator<(const Page &x, const Page &y) noexcept {
        return ::memcmp(&x, &y, 4096) < 0;
    }

    friend bool operator>(const Page &x, const Page &y) noexcept {
        return ::memcmp(&x, &y, 4096) > 0;
    }

    friend bool operator==(const Page &x, const Page &y) noexcept {
        return ::memcmp(&x, &y, 4096) == 0;
    }
};

class FileSortConfig {
private:
    seastar::sstring file_path_ = "input.bin";
    seastar::sstring tmp_path_ = "./tmp";
    ::size_t buf_size_in_pages_ = 1024;

public:
    FileSortConfig() {
    }

    FileSortConfig(const FileSortConfig&) = default;
    FileSortConfig(FileSortConfig&&) = default;

    const seastar::sstring &file_path() const noexcept {
        return file_path_;
    }

    ::size_t buf_size() const noexcept {
        return buf_size_in_pages_ << 12;
    }

    seastar::sstring tmp_file(const ::size_t index) const noexcept {
        char buf[tmp_path_.length() + 1 + sizeof(::size_t)*3 + 1];
        const auto ret = ::snprintf(buf, sizeof(buf), "%s/%zu", tmp_path_.c_str(), index);
        assert(ret > 0 && ::size_t(ret) < sizeof(buf));
        return seastar::sstring(buf);
    }

    ::size_t partition_fibers_num() const noexcept {
        return 12;
    }

    ::size_t merge_fibers_num() const noexcept {
        return 12;
    }

    ::size_t merge_files_at_once_num() const noexcept {
        return 4;
    }
};
FileSortConfig cfg;

seastar::future<> partition_file_dma_fiber(const ::uint64_t file_beg, const ::uint64_t file_end, seastar::file f) {
    return seastar::do_with(seastar::temporary_buffer<char>::aligned(cfg.buf_size(), 4096), std::move(f), [file_beg, file_end](auto &buf, auto &f) {
        auto range = boost::irange(file_beg, file_end, cfg.buf_size());
        return seastar::do_for_each(range, [&buf, &f](const ::uint64_t pos) {
            return f.dma_read(pos, buf.get_write(), cfg.buf_size()).then([&buf, pos] (const ::size_t size) {
                std::cerr << "Read: " << size << std::endl;
                if (!size) {
                    // FIXME: Return error
                    return seastar::make_ready_future<>();
                }
                auto ptr = reinterpret_cast<Page*>(buf.get_write());

                // FIXME: Deal with: size % 4096 != 0.
                std::sort(ptr, ptr + size/4096);
                const ::uint64_t index = pos / cfg.buf_size();
                return seastar::open_file_dma(cfg.tmp_file(index), seastar::open_flags::wo | seastar::open_flags::create | seastar::open_flags::truncate).then([&buf, size] (seastar::file outfile) {
                    return seastar::do_with(std::move(outfile), [&buf, size](auto &outfile) {
                        return outfile.allocate(0, size).then([&outfile, &buf, size] {
                            return outfile.dma_write(0, buf.get(), size).then([size] (const ::size_t written_size) {
                              // FIXME: Deal with case when written_size < size => I/O error.
                            });
                        });
                    });
                });
            });
        });
    });
}

seastar::future<> partition_file_dma(const ::uint64_t file_size) {
    struct FileParts {
        ::uint64_t beg_;
        ::uint64_t end_;
    };
    std::vector<FileParts> positions;
    positions.reserve(cfg.partition_fibers_num());
    const ::uint64_t len = align_to(file_size / cfg.partition_fibers_num(), cfg.buf_size());
    for (::uint64_t pos = 0; pos < file_size; pos += len) {
        positions.emplace_back(FileParts{pos, std::min(pos + len, file_size)});
    }

    return seastar::do_with(std::move(positions), [](const auto &positions) {
        return seastar::open_file_dma(cfg.file_path(), seastar::open_flags::ro).then([&positions](seastar::file file) {
            // FIXME: Deal with file that cannot be opened.
            return seastar::parallel_for_each(positions, [file](const auto part) {
                std::cerr << "part.beg:" << part.beg_ << "; " << part.end_ << std::endl;
                return partition_file_dma_fiber(part.beg_, part.end_, file);
                //return seastar::make_ready_future<>();
            });
        });
    });
}

/**
 * Merge files with ids from interval [f, l) and generate file with id: gen
 */
class MergeFilesByIdxDma {
private:
    ::size_t f_;
    ::size_t l_;
    ::size_t gen_;

    ::size_t len_;
    boost::iterator_range<boost::range_detail::integer_iterator<::size_t>> range_;

    std::vector<seastar::file> files_;
    seastar::file out_file_;
    std::vector<::uint64_t> positions_;
    std::vector<::size_t> heap_;
    std::vector<::size_t> buf_positions_;
    std::vector<::size_t> buf_lens_;
    seastar::temporary_buffer<char> buf_; // Stores data for all input files
    seastar::temporary_buffer<char> out_buf_;
    ::uint64_t out_buf_pos_;
    ::uint64_t out_file_pos_;


    Page& first_page(const ::size_t i) noexcept {
        return *reinterpret_cast<Page*>(buf_.get_write() + i*cfg.buf_size());
    }
    const Page& first_page(const ::size_t i) const noexcept {
        return *reinterpret_cast<const Page*>(buf_.get() + i*cfg.buf_size());
    }

    Page& page(const ::size_t i) noexcept {
        return *reinterpret_cast<Page*>(buf_.get_write() + i*cfg.buf_size() + buf_positions_[i]*4096);
    }
    const Page& page(const ::size_t i) const noexcept {
        return *reinterpret_cast<const Page*>(buf_.get() + i*cfg.buf_size() + buf_positions_[i]*4096);
    }

    seastar::future<::uint64_t> total_input_files_length() {
        return seastar::map_reduce(range_, [this](const ::size_t i) {
            return seastar::file_size(cfg.tmp_file(i + f_));
        }, ::size_t(0), std::plus<::size_t>());
    }

    seastar::future<> prepare_files() {
        return seastar::do_for_each(range_, [this](const ::size_t i) {
            return seastar::open_file_dma(cfg.tmp_file(i + f_), seastar::open_flags::ro).then([this](seastar::file file) {
                // FIXME: File cannot be opened!
                files_.emplace_back(std::move(file));
            });
        }).then([this] {
            return seastar::open_file_dma(cfg.tmp_file(gen_), seastar::open_flags::wo | seastar::open_flags::create | seastar::open_flags::truncate).then([this] (seastar::file out_file) {
                out_file_ = std::move(out_file);
                return total_input_files_length().then([this](const ::uint64_t len) {
                    return out_file_.allocate(0, len);
                });
            });
        });
    }

    seastar::future<> ensure_can_write() {
        if (out_buf_pos_ < out_buf_.size()) {
            assert(out_buf_pos_ + 4096 <= out_buf_.size());
            return seastar::make_ready_future<>();
        }
        return out_file_.dma_write(out_file_pos_, out_buf_.get_write(), out_buf_.size()).then([this] (const ::size_t size) {
            // FIXME: Deal with size < out_buf.size()
            out_file_pos_ += size;
            out_buf_pos_ = 0;
            return seastar::make_ready_future<>();
        });
    }

    seastar::future<> ensure_can_read(const ::size_t i) {
        if (buf_positions_[i] < cfg.buf_size()) {
            assert(buf_positions_[i] + 4096 <= cfg.buf_size());
            return seastar::make_ready_future<>();
        }
        return files_[i].dma_read(positions_[i], &first_page(i), cfg.buf_size()).then([this, i] (const ::size_t size) {
            // FIXME: File cannot be read!
            buf_positions_[i] = 0;
            buf_lens_[i]= size;
            positions_[i] += size;
        });
    }

    seastar::future<> step() {
        std::pop_heap(heap_.begin(), heap_.end(), CmpForHeap(*this));
        const ::size_t i = heap_.back();

        return ensure_can_write().then([this, i] {
            ::memcpy(out_buf_.get_write() + out_buf_pos_, &page(i), 4096);
            buf_positions_[i] += 4096;
            out_buf_pos_ += 4096;

            return ensure_can_read(i).then([this, i] {
                if (buf_positions_[i] >= cfg.buf_size())
                    heap_.resize(heap_.size() - 1);
                else
                    std::push_heap(heap_.begin(), heap_.end(), CmpForHeap(*this));

                return seastar::make_ready_future<>();
            });
        });
    }

    seastar::future<> create_heap() {
        return seastar::do_for_each(range_, [this](const ::size_t i) {
            return ensure_can_read(i);
        }).then([this] {
            std::make_heap(heap_.begin(), heap_.end(), CmpForHeap(*this));
            return seastar::make_ready_future();
        });
    }

    seastar::future<> mrproper() {
        return seastar::do_for_each(range_, [this](const ::size_t i) {
            return seastar::remove_file(cfg.tmp_file(i + f_));
        });
    }

    /**
     * Operator for heap_xyz() functions.
     */
    struct CmpForHeap {
        MergeFilesByIdxDma &parent_;

        CmpForHeap(MergeFilesByIdxDma &parent)
        :   parent_{parent} {
        }

        bool operator()(const ::size_t x, const ::size_t y) const {
            return parent_.page(x) > parent_.page(y);
        }
    };

public:
    MergeFilesByIdxDma(const ::size_t f, const ::size_t l, const ::size_t gen)
    :   f_{f}
    ,   l_{l}
    ,   gen_{gen}
    ,   len_{l_ - f_}
    ,   range_{boost::irange(::size_t(0), len_)}
    ,   files_{}
    ,   out_file_{}
    ,   positions_{len_, ::uint64_t(0)}
    ,   heap_{boost::counting_iterator<::size_t>(f_), boost::counting_iterator<::size_t>(l_)}
    ,   buf_positions_{len_, ::size_t(0)}
    ,   buf_lens_{len_, ::size_t(0)}
    ,   buf_{seastar::temporary_buffer<char>::aligned(len_ * cfg.buf_size(), 4096)}
    ,   out_buf_{seastar::temporary_buffer<char>::aligned(cfg.buf_size(), 4096)}
    ,   out_buf_pos_{::size_t(0)}
    ,   out_file_pos_{::size_t(0)} {
    }
    MergeFilesByIdxDma(const MergeFilesByIdxDma&) = delete;
    MergeFilesByIdxDma(MergeFilesByIdxDma&&) = default;
    MergeFilesByIdxDma& operator=(const MergeFilesByIdxDma&) = delete;
    MergeFilesByIdxDma& operator=(MergeFilesByIdxDma&&) = default;

    seastar::future<> operator()() {
        return prepare_files().then([this] {
            create_heap().then([this] {
                seastar::do_until([this] {
                    return heap_.size() == 0;
                }, [this] {
                    return step();
                }).then([this] {
                    mrproper();
                });
            });
        });
    }
};

//#error Index of new file: layer.back().l_ + (x - layer.back().f_) / cfg.merge_files_at_once_num()
seastar::future<> merge_file_dma(const ::uint64_t file_size) {
    struct TmpFilesIndexes {
        ::size_t f_;
        ::size_t l_;
    };
    std::vector<std::vector<TmpFilesIndexes>> plan;

    for (::size_t last_idx = (file_size + cfg.buf_size() - 1)/ cfg.buf_size(), files_to_merge = last_idx, first_idx = 0; files_to_merge > 1; ) {
        std::vector<TmpFilesIndexes> layer;
        ::size_t files_generated = 0;

        const ::size_t fibers_num = std::min(cfg.merge_fibers_num(), round_to(files_to_merge, cfg.merge_files_at_once_num()));
        const ::size_t len = align_to(files_to_merge / fibers_num, cfg.merge_files_at_once_num());
        for (::size_t idx = first_idx; idx < last_idx; idx += len) {
            const auto f = idx;
            const auto l = std::min(idx + len, last_idx);
            const auto len = l - f;
            files_generated += round_to(len, cfg.merge_files_at_once_num());
            layer.emplace_back(TmpFilesIndexes{f, l});
        }
        plan.emplace_back(std::move(layer));
        first_idx = last_idx;
        last_idx += files_generated;
        files_to_merge = files_generated;
    }

    return seastar::do_for_each(plan, [] (const auto layer) {
        const auto f_idx = layer.front().f_;
        const auto n_idx = layer.back().l_;
        return seastar::parallel_for_each(layer, [f_idx, n_idx] (const auto indexes) {
            auto range = boost::irange(indexes.f_, indexes.l_, cfg.merge_files_at_once_num());
            return seastar::do_for_each(range, [f_idx, n_idx] (const auto idx) {
                const auto last = std::min(idx + cfg.merge_files_at_once_num(), n_idx);
                MergeFilesByIdxDma mfbi{idx, last, n_idx + (idx - f_idx)/ cfg.merge_files_at_once_num()};
                return seastar::do_with(std::move(mfbi), [](auto &mfbi) {
                    return mfbi();
                });
            });
        });
    });
}

seastar::future<> sort_file() {
    return seastar::file_size(cfg.file_path()).then([](const ::uint64_t file_size) {
        return partition_file_dma(file_size).then([file_size] {
            return merge_file_dma(file_size);
        });
    });
}

} /* Namespace Anonymous */

int main(int argc, char** argv) {
    seastar::app_template app;
    try {
        app.run(argc, argv, [] {
                std::cout << seastar::smp::count << "\n";
                return sort_file();
        });
    } catch(...) {
        std::cerr << "Failed to start application: " << std::current_exception() << "\n";
        return 1;
    }
    return 0;
}
