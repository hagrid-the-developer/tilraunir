#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <vector>

namespace $ = std;

#define LEN 1'000'000'000

int
main(void) {
	$::vector<float> vec(LEN);
	float sum = 0.f;
	{
		#pragma omp parallel for
		for (::size_t i = 0; i < LEN; ++i) {
			vec[i] = (i % 1024) / 1024.f;
		}
		#pragma omp parallel for reduction(+:sum)
		for (::size_t i = 0; i < LEN; ++i) {
			sum += vec[i];
		}
	}
	$::cerr << "sum: " << sum << ";" << $::endl;
	return 0;
}
