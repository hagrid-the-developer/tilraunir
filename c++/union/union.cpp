/**
 * $ g++ -std=c++11 -o union union.cpp
 * $ ./union
 *
 */

#include <iostream>

namespace {

union X {
	// Trick with { x_ = } works only if no contructor is defined!
	void *v_;
	unsigned char *u8_;
	float *f_;

	explicit operator bool() {
		return v_ != nullptr;
	}
};

float pi = 3.14;

X ret_x() {
	return X{.f_ = &pi};
}

} /* Anonymous Namespace */

int
main(void) {
	unsigned char bytes[1024];

	X x0{.u8_ = bytes};

	return 0;
}
