/*
 * $ g++ -std=gnu++1y -o exc exc.cpp
 * $ ./exc
 * f:Received $::exception
 * g:Received E1
 * f:Received $::exception
 * g:Received E2
 */

#include <cstdio>
#include <exception>

namespace $ = std;

class E1 : public $::exception {
};

class E2 : public $::exception {
};

void f(const $::exception &e) {
	try {
		throw e;
	} catch (E1&) {
		::fprintf(stderr, "f:Received E1\n");
	} catch (E2&) {
		::fprintf(stderr, "f:Received E2\n");
	} catch ($::exception&) {
		::fprintf(stderr, "f:Received $::exception\n");
	}
}

void g(const std::exception &e) {
	const E1 *e1 = dynamic_cast<const E1*>(&e);
	const E2 *e2 = dynamic_cast<const E2*>(&e);
	if (e1)
		::fprintf(stderr, "g:Received E1\n");
	else if (e2)
		::fprintf(stderr, "g:Received E2\n");
	else
		::fprintf(stderr, "g:Received $::exception\n");
}

int
main(void) {
	try {
		throw E1();
	} catch (const $::exception &e) {
		f(e);
		g(e);
	}
	try {
		throw E2();
	} catch (const $::exception &e) {
		f(e);
		g(e);
	}

	return 0;
}
