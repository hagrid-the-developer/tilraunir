#include <iostream>

void func(const int *x, int *y) {
	*y = *x + 5;
	std::cerr << "x:" << *x << "; y:" << *y << std::endl;
}
