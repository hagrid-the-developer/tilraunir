#include "core/app-template.hh"
#include "core/reactor.hh"
#include <boost/range.hpp>
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


struct Page {
    char data_[4096];

    friend bool operator<(const Page &x, const Page &y) noexcept {
        return ::memcmp(&x, &y, 4096) < 0;
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

seastar::future<> sort_file() {
    return seastar::file_size(cfg.file_path()).then([](const ::uint64_t file_size) {
        struct FileParts {
            ::uint64_t beg_;
            ::uint64_t end_;
        };
        std::vector<FileParts> positions;
        positions.reserve(cfg.partition_fibers_num());
        const ::uint64_t len = (file_size / cfg.partition_fibers_num() + cfg.buf_size() - 1) / cfg.buf_size() * cfg.buf_size();
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
