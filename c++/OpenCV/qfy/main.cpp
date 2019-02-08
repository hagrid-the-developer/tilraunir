#include <cstdio>
#include <cstdint>
#include <cstdlib>
#include <opencv2/opencv.hpp>
#include <vector>

void help(char const* prog_name) {
    printf("Usage: %s <file-path>\n\n", prog_name);
    std::exit(1);
}

struct Frame {
    double _pos_msec;
    cv::Mat _frame;
};
using Frames = std::vector<Frame>;

void load_frames(char const* file_path, Frames& frames) {
    cv::VideoCapture cap{file_path};
    while(cap.isOpened()) {
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
        if (std::abs(total_diffs[i][0] - mean[0]) > std_dev[0])
            indexes.push_back(i + 1);
    }
    return indexes;
}

int
main(int const argc, char const* argv[]) {
    if (argc != 3)
        help(argc > 0 ? argv[0] : "pex");

    const auto file_path = argv[1];

    Frames frames;
    load_frames(file_path, frames);
    fprintf(stderr, "Frames loaded\n");
    const auto indexes = find_key_frames(frames);
    for (const auto idx: indexes) {
        printf("%lf, \n", frames[idx]._pos_msec);
    }
}
