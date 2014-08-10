#include <immintrin.h>

#define AVX_FLOAT_SIZE 8

typedef union {
	float f[AVX_FLOAT_SIZE];
	__m256 v;
} YMM;

typedef __m256  v8sf; // vector of 8 float (avx)
typedef __m256i v8si; // vector of 8 int   (avx)
typedef __m128i v4si; // vector of 8 int   (avx)

void matrix_mul_8x8_slow(float *C, const float *A, const float *B) {
	for (::size_t i = 0; i < AVX_FLOAT_SIZE; ++i) {
		for (::size_t j = 0; j < AVX_FLOAT_SIZE; ++j) {
			float sum = 0;
			for (::size_t k = 0; k < AVX_FLOAT_SIZE; ++k) {
				sum += A[i * AVX_FLOAT_SIZE + k] * B[k * AVX_FLOAT_SIZE + j];
			}
			C[i * AVX_FLOAT_SIZE + j] = sum;
		}
	}
}


void matrix_mul_8x8(float *C, const float *A, const float *B) {
	for (::size_t i = 0; i < AVX_FLOAT_SIZE; ++i) {
		const float *a = &A[i * AVX_FLOAT_SIZE];
		float *c = &C[i * AVX_FLOAT_SIZE];

		v8sf row_c;
		for (::size_t j = 0; j < AVX_FLOAT_SIZE; ++j) {
			const float *b = &B[j*AVX_FLOAT_SIZE];
			v8sf item_a, row_b, row_mul;
			row_b = *(v8sf*)b;
			item_a = _mm256_broadcast_ss(&a[j]);
			row_mul = _mm256_mul_ps(item_a, row_b);
			if (j == 0) {
				row_c = row_mul;
			} else {
				row_c = _mm256_add_ps(row_mul, row_c);
			}
		}

		*(v8sf*)c = row_c;
	}
}


