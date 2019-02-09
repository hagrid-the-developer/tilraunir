#include <cassert>
#include <cstdio>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <opencv2/opencv.hpp>
#include <optional>
#include <vector>

#include "error.hpp"

[[noreturn]] void help(char const* prog_name) {
    printf("Usage: %s <file-path> <dimension>\n\n", prog_name);
    std::exit(1);
}

class ShowHelpException: public std::exception{};

struct Dimension {
    int x, y;
};

Dimension readDimension(char const* s) {
    int x, y;
    if (std::sscanf(s, "%dx%d", &x, &y) != 2)
        throw Error{"Cannot parse dimnension"};
    if (x <= 0 || y <= 0)
        throw Error{"Dimension items must be positive"};
    return Dimension{x, y};
}

struct Frame {
    double _pos_msec;
    cv::Mat _frame;
};
using Frames = std::vector<Frame>;

void load_frames(char const* file_path, const Dimension grid_dim, Frames& frames, Dimension& video_dim) {
    cv::VideoCapture cap{file_path};
    if (!cap.isOpened())
        throw Error{"Cannot open video file"};

    video_dim = Dimension {
        int(cap.get(cv::CAP_PROP_FRAME_WIDTH)),
        int(cap.get(cv::CAP_PROP_FRAME_HEIGHT))
    };
    if (video_dim.x <= 0 || video_dim.y <= 0 || video_dim.x < grid_dim.x || video_dim.y < grid_dim.y)
        throw Error{"Invalid video dimensions: %d, %d", video_dim.x, video_dim.y};

    for (;;) {
        const double pos = cap.get(cv::CAP_PROP_POS_MSEC);
        cv::Mat frame;
        if(!cap.read(frame))
            break;

        cv::Mat grayscale;
        cv::cvtColor(frame, grayscale, cv::COLOR_BGR2GRAY);
        frames.push_back(Frame{pos, grayscale});
    }
}

using Indexes = std::vector<std::size_t>;
Indexes find_key_frames(Frames const& frames) {
    std::vector<cv::Scalar> total_diffs;
    for (std::size_t i = 1; i < frames.size(); ++i) {
        cv::Mat diffs;
        cv::absdiff(frames[i - 1]._frame, frames[i]._frame, diffs);
        const auto sum = cv::sum(diffs);
        total_diffs.push_back(sum);
    }
    cv::Scalar mean, std_dev;
    cv::meanStdDev(total_diffs, mean, std_dev);

    fprintf(stderr, "mean, stddev: %lf, %lf\n", double(mean[0]), double(std_dev[0]));

    Indexes indexes;
    for (std::size_t i = 0; i < total_diffs.size(); ++i) {
        if (cv::abs(total_diffs[i][0] - mean[0]) > std_dev[0])
            indexes.push_back(i + 1);
    }
    return indexes;
}

unsigned median(cv::Mat const& mat, cv::Rect const& roi) {
    int counts[256];
    std::memset(counts, 0, sizeof(counts));
    const auto total_count = roi.area();

    uchar const* data = mat.data;
    std::size_t const stride = mat.step;
    for (int j = roi.y; j < roi.y + roi.height; ++j) {
        uchar const* row = &data[j*stride + roi.x];
        for (int i = 0; i < roi.width; ++i) {
            const auto val = row[i];
            ++counts[val];
        }
    }

    unsigned median = 0;
    for (int count = counts[0]; count < total_count/2; count += counts[++median]) {
        assert(median < sizeof(counts));
    }
    return median;
}

void medians(Frames const& frames, Indexes const& indexes, const Dimension grid_dim, const Dimension video_dim) {
    const int subrect_w = video_dim.x/grid_dim.x;
    const int subrect_h = video_dim.y/grid_dim.y;

    std::vector<cv::Rect> submatpos;
    int x = 0;
    for (int i = 0; i < grid_dim.x; ++i) {
        int const w = subrect_w + (i < video_dim.x % grid_dim.x);
        int y = 0;
        for (int j = 0; j < grid_dim.y; ++j) {
            int const h = subrect_h + (j < video_dim.y % grid_dim.y);
            submatpos.emplace_back(x, y, w, h);
            y += h;
        }
        x += w;
    }
    for (const auto idx: indexes) {
        auto const& frame = frames[idx]._frame;
        printf("%lf", frames[idx]._pos_msec);
        for (auto const& rect: submatpos) {
            printf(", %u", median(frame, rect));
        }
        putc('\n', stdout);
    }
}

int
main(int const argc, char const* argv[]) {
    try {
        if (argc != 3)
            throw ShowHelpException{};

        const auto file_path = argv[1];
        const Dimension grid_dim = readDimension(argv[2]);

        Frames frames;
        Dimension video_dim;
        load_frames(file_path, grid_dim, frames, video_dim);
        if (frames.empty()) {
            throw Error("Video is empty");
        }

        fprintf(stderr, "Frames loaded: %zux%dx%d\n", frames.size(), video_dim.x, video_dim.y);

        const auto indexes = find_key_frames(frames);
        fprintf(stderr, "Found %zu key frames\n", indexes.size());
        medians(frames, indexes, grid_dim, video_dim);
    } catch (ShowHelpException const&) {
        help(argc > 0 ? argv[0] : "pex");
    } catch (Error const& e) {
        fprintf(stderr, "Error: %s\n", e.what());
        std::exit(2);
    }
}
