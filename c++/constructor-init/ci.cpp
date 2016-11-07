/*
 * $ g++ -std=gnu++11 -o ci ci.cpp
 * ./ci
 * x1: X{-7, 3.14}
 * x2: X{0, 0}
 * x3: X{-7, 3.14}
 *
 */


#include <iostream>

namespace {

struct Default{};
struct Ignore{};

class X {
private:
	int i_ = -7;
	float f_ = 3.14;

public:
	X() = default;
	X(const Default&)
	:	i_()
	,	f_() {
	}
	X(const Ignore&) {
	}

	friend std::ostream &operator<<(std::ostream &o, const X &x) noexcept {
		return o << "X{" << x.i_ << ", " << x.f_ << "}";
	}
};

} /* Anonymous Namespace */

int
main(void) {
	X x1{};
	X x2{Default{}};
	X x3{Ignore{}};

	std::cerr << "x1: " << x1 << std::endl;
	std::cerr << "x2: " << x2 << std::endl;
	std::cerr << "x3: " << x3 << std::endl;

	return 0;
}
