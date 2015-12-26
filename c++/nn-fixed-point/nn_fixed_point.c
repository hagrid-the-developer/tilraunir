#include <immintrin.h>
#include <assert.h>

#include "nn_fixed_point.h"

#define CACHE_BLOCKING_LEN 333

void cache_block_over_inputs(const u8 *w, const u8 *inputs, const u8 *outputs, const uns w_len) {
	assert(w_len % AVX_U8_VEC_LEN == 0);
	assert(CACHE_BLOCKING_LEN % AVX_U8_VEC_LEN == 0);
	assert(CACHE_BLOCKING_LEN > 0);


	__m256i part_results[CACHE_BLOCKING_LEN];

	for (uns index = 0; index < w_len; index += CACHE_BLOCKING_LEN) {
		const uns jndex_end = MIN(w_len, index + CACHE_BLOCKING_LEN);

		for (uns cb_index = 0; cb_index < CACHE_BLOCKING_LEN; ++cb_index) {
			for (uns jndex = index; jndex < jndex_end; jndex += AVX_U8_VEC_LEN) {
				const __m256i *weight = (__m256i*) &w[jndex + cb_index*w_len];
				const __m256i *input = (__m256i*) &input[jndex];
				const __m256i sum = _mm256_maddubs_epi16(*weight, *input);
				__m256i *bigsum = &part_results[cb_index];
				// FIXME: When to do bit shifts?
				*bigsum = _mm256_adds_epi16(*bigsum, sum);
			}
		}
	}

	for (uns cb_index = 0; cb_index < CACHE_BLOCKING_LEN; cb_index += CACHE_BLOCKING_LEN) {
		// _mm256_permute2x128_si256: http://www.felixcloutier.com/x86/VPERM2I128.html
		// _mm256_shuffle_epi8: https://software.intel.com/en-us/node/582929
		// _mm256_hadds_epi16: https://software.intel.com/en-us/node/582799, http://www.felixcloutier.com/x86/PHADDSW.html
		// _mm256_blendv_epi8: https://software.intel.com/en-us/node/582820
		// _mm256_shuffle_epi8: https://software.intel.com/en-us/node/582929
		// _mm256_srli_epi16: https://software.intel.com/en-us/node/582887
		// _mm256_srai_epi16: https://software.intel.com/en-us/node/582815
		// _mm256_setr_epi64x: https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_setr_epi64x&expand=4649

		// Create 2 128bit parts with 16bit integers.
#define SUM_2x128(X, Y) \
	const __m256i x##X = part_results[cb_index + X]; \
	const __m256i x##Y = part_results[cb_index + Y]; \
	__m256i sum##X = _mm256_adds_epi16( _mm256_permute2x128_si256(x##X, x##Y, 0x20), _mm256_permute2x128_si256(x##X, x##Y, 0x31) )	

		SUM_2x128(0, 1);
		SUM_2x128(2, 3);
		SUM_2x128(4, 5);
		SUM_2x128(6, 7);
		SUM_2x128(8, 9);
		SUM_2x128(10, 11);
		SUM_2x128(12, 13);
		SUM_2x128(14, 15);

#undef SUM_2x128

		// Create 4 64bit parts with 16bit integers.
#define SUM_4x64(X, Y) \
	sum##X = _mm256_adds_epi16(_mm256_permute2x128_si256(_mm256_permute4x64_epi64(sum##X, 0x20), _mm256_permute4x64_epi64(sum##Y, 0x20), 0x20), \
				_mm256_permute2x128_si256(_mm256_permute4x64_epi64(sum##X, 0x31), _mm256_permute4x64_epi64(sum##Y, 0x31), 0x20))

		SUM_4x64(0, 2);
		SUM_4x64(4, 6);
		SUM_4x64(8, 10);
		SUM_4x64(12, 14);
#undef SUM_4x64

		// Create 8 32bit parts with 16bit integers.
#define SUM_8x32(X, Y) \
	sum##X = _mm256_adds_epi16(_mm256_permute2x128_si256(_mm256_permutevar8x32_epi32(x##X, _mm256_setr_epi32(0, 0, 0, 0, 6, 4, 2, 0)), \
							     _mm256_permutevar8x32_epi32(x##Y, _mm256_setr_epi32(0, 0, 0, 0, 6, 4, 2, 0)), 0x20), \
				   _mm256_permute2x128_si256(_mm256_permutevar8x32_epi32(x##X, _mm256_setr_epi32(0, 0, 0, 0, 7, 5, 3, 1)), \
					   		     _mm256_permutevar8x32_epi32(x##Y, _mm256_setr_epi32(0, 0, 0, 0, 7, 5, 3, 1)), 0x20))

		SUM_8x32(0, 4);
		SUM_8x32(8, 12);
#undef SUM_8x32

		// Create 16 parts with 16bit integers.
		sum0 = _mm256_hadds_epi16(sum0, sum8);

		// Final operations.
		sum0 = _mm256_max_epi16(sum0, _mm256_setzero_si256());
		sum0 = _mm256_srai_epi16(sum0, 8);

		// FIXME: Add last conversion of 16bit integers to 8bit integers.
		// stream store, type conversions seem ugly...
		_mm_stream_ps((float*)&outputs[cb_index], (__m128)_mm256_castsi256_si128(sum0));
	}
}

void cache_block_over_inputs_floats(const u8 *weights, const u8 *inputs, const uns w_len, const uns CACHE_BLOCKING_LEN) {

}
