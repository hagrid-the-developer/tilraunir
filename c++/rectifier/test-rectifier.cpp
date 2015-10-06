/**
 *
 * $ make -f rectifier.mk
 * $ ./test-rectifier
 *
 */


#include <algorithm>
#include <cstdint>
#include <iostream>
#include <random>

#include "gettime.hpp"

extern "C" {
#include "rectifier.h"
}

namespace {
	typedef std::default_random_engine RandomGenerator;
	typedef std::uniform_real_distribution<float> Dist;

	const unsigned LEN = 100000000;

	template<typename F>
	void run_test(const F &f, const char *name, const bool various_align) {
		float *arr = new float[LEN + 8];
		float *rand_arr = new float[LEN];

		RandomGenerator rand_gen;
		Dist dist(-10.0, +10.0);

		for (unsigned align = 0; align < (various_align ? 8 : 1); ++align) {
			float *a = arr;
			for (; reinterpret_cast< ::uintptr_t>(a) % 32 != align*4; ++a);

			std::generate(&a[0], &a[LEN], [&dist, &rand_gen]() -> float { return dist(rand_gen); });

			const double beg = gettime();
			f(a, LEN);
			const double end = gettime();
			std::cerr << "Test:" << name << "; align:" << align << "; time:" << (end - beg) << std::endl;
		}

		delete [] arr;
		delete [] rand_arr;
	}

	template<unsigned L, typename F>
	void run_test_eq(const F &f, const char *name, const bool various_align) {
		float *arr = new float[L];
		float *arr_f = new float[L + 8];
		float *arr_g = new float[L];
		float *rand_arr = new float[L];

		RandomGenerator rand_gen;
		Dist dist(-10.0, +10.0);

		for (unsigned align = 0; align < (various_align ? 8 : 1); ++align) {
			float *af = arr_f;
			for (; reinterpret_cast< ::uintptr_t>(af) % 32 != align*4; ++af);
			float *ag = arr_g;

			std::generate(&arr[0], &arr[L], [&dist, &rand_gen]() -> float { return dist(rand_gen); });

			std::copy(&arr[0], &arr[L], af);
			std::copy(&arr[0], &arr[L], ag);

			f(af, L);

			std::replace_if(&ag[0], &ag[L], [](const float x) -> bool { return x < 0.0; }, 0.0);

			const bool eq = std::equal(&af[0], &af[L], &ag[0]);
			std::cerr << "Test EQ:" << name << "; align:" << align << "; L:" << L << "; res:" << (eq ? "Y" : "N") << std::endl;
		}

		delete [] arr;
		delete [] arr_f;
		delete [] arr_g;
		delete [] rand_arr;
	}
} /* Anonymouse Namespace */

int
main(void) {
	run_test(rectifier_avx_1, "AVX_1", false);
	run_test(rectifier_avx_2, "AVX_2", false);
	run_test(rectifier_avx_3, "AVX_3", false);
	run_test(rectifier_avx_4, "AVX_4", false);
	run_test(rectifier_avx_5, "AVX_5", false);
	run_test(rectifier_avx_6, "AVX_6", false);
	run_test(rectifier_avx_7, "AVX_7", false);
	run_test(rectifier_unaligned_avx_1, "unaligned_AVX_1", true);
	run_test(rectifier_avx_asm_1, "unaligned_ASM_AVX_1", true);

	run_test_eq<LEN>(rectifier_avx_asm_1, "eq:unaligned_ASM_AVX_1", true);
	run_test_eq<1>(rectifier_avx_asm_1, "eq:unaligned_ASM_AVX_1", true);
	run_test_eq<5>(rectifier_avx_asm_1, "eq:unaligned_ASM_AVX_1", true);
	run_test_eq<10>(rectifier_avx_asm_1, "eq:unaligned_ASM_AVX_1", true);
	run_test_eq<100>(rectifier_avx_asm_1, "eq:unaligned_ASM_AVX_1", true);

	return 0;
}
