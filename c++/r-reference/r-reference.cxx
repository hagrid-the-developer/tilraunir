#include <cstdio>
#include <utility>

/**
 * $ clang++ -std=gnu++14 r-reference.cxx
 * $ ./a.out
 * Constructor: 1
 * Constructor: 2
 * Constructor: 3
 * Destructor: 3
 * Destructor: 2
 * Destructor: 1
 */

class X {
int _;

public:
	X(const int $)
	:	_($) {
		::fprintf(stderr, "Constructor: %d\n", _);
	}

	~X() {
		::fprintf(stderr, "Destructor: %d\n", _);
	}
};

int
main(void) {
	X x1(1);
	X x2(2);
	X x3(3);
	X&& rx = std::move(x2);

	return 0;
}
