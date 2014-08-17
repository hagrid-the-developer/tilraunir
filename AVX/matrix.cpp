#include <immintrin.h>

#define AVX_FLOAT_SIZE 8

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <errno.h>
#undef NDEBUG

typedef union {
	float f[AVX_FLOAT_SIZE];
	__m256 v;
} YMM;

typedef __m256  v8sf; // vector of 8 float (avx)
typedef __m256i v8si; // vector of 8 int   (avx)
typedef __m128i v4si; // vector of 4 int   (sse2)

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
		v8sf *row_c = (v8sf*)&C[i * AVX_FLOAT_SIZE];

		for (::size_t j = 0; j < AVX_FLOAT_SIZE; ++j) {
			const float *b = &B[j*AVX_FLOAT_SIZE];
			v8sf item_a, row_b, row_mul;
			row_b = *(v8sf*)b;
			item_a = _mm256_broadcast_ss(&a[j]);
			row_mul = _mm256_mul_ps(item_a, row_b);
			if (j == 0) {
				*row_c = row_mul;
			} else {
				*row_c = _mm256_add_ps(row_mul, *row_c);
			}
		}
	}
}

void print_matrix(const float * const A) {
	for (::size_t i = 0; i < 64; ++i) {
		if (0 == i % 8) {
			printf("\n");
		}
		printf("\t%.6f", A[i]);
	}
	printf("\n");
}

void print_matrix(const v8sf * const A) {
	print_matrix(reinterpret_cast<const float*>(A));
}

void print_row(const float * const f) {
	for (::size_t i = 0; i < 8; ++i) {
		printf("\t%.6f", f[i]);
	}
	printf("\n");
}

void print_row(const v8sf * const r) {
	print_row(reinterpret_cast<const float*>(r));
}

void print_row(const v8sf r) {
	print_row(reinterpret_cast<const float*>(&r));
}

void
matrix_mul_8x8_outer(float *C, const float *A, const float *B) {
	for (::size_t i = 0; i < AVX_FLOAT_SIZE; i += 2) {
		const float *a = &A[i * AVX_FLOAT_SIZE];
		const float *b = &A[(i + 1) * AVX_FLOAT_SIZE];

		v8sf *row_c = (v8sf*)&C[i * AVX_FLOAT_SIZE];

		for (::size_t j = 0; j < AVX_FLOAT_SIZE; ++j) {
			const v8sf *row_b = (v8sf*)&B[j*AVX_FLOAT_SIZE];
			v8sf item_a[2], row_mul[2];
			item_a[0] = _mm256_broadcast_ss(&a[j]);
			item_a[1] = _mm256_broadcast_ss(&b[j]);
			row_mul[0] = _mm256_mul_ps(item_a[0], *row_b);
			row_mul[1] = _mm256_mul_ps(item_a[1], *row_b);
			if (j == 0) {
				row_c[0] = row_mul[0];
				row_c[1] = row_mul[1];
			} else {
				row_c[0] = _mm256_add_ps(row_mul[0], row_c[0]);
				row_c[1] = _mm256_add_ps(row_mul[1], row_c[1]);
			}
		}
	}
}

void
matrix_mul_8x8_inner(float *C, const float *A, const float *B) {
//	printf("Matrix A: "); print_matrix(A);
//	printf("Matrix B: "); print_matrix(B);

	const v8sf * const row_b = (v8sf*)B;
	v8sf * const row_c = (v8sf*)C;
	for (::size_t i = 0; i < AVX_FLOAT_SIZE; ++i) {
//		printf("i: %zu\n", i);

		const float *a = &A[i * AVX_FLOAT_SIZE];
		v8sf item_a[8];
		v8sf row_mul[8];
		v8sf add[4];
		v8sf bdd[2];

		item_a[0] = _mm256_broadcast_ss(&a[0]);
		item_a[1] = _mm256_broadcast_ss(&a[1]);
		item_a[2] = _mm256_broadcast_ss(&a[2]);
		item_a[3] = _mm256_broadcast_ss(&a[3]);
		item_a[4] = _mm256_broadcast_ss(&a[4]);
		item_a[5] = _mm256_broadcast_ss(&a[5]);
		item_a[6] = _mm256_broadcast_ss(&a[6]);
		item_a[7] = _mm256_broadcast_ss(&a[7]);

//		for (::size_t k = 0; k < 8; ++k) {
//			printf("item[%zu]: ", k); print_row(item_a[k]);
//		}

		row_mul[0] = _mm256_mul_ps(item_a[0], row_b[0]);
		row_mul[1] = _mm256_mul_ps(item_a[1], row_b[1]);
		row_mul[2] = _mm256_mul_ps(item_a[2], row_b[2]);
		row_mul[3] = _mm256_mul_ps(item_a[3], row_b[3]);
		row_mul[4] = _mm256_mul_ps(item_a[4], row_b[4]);
		row_mul[5] = _mm256_mul_ps(item_a[5], row_b[5]);
		row_mul[6] = _mm256_mul_ps(item_a[6], row_b[6]);
		row_mul[7] = _mm256_mul_ps(item_a[7], row_b[7]);
		
//		for (::size_t k = 0; k < 8; ++k) {
//			printf("row_mul[%zu]: ", k); print_row(row_mul[k]);
//		}

		add[0] = _mm256_add_ps(row_mul[0], row_mul[1]);
		add[1] = _mm256_add_ps(row_mul[2], row_mul[3]);
		add[2] = _mm256_add_ps(row_mul[4], row_mul[5]);
		add[3] = _mm256_add_ps(row_mul[6], row_mul[7]);

		bdd[0] = _mm256_add_ps(add[0], add[1]);
		bdd[1] = _mm256_add_ps(add[2], add[3]);

		row_c[i] = _mm256_add_ps(bdd[0], bdd[1]);
//		printf("row[%zu]: ", i); print_row(row_c[i]);
	}
}

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

float diff_arr(float *a, float *b, ::size_t len)
{
	float max_diff = 0.f;

	for (::size_t i = 0; i < len; ++i) {
		float diff = a[i] - b[i];
		if (diff < 0.f)
			diff = -diff;
		diff = diff/(a[i] > b[i] ? a[i] : b[i]);
		if (diff > max_diff)
			max_diff = diff;
	}

	return max_diff;
}

int
main(void)
{
	static const ::size_t len = 25*1024*1024;
	static const ::size_t size = len * sizeof(float);
	static const ::size_t align = 256;

	float *A = static_cast<float*>( align_alloc(align, size) );
        float *B = static_cast<float*>( align_alloc(align, size) );
	float *C = static_cast<float*>( align_alloc(align, size) );
	float *D = static_cast<float*>( align_alloc(align, size) );
	float *E = static_cast<float*>( align_alloc(align, size) );
	float *ZZZ = static_cast<float*>( align_alloc(align, size) );

	for (::size_t i = 0; i < len; ++i) {
		A[i] = (i % 101) / 10.f;
		B[i] = 2 * (i % 1013)/ 100.f;
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
		matrix_mul_8x8_inner(&D[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul inner: %.6f\n", (time_end - time_beg)/1e6);

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_outer(&E[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul outer: %.6f\n", (time_end - time_beg)/1e6);

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_slow(&ZZZ[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "std mul: %.6f\n", (time_end - time_beg)/1e6);

	if (::memcmp(C, ZZZ, size)) {
		fprintf(stderr, "Results are different ... AVX: %f\n", diff_arr(C, ZZZ, len));
	}
	if (::memcmp(D, ZZZ, size) && diff_arr(D, ZZZ, len) >= 0.0001f) {
		fprintf(stderr, "Results are different ... AVX inner: %f\n", diff_arr(D, ZZZ, len));
	}
	if (::memcmp(E, ZZZ, size)) {
		fprintf(stderr, "Results are different ... AVX outer: %f\n", diff_arr(E, ZZZ, len));
	}

//	printf("Slow: "); print_matrix(ZZZ);
//	printf("Inner: "); print_matrix(D);

	return 0;
}
