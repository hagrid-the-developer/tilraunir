#include "core/app-template.hh"
#include "core/reactor.hh"
#include <boost/iterator/counting_iterator.hpp>
#include <boost/filesystem.hpp>
#include <boost/range.hpp>
#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <iostream>

namespace fs = boost::filesystem;
namespace po = boost::program_options;

namespace
{

template <typename T>
T round_to(const T val, const T round) noexcept {
    return (val + round - 1) / round;
}

template <typename T>
T align_to(const T val, const T alignment) noexcept {
    return (val + alignment - 1) / alignment * alignment;
}

std::string
str_printf(const char *msg, va_list args) {
        va_list args2;

        va_copy(args2, args);
        const int len = ::vsnprintf(nullptr, 0, msg, args2);
        va_end(args2);

        std::string ret(len + 1, '~');
        ::vsnprintf(&ret[0], len + 1, msg, args);
        assert(ret.back() == 0);
        ret.resize(len);

        return ret;
}

std::string
str_printf(const char *msg, ...) {
	va_list args;

	va_start(args, msg);
	std::string ret = str_printf(msg, args);
	va_end(args);
	return ret;
}

/**
 * Exception with printf-like constructor.
 */
class Error : public std::runtime_error {
public:
        Error() = default;
        Error(const Error&) = default;
        Error(Error&&) = default;
        template<typename... T>
        Error(T... t)
        :   std::runtime_error(str_printf(t...)) {
        }
};

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
    seastar::sstring out_file_path_ = "output.bin";
    seastar::sstring tmp_path_ = "./tmp";
    ::size_t buf_size_ = 4;
    ::size_t partition_fibers_num_ = 12;
    ::size_t merge_files_at_once_num_ = 4;
    ::size_t merge_fibers_num_ = 12;

public:
    FileSortConfig() {
    }

    FileSortConfig(const FileSortConfig&) = default;
    FileSortConfig(FileSortConfig&&) = default;

    const seastar::sstring &file_path() const noexcept {
        return file_path_;
    }

    const seastar::sstring &out_file_path() const noexcept {
        return out_file_path_;
    }

    ::size_t buf_size() const noexcept {
        return buf_size_ * 1024 * 1024;
    }

    seastar::sstring tmp_file(const ::size_t index) const noexcept {
        char buf[tmp_path_.length() + 1 + sizeof(::size_t)*3 + 1];
        const auto ret = ::snprintf(buf, sizeof(buf), "%s/%zu", tmp_path_.c_str(), index);
        assert(ret > 0 && ::size_t(ret) < sizeof(buf));
        return seastar::sstring(buf);
    }

    ::size_t partition_fibers_num() const noexcept {
        return partition_fibers_num_;
    }

    ::size_t merge_fibers_num() const noexcept {
        return merge_fibers_num_;
    }

    ::size_t merge_files_at_once_num() const noexcept {
        return merge_files_at_once_num_;
    }

    template <typename Opt>
    void add_options(Opt &opt) {
        opt.add_options()
        ("in-file" , po::value(&file_path_)->default_value(file_path_), "path to input file")
        ("out-file" , po::value(&out_file_path_)->default_value(out_file_path_), "path to output file")
        ("tmp-dir", po::value(&tmp_path_)->default_value(tmp_path_), "path to temporary directory")
        ("buf-size", po::value(&buf_size_)->default_value(buf_size_), "size of buffer for one fiber (MB)")
        ("partition-fibers-num", po::value(&partition_fibers_num_)->default_value(partition_fibers_num_), "number of fibers for partitioning stage")
        ("merge-fibers-num", po::value(&merge_fibers_num_)->default_value(merge_fibers_num_), "number of fibers for merging stage")
        ("merge-files-at-once", po::value(&merge_files_at_once_num_)->default_value(merge_files_at_once_num_), "how many files can be merged in one fiber at once")
        ;
    }
};
FileSortConfig cfg;

seastar::future<> partition_file_dma_fiber(const ::uint64_t file_beg, const ::uint64_t file_end, seastar::file f) {
    return seastar::do_with(seastar::temporary_buffer<char>::aligned(cfg.buf_size(), 4096), std::move(f), [file_beg, file_end](auto &buf, auto &f) {
        auto range = boost::irange(file_beg, file_end, cfg.buf_size());
        return seastar::do_for_each(range, [&buf, &f](const ::uint64_t pos) {
            return f.dma_read(pos, buf.get_write(), cfg.buf_size()).then([&buf, pos] (const ::size_t size) {
                if (!size) {
                    return seastar::make_ready_future<>();
                }
                auto ptr = reinterpret_cast<Page*>(buf.get_write());

                assert(size % 4096 == 0);
                std::sort(ptr, ptr + size/4096);
                const ::uint64_t index = pos / cfg.buf_size();
                return seastar::open_file_dma(cfg.tmp_file(index), seastar::open_flags::wo | seastar::open_flags::create | seastar::open_flags::truncate).then([&buf, size] (seastar::file outfile) {
                    return seastar::do_with(std::move(outfile), [&buf, size](auto &outfile) {
                        return outfile.allocate(0, size).then([&outfile, &buf, size] {
                            return outfile.dma_write(0, buf.get(), size).then([size] (const ::size_t written_size) {
                                if (written_size < size)
                                    throw Error("Cannot write whole buffer");
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
        return seastar::open_file_dma(cfg.file_path(), seastar::open_flags::ro).then_wrapped([&positions](auto fut) {
            seastar::file file;
            try {
                file = std::get<0>(fut.get());
            } catch (std::exception &e) {
                throw Error("Cannot open file: %s : %s", cfg.file_path().c_str(), e.what());
            }
            return seastar::parallel_for_each(boost::irange<unsigned>(0, positions.size()), [&positions, file](const ::size_t i) {
                const auto b = positions[i].beg_;
                const auto e = positions[i].end_;
                return seastar::smp::submit_to(i % seastar::smp::count, [b, e, file]{ return partition_file_dma_fiber(b, e, file); });
            });
        });
    });
}

seastar::future<> sort_file() {
    return seastar::file_size(cfg.file_path()).then_wrapped([](auto fut) {
        try {
            return std::get<0>(fut.get());
        } catch (std::exception &e) {
            throw Error("Cannot determine size of file: %s : %s", cfg.file_path().c_str(), e.what());
        }
    }).then([](const ::uint64_t file_size) {
        return partition_file_dma(file_size).then([file_size] {
            //return merge_file_dma(file_size);
        });
    });
}

} /* Namespace Anonymous */

int main(int argc, char** argv) {
    seastar::app_template app;
    cfg.add_options(app);

    std::cerr << "Number of threads: " << seastar::smp::count << std::endl;
    try {
        app.run(argc, argv, [] {
                return sort_file();
        });
    } catch(...) {
        std::cerr << "Failed to start application: " << std::current_exception() << "\n";
        return 1;
    }
    return 0;
}
