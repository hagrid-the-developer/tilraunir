/**
 * $ g++ -std=c++11 -o union union.cpp
 * $ ./union
 *
 */

#include <iostream>

namespace {

union X {
	void *v_;
	unsigned char *u8_;
	float *f_;
};

} /* Anonymous Namespace */

int
main(void) {
	unsigned char bytes[1024];

	X x0{.u8_ = bytes};

	return 0;
}
