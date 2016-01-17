#include <immintrin.h>
#include <assert.h>

#include "nn_fixed_point.h"

#define CACHE_BLOCKING_LEN (4*AVX_U8_VEC_LEN)

static __m256i part_results[2*CACHE_BLOCKING_LEN];

uint64_t cache_block_over_inputs_tdnn(const u8 *w, const u8 *inputs, const u8 *outputs, const uns w_len, const uns outputs_len) {
	assert(outputs_len > 0);
	assert(outputs_len % AVX_U8_VEC_LEN == 0);
	assert(w_len % AVX_U8_VEC_LEN == 0);
	assert(outputs_len >= CACHE_BLOCKING_LEN);

	for (uns index = 0; index < w_len; index += CACHE_BLOCKING_LEN) {
		const uns jndex_end = MIN(w_len, index + CACHE_BLOCKING_LEN);

		for (uns cb_index = 0; cb_index < CACHE_BLOCKING_LEN; cb_index += 5) {
			for (uns jndex = index; jndex < jndex_end; jndex += AVX_U8_VEC_LEN) {
				const __m256i *weight = (__m256i*) &w[jndex + cb_index*w_len];
				const __m256i ws[] = {
					weight[0*cb_index],
					weight[1*cb_index],
					weight[2*cb_index],
					weight[3*cb_index],
					weight[4*cb_index],
				};

				{
					const __m256i input = *(__m256i*) &inputs[jndex];
					const __m256i sum[5] = {
						_mm256_maddubs_epi16(ws[0], input),
						_mm256_maddubs_epi16(ws[1], input),
						_mm256_maddubs_epi16(ws[2], input),
						_mm256_maddubs_epi16(ws[3], input),
						_mm256_maddubs_epi16(ws[4], input),
					};

					__m256i *bigsum = &part_results[cb_index];
					bigsum[0] = _mm256_adds_epi16(bigsum[0], sum[0]);
					bigsum[1] = _mm256_adds_epi16(bigsum[1], sum[1]);
					bigsum[2] = _mm256_adds_epi16(bigsum[2], sum[2]);
					bigsum[3] = _mm256_adds_epi16(bigsum[3], sum[3]);
					bigsum[4] = _mm256_adds_epi16(bigsum[4], sum[4]);
				}
				{
					const __m256i input = *(__m256i*) &inputs[jndex + w_len];
					const __m256i sum[5] = {
						_mm256_maddubs_epi16(ws[0], input),
						_mm256_maddubs_epi16(ws[1], input),
						_mm256_maddubs_epi16(ws[2], input),
						_mm256_maddubs_epi16(ws[3], input),
						_mm256_maddubs_epi16(ws[4], input),
					};

					__m256i *bigsum = &part_results[cb_index];
					bigsum[0] = _mm256_adds_epi16(bigsum[0], sum[0]);
					bigsum[1] = _mm256_adds_epi16(bigsum[1], sum[1]);
					bigsum[2] = _mm256_adds_epi16(bigsum[2], sum[2]);
					bigsum[3] = _mm256_adds_epi16(bigsum[3], sum[3]);
					bigsum[4] = _mm256_adds_epi16(bigsum[4], sum[4]);
				}
			}
		}
	}

	return (uint64_t)CACHE_BLOCKING_LEN * w_len * 2;
}
