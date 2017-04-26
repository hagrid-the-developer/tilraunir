#ifndef GATHER_H
#define GATHER_H

#include <stdint.h>

#include <cstdint>
#include <immintrin.h>

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

void run_movps(const float *src, const uint64_t len_div_32);
void run_gatherd(const float *src, const uint64_t len_div_32, const __m256i steps);

#endif
