#include <iostream>
#include <cblas.h>

#include "gettime.hpp"

/**
 * $ cat /proc/cpuinfo | grep 'model name' | head -n 1
 * model name      : Intel(R) Core(TM) i7-4790S CPU @ 3.20GHz
 * $ g++ -O3 -std=gnu++11 -c scopy-memcpy.cpp -I/opt/OpenBLAS/include/
 * $ g++ -O3 -static -o scopy-memcpy scopy-memcpy.o -L /opt/OpenBLAS/lib -lopenblas_haswellp-r0.2.14 -lopenblas
 * $ ./scopy-memcpy
 * scopy(100, 10000): 0.0177131
 * memcpy(100, 10000): 0.0152919
 * scopy(1000, 1000): 0.0642409
 * memcpy(1000, 1000): 0.07177
 * scopy(10000, 100): 0.778243
 * memcpy(10000, 100): 1.4051
 * scopy(100000, 10): 42.7485
 * memcpy(100000, 10): 42.6359
 */


typedef unsigned uns;

namespace {

const uns X = 1000000;
const uns Y = 10;

float *f1 = new float[X];
float *f2 = new float[X];


void test_scopy(const uns cycles_num, const uns len) {
	for (uns i = 0; i < cycles_num; ++i) {
		::cblas_scopy(len, f1, 1, f2, 1);
	}
}

void test_memcpy(const uns cycles_num, const uns len) {
	for (uns i =0; i < cycles_num; ++i) {
		::memcpy(f2, f1, len*sizeof(*f1));
	}
}

} /* anonymouse namespace */

int
main(void) {
	::bzero(f1, X*sizeof(*f1));
	::bzero(f2, X*sizeof(*f2));

	for (uns x = X/10000; x < X; x *= 10) {
		{
			const double beg = gettime();
			for (uns y = 0; y < x; ++y)
				test_scopy(x, X/x);
			const double end = gettime();
			std::cerr << "scopy(" << x << ", " << X/x << "): " << (end - beg) << std::endl;
		}
		{
			const double beg = gettime();
			for (uns y = 0; y < x; ++y)
				test_memcpy(x, X/x);
			const double end = gettime();
			std::cerr << "memcpy(" << x << ", " << X/x << "): " << (end - beg) << std::endl;
		}
	}

	return 0;
}
