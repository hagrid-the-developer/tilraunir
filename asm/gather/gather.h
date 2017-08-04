#ifndef GATHER_H
#define GATHER_H

#include <stdint.h>

#include <cstdint>
#include <immintrin.h>
#include <initializer_list>

union AVX {
	__m256i i8_;
	__m256 f8_;
	__m256d d4_;

	float sf_[8];
	float df_[4];

	::uint32_t dw_[8];
	::uint64_t qw_[4];
	::uint8_t b_[32];

	AVX() : f8_(_mm256_setzero_ps()) {}
	AVX(const __m256i $) : i8_($) {}
	AVX(const std::initializer_list<::uint32_t> &$) {
		unsigned i = 0;
		for (auto _: $) {
			dw_[i++] = _;
		}
		while (i < 8) {
			dw_[i++] = 0;
		}
	}
};

void run_movps(const float *src, const uint64_t len_div_32);
void run_gatherd(const float *src, const uint64_t len_div_32, const __m256i steps);
__m256i run_gatherd_sum(const float *src, const uint64_t len_div_32, const __m256i steps);

#endif
