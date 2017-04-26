#include <cstdlib>

#include "gettime.hpp"

extern "C" {
#include "gather.h"
}

namespace {

void test() {
	static const ::size_t LEN = 128*1024*1024;
	static const ::size_t TOTAL_LEN = LEN + 8*4096;

	float *p = nullptr;
	if (::posix_memalign(&p, 32, LEN*sizeof(float)+8*4096)) {
		fprintf(stderr, "Cannot allocate memory :-(");
		::exit(1);
	}
	for (::size_t i = 0; i < TOTAL_LEN; ++i)
		p[i] = i/1024.f;

	const ::size_t len_div_32 = LEN/32;

	const auto beg_mov = gettime();
	run_movps(p, len_div_32);
	const auto end_mov = gettime();
	fprintf(stderr, "movs: %f\n", end_mov - beg_mov);

	const ::size_t len_div_8_32 = len_div_32 / 8;
	AVX steps{ .dw_ = {0, len_div_8_32, 2*len_div_8_32, 3*len_div_8_32, 4*len_div_8_32, 5*len_div_8_32, 6*len_div_8_32, 7*len_div_8_32} };

	const auto beg_gatherd = gettime();
	run_gatherd(p, len_div_8_32, steps);
	const auto end_gatherd = gettime();
	fprintf(stderr, "gatherd: %f\n", end_gatherd - beg_gatherd);

	::free(p);
}

} /* Anonymous Namespace */
