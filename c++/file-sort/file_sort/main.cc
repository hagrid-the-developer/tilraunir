#include "core/app-template.hh"
#include "core/reactor.hh"
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
};
FileSortConfig cfg;

struct FilePartitionerDmaData {
    bool stop_ = false;
    ::uint64_t pos_ = 0;
    ::size_t index_ = 0;
    seastar::file file_;
    seastar::temporary_buffer<char> buf_;

    FilePartitionerDmaData(seastar::file &&file)
    :   file_(std::move(file))
    ,   buf_(seastar::temporary_buffer<char>::aligned(cfg.buf_size(), 4096)) {
    }
};

seastar::future<> partition_file_dma() {
    return seastar::open_file_dma(cfg.file_path(), seastar::open_flags::ro).then([](seastar::file file) {
        std::cerr << "File opened" << std::endl;

        return seastar::do_with(FilePartitionerDmaData(std::move(file)), [](auto &data) {
            return seastar::do_until( [&data] { return data.stop_; }, [&data] {
                return data.file_.dma_read(data.pos_, data.buf_.get_write(), cfg.buf_size()).then([&data] (const ::size_t size) {
                    std::cerr << "Read: " << size << std::endl;
                    if (!size) {
                        data.stop_ = true;
                        return seastar::make_ready_future<>();
                    }
                    data.pos_ += size;
                    data.index_++;
                    auto ptr = reinterpret_cast<Page*>(data.buf_.get_write());
             
                    // FIXME: Deal with: size % 4096 != 0.
                    std::sort(ptr, ptr + size/4096, [](const Page &x, const Page &y) {
                        return ::memcmp(&x, &y, 4096) < 0;
                    });
                    return seastar::open_file_dma(cfg.tmp_file(data.index_), seastar::open_flags::wo | seastar::open_flags::create | seastar::open_flags::truncate).then([&data, size] (seastar::file outfile) {
                        return seastar::do_with(std::move(outfile), [&data, size](auto &outfile) {
                            return outfile.allocate(0, size).then([&outfile, &data, size] {
                                return outfile.dma_write(0, data.buf_.get(), size).then([size] (const ::size_t written_size) {
                                  // FIXME: Deal with case when written_size < size => I/O error.
                                });
                            });
                        });
                    });
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
                std::cout << "Hello world\n";
                std::cout << seastar::smp::count << "\n";
                return partition_file_dma();
        });
    } catch(...) {
        std::cerr << "Failed to start application: " << std::current_exception() << "\n";
        return 1;
    }
    return 0;
}
