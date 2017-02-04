/**
 * $ g++ -std=gnu++1y -march=native -mavx2 -msse horizontal-doublexor.cpp
 * $ ./a.out
 */

#include <cstdint>
#include <cstdlib>
#include <iomanip>
#include <immintrin.h>
#include <string>
#include <sstream>
#include <cstdio>

namespace $ = std;

namespace {

union SSE {
	__m128i i4_;
	__m128 f4_;
	__m128d d2_;
	float sf_[4];
	::uint32_t dw_[4];
	::uint8_t b_[16];
};

union AVX {
	__m256i i8_;
	__m256 f8_;
	__m256d d4_;
	float sf_[8];

	SSE sse_[2];
	::uint32_t dw_[8];
	::uint64_t qw_[4];
	::uint8_t b_[32];
};

template <typename T>
T init() {
	T t;
	for (::size_t i = 0; i < sizeof(T); ++i) {
		t.b_[i] = int(::rand() % 256);
	}
	return t;
}

template <typename T>
::uint64_t naive(const T x, const T y) {
	::uint32_t xor_x = x.dw_[0];
	::uint32_t xor_y = y.dw_[0];

	for (::size_t i = 1; i < sizeof(T) / 4; ++i) {
		xor_x ^= x.dw_[i];
		xor_y ^= y.dw_[i];
	}

	return ::uint64_t(xor_y) << 32 | xor_x;
}

::uint64_t sse(const SSE x0, const SSE x1) {
		SSE res0{ .d2_ = _mm_unpacklo_pd(x0.d2_, x1.d2_) };
		SSE res1{ .d2_ = _mm_unpackhi_pd(x0.d2_, x1.d2_) };
		res0.f4_ = _mm_xor_ps(res0.f4_, res1.f4_);
		res1.f4_ = _mm_movehdup_ps(res0.f4_);
		res0.f4_ = _mm_xor_ps(res0.f4_, res1.f4_);
		res1.f4_ = _mm_movehl_ps(res1.f4_, SSE{.i4_ = _mm_slli_epi64(res0.i4_, 32)}.f4_);
		res0.i4_ = _mm_or_si128(res0.i4_, res1.i4_);
		return _mm_cvtsi128_si64(res0.i4_);
}

::uint64_t sse_int(const SSE x0, const SSE x1) {
		__m128i in0 = x0.i4_;
		__m128i in1 = x1.i4_;

		__m128i xor64_0 = _mm_unpackhi_epi64(in0, in1);
		__m128i xor64_1 = _mm_unpacklo_epi64(in0, in1);

		__m128i xor64 = _mm_xor_si128(xor64_0, xor64_1);

		__m128i xor32_0 = _mm_shuffle_epi32(xor64, _MM_SHUFFLE(3, 1, 2, 0));
		__m128i xor32_1 = _mm_shuffle_epi32(xor64, _MM_SHUFFLE(2, 0, 3, 1));
		__m128i xor32 = _mm_xor_si128(xor32_0, xor32_1);

		return _mm_cvtsi128_si64(xor32);
}

::uint64_t avx(AVX x0, AVX x1) {
	x0.sse_[0].i4_ = _mm_xor_si128(x0.sse_[0].i4_, SSE{.f4_ = _mm256_extractf128_ps(x0.f8_, 1)}.i4_);
	x1.sse_[0].i4_ = _mm_xor_si128(x1.sse_[0].i4_, SSE{.f4_ = _mm256_extractf128_ps(x1.f8_, 1)}.i4_);
	SSE res0{ .d2_ = _mm_unpacklo_pd(x0.sse_[0].d2_, x1.sse_[0].d2_) };
	SSE res1{ .d2_ = _mm_unpackhi_pd(x0.sse_[0].d2_, x1.sse_[0].d2_) };
	res0.f4_ = _mm_xor_ps(res0.f4_, res1.f4_);
	res1.f4_ = _mm_movehdup_ps(res0.f4_);
	res0.f4_ = _mm_xor_ps(res0.f4_, res1.f4_);
	res1.f4_ = _mm_movehl_ps(res1.f4_, SSE{.i4_ = _mm_slli_epi64(res0.i4_, 32)}.f4_);
	res0.i4_ = _mm_or_si128(res0.i4_, res1.i4_);
	return _mm_cvtsi128_si64(res0.i4_);
}

template <typename T>
$::string $(const T x) {
	$::stringstream ss;
	ss << $::setw(2) << $::hex;
	for (::size_t i = 0; i < sizeof(x); ++i) {
		ss << ::uint32_t(x.b_[i]);
	}
	return ss.str();
}

const char *$$(const std::string &$) {
	return $.c_str();
}

bool run_sse() {
	const SSE x0 = init<SSE>();
	const SSE x1 = init<SSE>();
	const auto val0 = naive(x0, x1);
	const auto val1 = sse(x0, x1);
	const auto val2 = sse_int(x0, x1);
	
	fprintf(stderr, "SSE: x0:%s x1:%s val0:0x%.16jx val1:0x%.16jx val2:0x%.16jx\n", $$($(x0)), $$($(x1)), ::uintmax_t(val0), ::uintmax_t(val1), ::uintmax_t(val2));

	return val0 == val1 && val0 == val2;
}

bool run_avx() {
	const AVX x0 = init<AVX>();
	const AVX x1 = init<AVX>();
	const auto val0 = naive(x0, x1);
	const auto val1 = avx(x0, x1);

	fprintf(stderr, "AVX: x0:%s x1:%s val0:0x%.16jx val1:0x%.16jx\n", $$($(x0)), $$($(x1)), ::uintmax_t(val0), ::uintmax_t(val1));

	return val0 == val1;
}

} /* Anonymous Namespace */

int
main(void) {
	for (int _ = 0; _ < 256; ++_) {
		if (!run_sse())
			return 1;
		if (!run_avx())
			return 2;
	}

	return 0;
}
