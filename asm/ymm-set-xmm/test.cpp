/*
 * $ make
 * g++ -Ofast -march=native -mavx -mavx2 -std=gnu++1y -o test.o -c test.cpp
 * as -o ymm_set_xmm.o ymm_set_xmm.S
 * g++ -o test test.o ymm_set_xmm.o
 * ./test
 * 4294967295, 4294967295, 4294967295, 4294967295, 0, 0, 0, 0
 */

#include <cstdio>
#include <cstdint>
#include <immintrin.h>

extern "C" {

union AVX {
	__m256i i8_;
	__m256 f8_;
	__m256d d4_;

	float sf_[8];
	float df_[4];

	::uint32_t dw_[8];
	::uint64_t qw_[4];
	::uint8_t b_[32];
};

__m256i ymm_set_xmm();

}

int
main(void) {
	AVX x{ .i8_ = ::ymm_set_xmm() };
	for (::size_t i = 0; i < 8; ++i) {
		fprintf(stderr, "%s%u", i ? ", " : "", unsigned(x.dw_[i]));
	}
	fprintf(stderr, "\n");
	return 0;
}
