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

AVX step_sum(const float *p, const ::size_t len, const AVX steps) {
	AVX sum;
	for (::size_t i = 0; i < len; ++i) {
		sum.f8_[0] += p[i + 0*steps.i8_[0]];
		sum.f8_[1] += p[i + 1*steps.i8_[1]];
		sum.f8_[2] += p[i + 2*steps.i8_[2]];
		sum.f8_[3] += p[i + 3*steps.i8_[3]];
		sum.f8_[4] += p[i + 4*steps.i8_[4]];
		sum.f8_[5] += p[i + 5*steps.i8_[5]];
		sum.f8_[6] += p[i + 6*steps.i8_[6]];
		sum.f8_[7] += p[i + 7*steps.i8_[7]];
	}
	return sum;
}


template <::size_t LEN = MAX_LEN, ::size_t STEP = MAX_LEN>
void test_step() {
	static_assert(LEN <= MAX_LEN, "Exceeds maximum len :-(");

	if (STEP > LEN)
		return;

	const ::size_t len_div_32 = LEN/32;
	const ::size_t step = STEP == MAX_LEN ? len_div_32 : STEP;

	if (4*8*step > LEN)
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

	AVX steps{ 0*::uint32_t(step), ::uint32_t(step), 2*::uint32_t(step), 3*::uint32_t(step), 4*::uint32_t(step), 5*::uint32_t(step), 6*::uint32_t(step), 7*::uint32_t(step) };

	const auto beg_gatherd = gettime();
	for (::size_t i = repeat; i--; )
		::run_gatherd(p, len_div_32, steps.i8_);
	const auto end_gatherd = gettime();
	fprintf(stderr, "\tgatherd: %lf\n", end_gatherd - beg_gatherd);

	// Testing that gatherd works correctly.
	for (::size_t i = repeat; i--; ) {
		const AVX sum_real{ ::run_gatherd_sum(p, len_div_32, steps.i8_) };
		const AVX sum_expected = step_sum(p, len_div_32, steps);
		for (unsigned i = 0; i < 8; ++i) {
			if (sum_real.f8_[i] != sum_expected.f8_[i]) {
				fprintf(stderr, "repeat:%zu, real and expected sums differs: (%f, %f, %f, %f, %f, %f, %f, %f) != (%f, %f, %f, %f, %f, %f, %f, %f)\n", repeat,
						sum_real.f8_[0], sum_real.f8_[1], sum_real.f8_[2], sum_real.f8_[3], sum_real.f8_[4], sum_real.f8_[5], sum_real.f8_[6], sum_real.f8_[7],
						sum_expected.f8_[0], sum_expected.f8_[1], sum_expected.f8_[2], sum_expected.f8_[3], sum_expected.f8_[4], sum_expected.f8_[5], sum_expected.f8_[6], sum_expected.f8_[7]);
				::abort();
			}
		}
	}

	::free(p);
}

template <::size_t LEN = MAX_LEN>
void test() {
	test_step<LEN, LEN>();
	test_step<LEN, 1>();
	test_step<LEN, 2>();
	test_step<LEN, 4>();
	test_step<LEN, 8>();
	test_step<LEN, 16>();
	test_step<LEN, 32>();
	test_step<LEN, 64>();
	test_step<LEN, 128>();
	test_step<LEN, 256>();
	test_step<LEN, 512>();
	test_step<LEN, 1024>();
	test_step<LEN, 2048>();
	test_step<LEN, 4096>();
	test_step<LEN, 10*1024>();
}

} /* Anonymous Namespace */

int
main(void) {
	test<>();
	test<4096>();
	test<2*1024*1024>();

	return 0;
}
