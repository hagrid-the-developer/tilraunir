#include <iostream>
#include <stdexcept>

void xyz_001() {
	throw std::invalid_argument("AAA");
}

void xyz_002() noexcept {
	throw std::invalid_argument("BBB");
}

void x001() {
	fprintf(stderr, "x001\n");
	xyz_001();
}

void x002() {
	fprintf(stderr, "x002");
	xyz_002();
}

int
main(void) {
	std::cerr << "x001:" << noexcept(x001()) << "; x002:" << noexcept(x002()) << std::endl;
	std::cerr << "xyz_001:" << noexcept(xyz_001()) << "; xyz_002:" << noexcept(xyz_002()) << std::endl;

	return 0;
}
