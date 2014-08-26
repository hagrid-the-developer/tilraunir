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

static inline void outer2_step(v8sf *row_c, const float *a, const float *b, const float *B, const ::size_t j)
{
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

void
matrix_mul_8x8_outer2(float *C, const float *A, const float *B) {
	for (::size_t i = 0; i < AVX_FLOAT_SIZE; i += 2) {
		const float *a = &A[i * AVX_FLOAT_SIZE];
		const float *b = &A[(i + 1) * AVX_FLOAT_SIZE];
		v8sf *row_c = (v8sf*)&C[i * AVX_FLOAT_SIZE];

		outer2_step(row_c, a, b, B, 0);
		outer2_step(row_c, a, b, B, 1);
		outer2_step(row_c, a, b, B, 2);
		outer2_step(row_c, a, b, B, 3);
		outer2_step(row_c, a, b, B, 4);
		outer2_step(row_c, a, b, B, 5);
		outer2_step(row_c, a, b, B, 6);
		outer2_step(row_c, a, b, B, 7);
	}
}


#ifdef FMA
static inline void outer2_step_fma(v8sf *row_c, const float *a, const float *b, const float *B, const ::size_t j)
{
	const v8sf *row_b = (v8sf*)&B[j*AVX_FLOAT_SIZE];
	v8sf item_a[2], row_mul[2];
	item_a[0] = _mm256_broadcast_ss(&a[j]);
	item_a[1] = _mm256_broadcast_ss(&b[j]);
	if (j == 0) {
		row_c[0] = _mm256_mul_ps(item_a[0], *row_b);
		row_c[1] = _mm256_mul_ps(item_a[1], *row_b);
	} else {
		row_c[0] = _mm256_fmadd_ps(item_a[0], *row_b, row_c[0]);
		row_c[1] = _mm256_fmadd_ps(item_a[1], *row_b, row_c[1]);
	}
}

void
matrix_mul_8x8_outer2_fma(float *C, const float *A, const float *B) {
	for (::size_t i = 0; i < AVX_FLOAT_SIZE; i += 2) {
		const float *a = &A[i * AVX_FLOAT_SIZE];
		const float *b = &A[(i + 1) * AVX_FLOAT_SIZE];
		v8sf *row_c = (v8sf*)&C[i * AVX_FLOAT_SIZE];

		outer2_step_fma(row_c, a, b, B, 0);
		outer2_step_fma(row_c, a, b, B, 1);
		outer2_step_fma(row_c, a, b, B, 2);
		outer2_step_fma(row_c, a, b, B, 3);
		outer2_step_fma(row_c, a, b, B, 4);
		outer2_step_fma(row_c, a, b, B, 5);
		outer2_step_fma(row_c, a, b, B, 6);
		outer2_step_fma(row_c, a, b, B, 7);
	}
}
#endif

static inline void inner2_step(float *C, const float *A, const float *B, const ::size_t i)
{
	const v8sf * const row_b = (v8sf*)B;
	v8sf * const row_c = (v8sf*)C;
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

	row_mul[0] = _mm256_mul_ps(item_a[0], row_b[0]);
	row_mul[1] = _mm256_mul_ps(item_a[1], row_b[1]);
	row_mul[2] = _mm256_mul_ps(item_a[2], row_b[2]);
	row_mul[3] = _mm256_mul_ps(item_a[3], row_b[3]);
	row_mul[4] = _mm256_mul_ps(item_a[4], row_b[4]);
	row_mul[5] = _mm256_mul_ps(item_a[5], row_b[5]);
	row_mul[6] = _mm256_mul_ps(item_a[6], row_b[6]);
	row_mul[7] = _mm256_mul_ps(item_a[7], row_b[7]);
		
	add[0] = _mm256_add_ps(row_mul[0], row_mul[1]);
	add[1] = _mm256_add_ps(row_mul[2], row_mul[3]);
	add[2] = _mm256_add_ps(row_mul[4], row_mul[5]);
	add[3] = _mm256_add_ps(row_mul[6], row_mul[7]);

	bdd[0] = _mm256_add_ps(add[0], add[1]);
	bdd[1] = _mm256_add_ps(add[2], add[3]);

	row_c[i] = _mm256_add_ps(bdd[0], bdd[1]);
}

void
matrix_mul_8x8_inner2(float *C, const float *A, const float *B) {
	inner2_step(C, A, B, 0);
	inner2_step(C, A, B, 1);
	inner2_step(C, A, B, 2);
	inner2_step(C, A, B, 3);
	inner2_step(C, A, B, 4);
	inner2_step(C, A, B, 5);
	inner2_step(C, A, B, 6);
	inner2_step(C, A, B, 7);
}

static inline void inner3_step(float *C, const float *A, const float *B, const ::size_t i)
{
	const v8sf * const row_b = (v8sf*)B;
	v8sf * const row_c = (v8sf*)C;
	const float *a = &A[i * AVX_FLOAT_SIZE];
	v8sf item_a[16];
	v8sf row_mul[16];
	v8sf add[8];
	v8sf bdd[4];

	item_a[0] = _mm256_broadcast_ss(&a[0]);
	item_a[1] = _mm256_broadcast_ss(&a[1]);
	item_a[2] = _mm256_broadcast_ss(&a[2]);
	item_a[3] = _mm256_broadcast_ss(&a[3]);
	item_a[4] = _mm256_broadcast_ss(&a[4]);
	item_a[5] = _mm256_broadcast_ss(&a[5]);
	item_a[6] = _mm256_broadcast_ss(&a[6]);
	item_a[7] = _mm256_broadcast_ss(&a[7]);
	item_a[8] = _mm256_broadcast_ss(&a[8]);
	row_mul[0] = _mm256_mul_ps(item_a[0], row_b[0]);
	row_mul[1] = _mm256_mul_ps(item_a[1], row_b[1]);
	row_mul[2] = _mm256_mul_ps(item_a[2], row_b[2]);
	row_mul[3] = _mm256_mul_ps(item_a[3], row_b[3]);
	row_mul[4] = _mm256_mul_ps(item_a[4], row_b[4]);
	row_mul[5] = _mm256_mul_ps(item_a[5], row_b[5]);
	row_mul[6] = _mm256_mul_ps(item_a[6], row_b[6]);
	row_mul[7] = _mm256_mul_ps(item_a[7], row_b[7]);
	add[0] = _mm256_add_ps(row_mul[0], row_mul[1]);
	add[1] = _mm256_add_ps(row_mul[2], row_mul[3]);
	add[2] = _mm256_add_ps(row_mul[4], row_mul[5]);
	add[3] = _mm256_add_ps(row_mul[6], row_mul[7]);

	item_a[9] = _mm256_broadcast_ss(&a[9]);
	item_a[10] = _mm256_broadcast_ss(&a[10]);
	item_a[11] = _mm256_broadcast_ss(&a[11]);
	item_a[12] = _mm256_broadcast_ss(&a[12]);
	item_a[13] = _mm256_broadcast_ss(&a[13]);
	item_a[14] = _mm256_broadcast_ss(&a[14]);
	item_a[15] = _mm256_broadcast_ss(&a[15]);
	row_mul[8] = _mm256_mul_ps(item_a[8], row_b[0]);
	row_mul[9] = _mm256_mul_ps(item_a[9], row_b[1]);
	row_mul[10] = _mm256_mul_ps(item_a[10], row_b[2]);
	row_mul[11] = _mm256_mul_ps(item_a[11], row_b[3]);
	row_mul[12] = _mm256_mul_ps(item_a[12], row_b[4]);
	row_mul[13] = _mm256_mul_ps(item_a[13], row_b[5]);
	row_mul[14] = _mm256_mul_ps(item_a[14], row_b[6]);
	row_mul[15] = _mm256_mul_ps(item_a[15], row_b[7]);	
	add[4] = _mm256_add_ps(row_mul[8], row_mul[9]);
	add[5] = _mm256_add_ps(row_mul[10], row_mul[11]);
	add[6] = _mm256_add_ps(row_mul[12], row_mul[13]);
	add[7] = _mm256_add_ps(row_mul[14], row_mul[15]);

	bdd[0] = _mm256_add_ps(add[0], add[1]);
	bdd[2] = _mm256_add_ps(add[4], add[5]);
	bdd[1] = _mm256_add_ps(add[2], add[3]);
	bdd[3] = _mm256_add_ps(add[6], add[7]);

	row_c[i] = _mm256_add_ps(bdd[0], bdd[1]);
	row_c[i + 1] = _mm256_add_ps(bdd[2], bdd[3]);
}

void
matrix_mul_8x8_inner3(float *C, const float *A, const float *B) {
	inner3_step(C, A, B, 0);
	inner3_step(C, A, B, 2);
	inner3_step(C, A, B, 4);
	inner3_step(C, A, B, 6);
}

#ifdef FMA
static inline void inner2_step_fma(float *C, const float *A, const float *B, const ::size_t i)
{
	const v8sf * const row_b = (v8sf*)B;
	v8sf * const row_c = (v8sf*)C;
	const float *a = &A[i * AVX_FLOAT_SIZE];
	v8sf item_a[8];
	v8sf row_mul[8];
	v8sf bdd[2];

	item_a[0] = _mm256_broadcast_ss(&a[0]);
	item_a[1] = _mm256_broadcast_ss(&a[1]);
	item_a[2] = _mm256_broadcast_ss(&a[2]);
	item_a[3] = _mm256_broadcast_ss(&a[3]);
	item_a[4] = _mm256_broadcast_ss(&a[4]);
	item_a[5] = _mm256_broadcast_ss(&a[5]);
	item_a[6] = _mm256_broadcast_ss(&a[6]);
	item_a[7] = _mm256_broadcast_ss(&a[7]);

	row_mul[0] = _mm256_mul_ps(item_a[0], row_b[0]);
	row_mul[1] = _mm256_mul_ps(item_a[1], row_b[1]);
	row_mul[2] = _mm256_mul_ps(item_a[2], row_b[2]);
	row_mul[3] = _mm256_mul_ps(item_a[3], row_b[3]);
	row_mul[4] = _mm256_fmadd_ps(item_a[4], row_b[4], row_mul[0]);
	row_mul[5] = _mm256_fmadd_ps(item_a[5], row_b[5], row_mul[1]);
	row_mul[6] = _mm256_fmadd_ps(item_a[6], row_b[6], row_mul[2]);
	row_mul[7] = _mm256_fmadd_ps(item_a[7], row_b[7], row_mul[3]);
		
	bdd[0] = _mm256_add_ps(row_mul[4], row_mul[5]);
	bdd[1] = _mm256_add_ps(row_mul[6], row_mul[7]);

	row_c[i] = _mm256_add_ps(bdd[0], bdd[1]);
}

void
matrix_mul_8x8_inner2_fma(float *C, const float *A, const float *B) {
	inner2_step_fma(C, A, B, 0);
	inner2_step_fma(C, A, B, 1);
	inner2_step_fma(C, A, B, 2);
	inner2_step_fma(C, A, B, 3);
	inner2_step_fma(C, A, B, 4);
	inner2_step_fma(C, A, B, 5);
	inner2_step_fma(C, A, B, 6);
	inner2_step_fma(C, A, B, 7);
}
#endif

void
matrix_mul_8x8_inner(float *C, const float *A, const float *B) {
	const v8sf * const row_b = (v8sf*)B;
	v8sf * const row_c = (v8sf*)C;
	for (::size_t i = 0; i < AVX_FLOAT_SIZE; ++i) {
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

		row_mul[0] = _mm256_mul_ps(item_a[0], row_b[0]);
		row_mul[1] = _mm256_mul_ps(item_a[1], row_b[1]);
		row_mul[2] = _mm256_mul_ps(item_a[2], row_b[2]);
		row_mul[3] = _mm256_mul_ps(item_a[3], row_b[3]);
		row_mul[4] = _mm256_mul_ps(item_a[4], row_b[4]);
		row_mul[5] = _mm256_mul_ps(item_a[5], row_b[5]);
		row_mul[6] = _mm256_mul_ps(item_a[6], row_b[6]);
		row_mul[7] = _mm256_mul_ps(item_a[7], row_b[7]);
		
		add[0] = _mm256_add_ps(row_mul[0], row_mul[1]);
		add[1] = _mm256_add_ps(row_mul[2], row_mul[3]);
		add[2] = _mm256_add_ps(row_mul[4], row_mul[5]);
		add[3] = _mm256_add_ps(row_mul[6], row_mul[7]);

		bdd[0] = _mm256_add_ps(add[0], add[1]);
		bdd[1] = _mm256_add_ps(add[2], add[3]);

		row_c[i] = _mm256_add_ps(bdd[0], bdd[1]);
	}
}

// Thanks to some mistaken optimization, there is a segfault if X is allocated on stack :-(
static float X[AVX_FLOAT_SIZE * AVX_FLOAT_SIZE];

static inline void row_mul_switched(float *C, const float *A, const v8sf row_b, const ::size_t i, const ::size_t j)
{
	const float *a = &A[i * AVX_FLOAT_SIZE + j];
	const v8sf item_a = _mm256_broadcast_ss(a);
	v8sf *row_mul = (v8sf*)&(j == 0 ? C : X)[i * AVX_FLOAT_SIZE];
	*row_mul = _mm256_mul_ps(item_a, row_b);
}

static inline void row_add_switched(float *C, const ::size_t i)
{
	const v8sf *row_x = (v8sf*)&X[i * AVX_FLOAT_SIZE];
	v8sf *row_c = (v8sf*)&C[i * AVX_FLOAT_SIZE];
	*row_c = _mm256_add_ps(*row_x, *row_c);
}


static inline void col_switched(float *C, const float *A, const float *B, const ::size_t j)
{
	const v8sf *row_b = (v8sf*)&B[j * AVX_FLOAT_SIZE];

	row_mul_switched(C, A, *row_b, 0, j);
	row_mul_switched(C, A, *row_b, 1, j);
	row_mul_switched(C, A, *row_b, 2, j);
	row_mul_switched(C, A, *row_b, 3, j);
	row_mul_switched(C, A, *row_b, 4, j);
	row_mul_switched(C, A, *row_b, 5, j);
	row_mul_switched(C, A, *row_b, 6, j);
	row_mul_switched(C, A, *row_b, 7, j);

	if (j == 0)
		return;

	row_add_switched(C, 0);
	row_add_switched(C, 1);
	row_add_switched(C, 2);
	row_add_switched(C, 3);
	row_add_switched(C, 4);
	row_add_switched(C, 5);
	row_add_switched(C, 6);
	row_add_switched(C, 7);
}

void
matrix_mul_8x8_switched(float *C, const float *A, const float *B) {
	col_switched(C, A, B, 0);
	col_switched(C, A, B, 1);
	col_switched(C, A, B, 2);
	col_switched(C, A, B, 3);
	col_switched(C, A, B, 4);
	col_switched(C, A, B, 5);
	col_switched(C, A, B, 6);
	col_switched(C, A, B, 7);
}

#ifdef FMA

void
matrix_mul_8x8_fma(float *C, const float *A, const float *B) {
	for (::size_t i = 0; i < AVX_FLOAT_SIZE; ++i) {
		const float *a = &A[i * AVX_FLOAT_SIZE];
		v8sf *row_c = (v8sf*)&C[i * AVX_FLOAT_SIZE];

		for (::size_t j = 0; j < AVX_FLOAT_SIZE; ++j) {
			const float *b = &B[j*AVX_FLOAT_SIZE];
			v8sf item_a, row_b;
			row_b = *(v8sf*)b;
			item_a = _mm256_broadcast_ss(&a[j]);
			if (j == 0) {
				*row_c = _mm256_mul_ps(item_a, row_b);
			} else {
				*row_c = _mm256_fmadd_ps(item_a, row_b, *row_c);
			}
		}
	}
}
static inline void row_switched_fma(float *C, const float *A, const v8sf row_b, const ::size_t i, const ::size_t j)
{
	const float *a = &A[i * AVX_FLOAT_SIZE + j];
	const v8sf item_a = _mm256_broadcast_ss(a);
	v8sf *row_c = (v8sf*)&C[i * AVX_FLOAT_SIZE];
	if (j == 0)
		*row_c = _mm256_mul_ps(item_a, row_b);
	else
		*row_c = _mm256_fmadd_ps(item_a, row_b, *row_c);
}

static inline void col_switched_fma(float *C, const float *A, const float *B, const ::size_t j)
{
	const v8sf *row_b = (v8sf*)&B[j * AVX_FLOAT_SIZE];

	row_switched_fma(C, A, *row_b, 0, j);
	row_switched_fma(C, A, *row_b, 1, j);
	row_switched_fma(C, A, *row_b, 2, j);
	row_switched_fma(C, A, *row_b, 3, j);
	row_switched_fma(C, A, *row_b, 4, j);
	row_switched_fma(C, A, *row_b, 5, j);
	row_switched_fma(C, A, *row_b, 6, j);
	row_switched_fma(C, A, *row_b, 7, j);
}

void
matrix_mul_8x8_switched_fma(float *C, const float *A, const float *B) {
	col_switched_fma(C, A, B, 0);
	col_switched_fma(C, A, B, 1);
	col_switched_fma(C, A, B, 2);
	col_switched_fma(C, A, B, 3);
	col_switched_fma(C, A, B, 4);
	col_switched_fma(C, A, B, 5);
	col_switched_fma(C, A, B, 6);
	col_switched_fma(C, A, B, 7);
}

#endif

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

float diff_arr(const float *a, const float *b, ::size_t len)
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

int check_results(const float *correct, const float *x, const ::size_t len, const char *name) {
	if (::memcmp(x, correct, len * sizeof(float)) && diff_arr(x, correct, len) >= 0.0001f) {
		fprintf(stderr, "Results are different ... %s: %f\n", name, diff_arr(x, correct, len));
		return 1;
	}
	return 0;
}

} /* Anonymous Namespace*/

int
main(void) {
	const int flags = _mm_getcsr();
	_mm_setcsr(flags | 0x0040 | 0x8000);

	static const ::size_t len = 256*1024*1024;
	static const ::size_t size = len * sizeof(float);
	static const ::size_t align = 256;

	float *A = static_cast<float*>( align_alloc(align, size) );
        float *B = static_cast<float*>( align_alloc(align, size) );
	float *C = static_cast<float*>( align_alloc(align, size) );
	float *ZZZ = static_cast<float*>( align_alloc(align, size) );

	for (::size_t i = 0; i < len; ++i) {
		A[i] = (i % 101) / 10.f;
		B[i] = 2 * (i % 1013)/ 100.f;
	}

	unsigned long long time_beg, time_end;

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_slow(&ZZZ[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "std mul: %.6f\n", (time_end - time_beg)/1e6);


	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_inner(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul inner: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul inner");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_inner2(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul inner2: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul inner2");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_inner3(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul inner3: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul inner3");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_inner2_fma(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul inner2_fma: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul inner2_fma");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_switched(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul switched: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul switched");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_outer(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul outer: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul outer");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_outer2(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul outer2: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul outer2");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_outer2_fma(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul outer2_fma: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul outer2_fma");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_fma(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul matrix_mul_8x8_fma: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul matrix_mul_8x8_fma");

	time_beg = get_time();
	for (::size_t i = 0; i < len; i += 64) {
		matrix_mul_8x8_switched_fma(&C[i], &A[i], &B[i]);
	}
	time_end = get_time();
	fprintf(stderr, "AVX mul matrix_mul_8x8_switched_fma: %.6f\n", (time_end - time_beg)/1e6);
	check_results(ZZZ, C, len, "AVX mul matrix_mul_8x8_switched_fma");

	return 0;
}
