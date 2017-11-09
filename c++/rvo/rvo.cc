#include <iostream>

/*
 * Elides copy-constructor even with -O0, but never eliminates operator= .
 * 
 * $ g++ -std=gnu++14 -Ofast -o rvo rvo.cc
 * $ ./rvo
 * X()
 * X()
 * X=
 *
 */

namespace $ = std;

class X {
public:
	X() { $::cerr << "X()" << $::endl; }
	X(const X&) { $::cerr << "X(const X&)" << $::endl; }
	X(X&&) { $::cerr << "X(X&&)" << $::endl; }
	X& operator=(const X&) { $::cerr << "X=" << $::endl; return *this; }
};

X f() {
	return X();
}

int
main(void) {
	X x;
	x = f();
	return 0;
}
