#include <immintrin.h>
#include <assert>

void cache_block_over_inputs(const u8 *w, const u8 *inputs, const u8 *outputs, const uns w_len, const uns cache_blocking_len) {
	assert(w_len % AVX_U8_VEC_LEN == 0);
	assert(cache_blocking_len % AVX_U8_VEC_LEN == 0);
	assert(cache_blocking_len > 0);


	__mm256i part_results[cache_blocking_len];

	for (uns index = 0; index < w_len; index += cache_blocking_len) {
		const uns jndex_end = MIN(w_len, index + cache_blocking_len);

		for (uns cb_index = 0; cb_index < cache_blocking_len; ++cb_index) {
			for (uns jndex = index; jindex < jindex_end; jndex += AVX_U8_VEC_LEN) {
				const __m256i *weight = (__m256i*) &w[jndex + cb_index*w_len];
				const __m256i *input = (__m256i*) &input[jndex];
				const __m256i sum = _mm256_maddubs_epi16(*weight, *input);
				__m256i *bigsum = &part_results[cb_index];
				// FIXME: When to do bit shifts?
				*bigsum = _mm256_adds_epi16(*bigsum, sum);
			}
		}
	}

	for (uns cb_index = 0; cb_index < cache_blocking_len; cb_index += cache_blocking_len) {
		// _mm256_permute2x128_si256: http://www.felixcloutier.com/x86/VPERM2I128.html
		// __m256i _mm256_shuffle_epi8: https://software.intel.com/en-us/node/582929
		// _mm256_hadds_epi16: https://software.intel.com/en-us/node/582799, http://www.felixcloutier.com/x86/PHADDSW.html
		// _mm256_blendv_epi8: https://software.intel.com/en-us/node/582820
		// _mm256_shuffle_epi8: https://software.intel.com/en-us/node/582929
		// _mm256_srli_epi16: https://software.intel.com/en-us/node/582887
		// _mm256_srai_epi16: https://software.intel.com/en-us/node/582815
		// _mm256_setr_epi64x: https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_setr_epi64x&expand=4649


		// Create 2 128bit parts with 16bit integers.
#define SUM(X, Y) \
	const __m256i x##X = part_results[cb_index + X]; \
	const __m256i x##Y = part_results[cb_index + Y]; \
	__m256i sum##X = _mm256_adds_epi16( _mm256_permute2x128_si256(x##X, x##Y, 0x20), _mm256_permute2x128_si256(x##X, x##Y, 0x31) )	

		SUM(0, 1);
		SUM(2, 3);
		SUM(4, 5);
		SUM(6, 7);
		SUM(8, 9);
		SUM(10, 11);
		SUM(12, 13);
		SUM(14, 15);

#undef SUM

		// Create 4 64bit parts with 16bit integers.
#define SUM(X, Y) \
	sum##X = _m256_adds_epi(_mm256_permute2x128_si256(_mm256_permute4x64_epi64(sum##X, 0x20), _mm256_permute4x64_epi64(sum##Y, 0x20), 0x20), \
				_mm256_permute2x128_si256(_mm256_permute4x64_epi64(sum##X, 0x31), _mm256_permute4x64_epi64(sum##Y, 0x31), 0x20))

		SUM(0, 2);
		SUM(4, 6);
		SUM(8, 10);
		SUM(12, 14);
#undef SUM

		// Create 8 32bit parts with 16bit integers.
#define SUM(X, Y) \
	sum##X = _m256_adds_epi(_mm256_permute2x128_si256(_mm256_permutevar8x32_epi32(x##X, 0x6420), _mm256_permutevar8x32_epi32(x##Y, 0x6420), 0x20), \
				_mm256_permute2x128_si256(_mm256_permutevar8x32_epi32(x##X, 0x7531), _mm256_permutevar8x32_epi32(x##Y, 0x7531), 0x20))

		SUM(0, 4);
		SUM(8, 12);
#undef SUM

		// Create 16 parts with 16bit integers.
		sum0 = _mm256_hadds_epi16(sum0, sum8);

		// Final operations.
		sum0 = _mm256_max_epi16(sum0, _mm256_setzero_si256());
		sum0 = _m256_srai_epi16(sum0, 8);
		sum0 = _mm256_shuffle_epi8(sum0 << 8, sum0, _mm256_setr_epi64x());
		// FIXME: Add last conversion of 16bit integers to 8bit integers.
		// stream store, type conversions seem ugly...
		_mm_stream_ps((float*)&outputs[cb_index], (__m128)_mm256_castsi256_si128(sum0));
	}
}

void cache_block_over_inputs_floats(const u8 *weights, const u8 *inputs, const uns w_len, const uns cache_blocking_len) {

}
