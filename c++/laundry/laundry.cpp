/*
 * $ /opt/gcc-7.2.0/bin/g++ -std=gnu++17 -Ofast -Wall laundry.cpp
 * $ ./a.out
 * p: 0x215ec20; X::n: 5
 * p: 0x215ec20; X::n: 15
 */

p: 0x215ec20; X::n: 5
p: 0x215ec20; X::n: 15

#include <iostream>
#include <new>

struct X {
	const int n;
	int m;
};

int main(void) {
	X *p = new X{5, 3};

	std::cerr << "p: " << (void*)p << "; X::n: " << p->n << std::endl;
	p->~X();

	new (p) X{15, 13};
	std::cerr << "p: " << (void*)p << "; X::n: " << std::launder(p)->n << std::endl;

	delete p;

	return 0;
}
