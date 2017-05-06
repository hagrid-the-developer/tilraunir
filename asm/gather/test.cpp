#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <limits>

#include "gettime.hpp"

extern "C" {
#include "gather.h"
}

namespace {

const ::size_t MAX_LEN = 128*1024*1024;

template <::size_t LEN = MAX_LEN, ::size_t STEP = MAX_LEN>
void test_step() {
	static_assert(LEN <= MAX_LEN);

	if (STEP > LEN)
		return;

	const ::size_t len_div_32 = LEN/32;
	const ::size_t len_div_8_32 = len_div_32 / 8;
	const ::size_t step = STEP == MAX_LEN ? len_div_8_32 : STEP;

	if (8*step > len_div_32)
		return;

	//static const ::size_t LEN = 128*1024*1024;
	static const ::size_t TOTAL_LEN = LEN + 8*4096;
	const ::size_t repeat = MAX_LEN/LEN;

	float *p = nullptr;
	if (::posix_memalign(reinterpret_cast<void**>(&p), 32, TOTAL_LEN*sizeof(float))) {
		fprintf(stderr, "Cannot allocate memory :-(");
		::exit(1);
	}
	for (::size_t i = 0; i < TOTAL_LEN; ++i)
		p[i] = i/1024.f;

	fprintf(stderr, "LEN:%zu; STEP:%zu\n", LEN, step);

	const auto beg_mov = gettime();
	for (::size_t i = repeat; i--; )
		run_movps(p, len_div_32);
	const auto end_mov = gettime();
	fprintf(stderr, "\tmovs: %lf\n", end_mov - beg_mov);

	AVX steps{ .dw_ = {0*::uint32_t(step), ::uint32_t(step), 2*::uint32_t(step), 3*::uint32_t(step), 4*::uint32_t(step), 5*::uint32_t(step), 6*::uint32_t(step), 7*::uint32_t(step)} };

	const auto beg_gatherd = gettime();
	for (::size_t i = repeat; i--; )
		run_gatherd(p, len_div_8_32, steps.i8_);
	const auto end_gatherd = gettime();
	fprintf(stderr, "\tgatherd: %lf\n", end_gatherd - beg_gatherd);

	::free(p);
}

template <::size_t LEN = MAX_LEN>
void test_step() {
	test_main<LEN, LEN>();
	test_main<LEN, 1>();
	test_main<LEN, 2>();
	test_main<LEN, 4>();
	test_main<LEN, 8>();
	test_main<LEN, 16>();
	test_main<LEN, 32>();
	test_main<LEN, 64>();
	test_main<LEN, 128>();
	test_main<LEN, 256>();
	test_main<LEN, 512>();
	test_main<LEN, 1024>();
	test_main<LEN, 2048>();
	test_main<LEN, 4096>();
	test_main<LEN, 10*1024>();
}

} /* Anonymous Namespace */

int
main(void) {
	test_step<>();
	test_step<4096>();
	test_step<2*1024*1024>();

	return 0;
}
