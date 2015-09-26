#include <stdint.h>
#include <immintrin.h>
#include <assert.h>

static inline void rectifier_kernel_avx(float *a, const size_t blocks) {
    for (size_t i = 0; i < blocks; ++i) {
        _mm256_store_ps( &a[i*8], _mm256_max_ps( _mm256_load_ps( &a[i*8] ) , _mm256_setzero_ps() ) );
    }
}

static inline void rectifier_kernel_back_avx(float *a, const size_t blocks) {
    assert(blocks > 0);
    size_t i = blocks;
    do {
        _mm256_store_ps( &a[i*8], _mm256_max_ps( _mm256_load_ps( &a[i*8] ) , _mm256_setzero_ps() ) );
    } while(--i);
}

static inline void rectifier_kernel_avx2(float *a, const size_t blocks) {
    for (size_t i = 0; i < blocks; ++i) {
        _mm256_store_ps( &a[i*8*2 + 0*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*2 + 0*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*2 + 1*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*2 + 1*8] ) , _mm256_setzero_ps() ) );
    }
}

static inline void rectifier_kernel_avx5(float *a, const size_t blocks) {
    for (size_t i = 0; i < blocks; ++i) {
        _mm256_store_ps( &a[i*8*5 + 0*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*5 + 0*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*5 + 1*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*5 + 1*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*5 + 2*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*5 + 2*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*5 + 3*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*5 + 3*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*5 + 4*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*5 + 4*8] ) , _mm256_setzero_ps() ) );
    }
}

static inline void rectifier_kernel_avx10(float *a, const size_t blocks) {
    for (size_t i = 0; i < blocks; ++i) {
        _mm256_store_ps( &a[i*8*10 + 0*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 0*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*10 + 1*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 1*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*10 + 2*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 2*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*10 + 3*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 3*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*10 + 4*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 4*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*10 + 5*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 5*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*10 + 6*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 6*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*10 + 7*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 7*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*10 + 8*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 8*8] ) , _mm256_setzero_ps() ) );
        _mm256_store_ps( &a[i*8*10 + 9*8], _mm256_max_ps( _mm256_load_ps( &a[i*8*10 + 9*8] ) , _mm256_setzero_ps() ) );
    }
}

static inline void rectifier_kernel_c(float *a, const size_t len) {
	for (size_t i = 0; i < len; ++i) {
		a[i] = a[i] > 0.0 ? a[i] : 0.0;
	}
}

static inline void rectifier_kernel_back_c(float *a, const size_t len) {
	for (size_t i = len; i; --i) {
		a[i] = a[i] > 0.0 ? a[i] : 0.0;
	}
}

void rectifier_avx_1(float *a, const size_t len) {
	const size_t blocks_num = len/8;
	rectifier_kernel_avx(a, blocks_num);
	rectifier_kernel_c(&a[blocks_num*8], len - blocks_num*8);
}

void rectifier_avx_2(float *a, const size_t len) {
	float *p = a;
	for (; p + 8 <= &a[len]; p += 8) {
		_mm256_store_ps(p, _mm256_max_ps( _mm256_load_ps(p) , _mm256_setzero_ps() ) );
	}
	for (; p < &a[len]; ++p) {
		*p = *p > 0.0 ? *p : 0.0;
	}
}

void rectifier_avx_3(float *a, const size_t len) {
	float *p = a;
	assert(len > 8);
	for (; (uintptr_t)p%32 != 0; ++p) {
		*p = *p > 0.0 ? *p : 0.0;
	}
	for (; p + 8 <= &a[len]; p += 8) {
		_mm256_stream_ps(p, _mm256_max_ps( _mm256_load_ps(p) , _mm256_setzero_ps() ) );
	}
	for (; p < &a[len]; ++p) {
		*p = *p > 0.0 ? *p : 0.0;
	}
}

void rectifier_avx_4(float *a, const size_t len) {
	const size_t blocks_num = len/8;
	const size_t blocks_num_5 = blocks_num/5;
	rectifier_kernel_avx5(a, blocks_num_5);
	rectifier_kernel_avx(&a[blocks_num_5*5*8], blocks_num - 5*blocks_num_5);
	rectifier_kernel_c(&a[blocks_num*8], len - blocks_num*8);
}

void rectifier_avx_5(float *a, const size_t len) {
	const size_t blocks_num = len/8;
	const size_t blocks_num_2 = blocks_num/2;
	rectifier_kernel_avx2(a, blocks_num_2);
	rectifier_kernel_avx(&a[blocks_num_2*2*8], blocks_num - 2*blocks_num_2);
	rectifier_kernel_c(&a[blocks_num*8], len - blocks_num*8);
}

void rectifier_avx_6(float *a, const size_t len) {
	const size_t blocks_num = len/8;
	const size_t blocks_num_10 = blocks_num/10;
	rectifier_kernel_avx10(a, blocks_num_10);
	rectifier_kernel_avx(&a[blocks_num_10*10*8], blocks_num - 10*blocks_num_10);
	rectifier_kernel_c(&a[blocks_num*8], len - blocks_num*8);
}

void rectifier_avx_7(float *a, const size_t len) {
	const size_t blocks_num = len/8;
	rectifier_kernel_back_c(&a[blocks_num*8], len - blocks_num*8);
	rectifier_kernel_back_avx(a, blocks_num);
}

static inline void rectifier_unaligned_kernel_avx(float *a, const size_t blocks) {
    for (size_t i = 0; i < blocks; ++i) {
        _mm256_storeu_ps( &a[i*8], _mm256_max_ps( _mm256_loadu_ps( &a[i*8] ) , _mm256_setzero_ps() ) );
    }
}

void rectifier_unaligned_avx_1(float *a, const size_t len) {
	const size_t blocks_num = len/8;
	rectifier_unaligned_kernel_avx(a, blocks_num);
	rectifier_kernel_c(&a[blocks_num*8], len - blocks_num*8);
}

