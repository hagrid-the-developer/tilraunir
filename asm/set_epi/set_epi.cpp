/*
 * $ g++ -mavx2 -std=gnu++1z -o set_epi set_epi.cpp
 * $ ./set_epi
 * set: 1f, 1e, 1d, 1c, 1b, 1a, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 0f, 0e, 0d, 0c, 0b, 0a, 09, 08, 07, 06, 05, 04, 03, 02, 01, 00
 * setr:00, 01, 02, 03, 04, 05, 06, 07, 08, 09, 0a, 0b, 0c, 0d, 0e, 0f, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 1a, 1b, 1c, 1d, 1e, 1f
 */

#include <cstdio>
#include<immintrin.h>

union SSE {
	__m128i i4_;
	__m128 f4_;
	__m128d d2_;

	float sf_[4];
	float df_[2];

	::uint32_t dw_[4];
	::uint64_t qw_[2];
	::uint8_t b_[16];
};

union AVX {
	__m256i i8_;
	__m256 f8_;
	__m256d d4_;

	float sf_[8];
	float df_[4];

	SSE sse_[2];
	::uint32_t dw_[8];
	::uint64_t qw_[4];
	::uint8_t b_[32];
};

static void print_avx_u8(const AVX &$) {
	for (int i = 0; i < 32; ++i) {
		if (i)
			printf(", ");
		printf("%.2x", int($.b_[i]));
	}
}

int
main(void) {
	AVX avx;
	avx.i8_ = _mm256_set_epi8(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31);
	printf("set: ");
	print_avx_u8(avx);
	printf("\n");

	printf("setr:");
	avx.i8_ = _mm256_setr_epi8(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31);
	print_avx_u8(avx);
	printf("\n");
}
