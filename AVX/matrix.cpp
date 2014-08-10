#include <immintrin.h>

#define AVX_FLOAT_SIZE 8

typedef union {
	float f[AVX_FLOAT_SIZE];
	__m256 v;
} YMM;

typedef __m256  v8sf; // vector of 8 float (avx)
typedef __m256i v8si; // vector of 8 int   (avx)
typedef __m128i v4si; // vector of 8 int   (avx)

void
matrix_mul_8x8_slow(float *C, const float *A, const float *B) {
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


void
matrix_mul_8x8(float *C, const float *A, const float *B) {
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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <errno.h>
#undef NDEBUG

namespace {
void *align_alloc(const size_t alignment, const size_t size)
{
	void *ptr = NULL;
	const int ret = posix_memalign(&ptr, alignment, size);

	if ( (errno = ret) ) {
		fprintf(stderr, ":-( Cannot allocate memory :%m\n");
		exit(1);
	}

	return ptr;
}

unsigned long long get_time() {
	struct timeval tv;

	if (-1 == gettimeofday(&tv, NULL))
		return 0ULL;

	return tv.tv_sec * 1000000ULL + tv.tv_usec;
}

} /* Anonymous Namespace*/

int
main(void)
{
	static const ::size_t len = 256*1024*1024;
	static const ::size_t size = len * sizeof(float);
	static const ::size_t align = 256;

	float *A = static_cast<float*>( align_alloc(align, size) );
        float *B = static_cast<float*>( align_alloc(align, size) );
	float *C = static_cast<float*>( align_alloc(align, size) );
	float *D = static_cast<float*>( align_alloc(align, size) );

	for (::size_t i = 0; i < len; ++i) {
		A[i] = i / 10.f;
		B[i] = 2 * i / 100.f;
	}

	unsigned long long time_beg, time_end;

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul: %.6f\n", (time_end - time_beg)/1e6);

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_slow(&D[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "std mul: %.6f\n", (time_end - time_beg)/1e6);

	if (::memcmp(C, D, size)) {
		fprintf(stderr, "Results are different!\n");
		exit(1);
	}

	return 0;
}
