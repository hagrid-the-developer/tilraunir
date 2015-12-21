#include <algorithm>
#include <cstdlib>
#include <immintrin.h>
#include <iostream>
#include <memory>
#include <random>
#include <sys/time.h>
#include <time.h>

namespace $ = std;

namespace {

typedef ::uint8_t u8;
typedef ::uint32_t u32;
typedef unsigned uns;

typedef std::default_random_engine RandomGenerator;
typedef std::uniform_real_distribution<float> Dist;

RandomGenerator rand;
Dist dist(0, 1024*1024*1024);

const uns COLUMNS_LEN = 16 << 11;
const uns ROWS_LEN = 16 << 11;
const uns LEN = COLUMNS_LEN * ROWS_LEN;
const uns ALIGNMENT = 8;

u32 *align(u32 *$) noexcept {
	const ::uintptr_t ALGNMNT = ALIGNMENT * sizeof(u32);

	::uintptr_t _ = reinterpret_cast<::uintptr_t>($);
	_ = (_ + ALGNMNT - 1) & ~(ALGNMNT - 1);
	return reinterpret_cast<u32*>(_);
}

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

/**
 * Following functions don't do transposition of the matrices. The tests are to
 * compare speeds of stores.
 */

void stream_store(u32 *$$, const u32 *$) noexcept {
	_mm256_stream_ps(reinterpret_cast<float*>($$), *reinterpret_cast<const __m256*>($));
}

void stream_store_zero(u32 *$$) noexcept {
	_mm256_stream_ps(reinterpret_cast<float*>($$), _mm256_setzero_ps());
}

void src_col_row_stream_store(u32 $$[], const u32 $[]) noexcept {
	for (uns col = 0; col < COLUMNS_LEN; ++col) {
		for (uns row = 0; row < ROWS_LEN; row += 8) {
			stream_store(&$$[row + col*ROWS_LEN], &$[(col & ~(ALIGNMENT - 1)) + row*ROWS_LEN]);
		}
	}
}

void src_row_col_stream_store(u32 $$[], const u32 $[]) noexcept {
	for (uns row = 0; row < ROWS_LEN; row += 8) {
		for (uns col = 0; col < COLUMNS_LEN; ++col) {
			stream_store(&$$[row + col*ROWS_LEN], &$[(col & ~(ALIGNMENT - 1)) + row*ROWS_LEN]);
		}
	}
}

/*
 * This function is fastes, but note, that it uses 64bit for load and 64bit for store. It doesn't read data linearly.
 *
 */
void src_row_col_stream_store2(u32 $$[], const u32 $[]) noexcept {
	for (uns row = 0; row < ROWS_LEN; row += 8*2) {
		for (uns col = 0; col < COLUMNS_LEN; ++col) {
			stream_store(&$$[row + col*ROWS_LEN], &$[(col & ~(ALIGNMENT - 1)) + row*ROWS_LEN]);
			stream_store(&$$[row + 8 + col*ROWS_LEN], &$[(col & ~(ALIGNMENT - 1)) + (row + 8)*ROWS_LEN]);
		}
	}
}

/*
 * Store of zero vector to an array.
 */

void put_vec_linearly(u32 $$[]) noexcept {
	for (uns i = 0; i < LEN; i += 8) {
		stream_store_zero(&$$[i]);
	}
}

void put_vec_skip(u32 $$[]) noexcept {
	for (uns i = 0; i < ROWS_LEN; i += 8) {
		for (uns j = 0; j < COLUMNS_LEN; ++j) {
			stream_store_zero(&$$[i + j*ROWS_LEN]);
		}
	}
}

void put_vec2_skip(u32 $$[]) noexcept {
	for (uns i = 0; i < ROWS_LEN; i += 16) {
		for (uns j = 0; j < COLUMNS_LEN; ++j) {
			stream_store_zero(&$$[i + j*ROWS_LEN]);
			stream_store_zero(&$$[i + j*ROWS_LEN + 8]);
		}
	}
}

double getrealtime() noexcept {
	struct timespec ts;
	if (-1 == ::clock_gettime(CLOCK_REALTIME, &ts))
		::abort(); // This could only happen by some mistake in the program.
	return ts.tv_sec + ts.tv_nsec/1000000000.0;
}

typedef void (*F)(u32 $$[], const u32 $[]);

double run_test(F f) noexcept {
	auto unaligned_src = $::make_unique<u32[]>(LEN + ALIGNMENT - 1);
	auto unaligned_dst = $::make_unique<u32[]>(LEN + ALIGNMENT - 1);

	u32 *src = align(&unaligned_src[0]);
	u32 *dst = align(&unaligned_dst[0]);

	$::generate(&src[0], &src[LEN], []() -> u32 { dist(rand); });
	$::generate(&dst[0], &dst[LEN], []() -> u32 { dist(rand); });

	const double time_beg = getrealtime();
	f(&dst[0], &src[0]);
	const double time_end = getrealtime();

	return time_end - time_beg;
}

typedef void (*G)(u32 $$[]);
double run_test_put_vector(G f) noexcept {
	auto unaligned_dst = $::make_unique<u32[]>(LEN + ALIGNMENT - 1);

	u32 *dst = align(&unaligned_dst[0]);

	$::generate(&dst[0], &dst[LEN], []() -> u32 { dist(rand); });

	const double time_beg = getrealtime();
	f(&dst[0]);
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

	$::cerr << "Test col -> row stream store..." << $::endl;
	$::cerr << "\t...time: " << run_test(src_col_row_stream_store) << $::endl;

	$::cerr << "Test row -> col stream store..." << $::endl;
	$::cerr << "\t...time: " << run_test(src_row_col_stream_store) << $::endl;

	$::cerr << "Test row -> col stream store2..." << $::endl;
	$::cerr << "\t...time: " << run_test(src_row_col_stream_store2) << $::endl;

	$::cerr << "Test put vector lin..." << $::endl;
	$::cerr << "\t...time: " << run_test_put_vector(put_vec_linearly) << $::endl;

	$::cerr << "Test put_vec_skip..." << $::endl;
	$::cerr << "\t...time: " << run_test_put_vector(put_vec_skip) << $::endl;

	$::cerr << "Test put_vec2_skip..." << $::endl;
	$::cerr << "\t...time: " << run_test_put_vector(put_vec2_skip) << $::endl;

	return 0;
}
