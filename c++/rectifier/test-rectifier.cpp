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
	float *arr = new float[LEN + 8];
	float *rand_arr = new float[LEN];

	template<typename F>
	void run_test(const F &f, const char *name) {
		RandomGenerator rand_gen;
		Dist dist(-10.0, +10.0);

		for (unsigned align = 0; align < 1; ++align) {
			float *a = arr;
			for (; reinterpret_cast< ::uintptr_t>(a) % 32 != align*4; ++a);

			std::generate(&a[0], &a[LEN], [&dist, &rand_gen]() -> float { return dist(rand_gen); });

			const double beg = gettime();
			f(a, LEN);
			const double end = gettime();
			std::cerr << "Test:" << name << "; align:" << align << "; time:" << (end - beg) << std::endl;
		}
	}
} /* Anonymouse Namespace */

int
main(void) {
	run_test(rectifier_avx_1, "AVX_1");
	run_test(rectifier_avx_2, "AVX_2");
	run_test(rectifier_avx_3, "AVX_3");
	run_test(rectifier_avx_4, "AVX_4");
	run_test(rectifier_avx_5, "AVX_5");
	return 0;
}
