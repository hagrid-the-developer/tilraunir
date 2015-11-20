#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <memory>
#include <random>
#include <sys/time.h>
#include <time.h>

namespace $ = std;

namespace {

typedef ::uint32_t u32;
typedef unsigned uns;

typedef std::default_random_engine RandomGenerator;
typedef std::uniform_real_distribution<float> Dist;

RandomGenerator rand;
Dist dist(0, 1024*1024*1024);

const uns COLUMNS_LEN = 16 << 10;
const uns ROWS_LEN = 16 << 10;
const uns LEN = COLUMNS_LEN * ROWS_LEN;

void src_col_row(u32 $$[], const u32 $[]) noexcept {
	for (uns col = 0; col < COLUMNS_LEN; ++col) {
		for (uns row = 0; row < ROWS_LEN; ++row) {
			$$[row + col*ROWS_LEN] = $[col + row*ROWS_LEN];
		}
	}
}

void src_row_col(u32 $$[], const u32 $[]) noexcept {
	for (uns row = 0; row < ROWS_LEN; ++row) {
		for (uns col = 0; col < COLUMNS_LEN; ++col) {
			$$[row + col*ROWS_LEN] = $[col + row*ROWS_LEN];
		}
	}
}

double getrealtime() noexcept {
	struct timespec ts;
	if (-1 == clock_gettime(CLOCK_REALTIME, &ts))
		::abort(); // This could only happen by some mistake in the program.
	return ts.tv_sec + ts.tv_nsec/1000000000.0;
}

typedef void (*F)(u32 $$[], const u32 $[]);

double run_test(F f) noexcept {
	auto src = $::make_unique<u32[]>(LEN);
	auto dst = $::make_unique<u32[]>(LEN);

	$::generate(&src[0], &src[LEN], []() -> u32 { dist(rand); });
	$::generate(&dst[0], &dst[LEN], []() -> u32 { dist(rand); });

	const double time_beg = getrealtime();
	f(&dst[0], &src[0]);
	const double time_end = getrealtime();

	return time_end - time_beg;
}

} /* anonymous namespace */

int
main(void) {
	$::cerr << "Test col -> row..." << $::endl;
	$::cerr << "\t...time: " << run_test(src_col_row) << $::endl;

	$::cerr << "Test row -> col..." << $::endl;
	$::cerr << "\t...time: " << run_test(src_row_col) << $::endl;

	return 0;
}
