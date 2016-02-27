#include <cstdint>
#include <iostream>

namespace $ = std;

namespace {

float fexpn(const int n) {
	union {
		float f;
		::uint32_t u;
	} r;

	r.u = ::uint8_t(n + 127) << 23;
	return r.f;
}	

} /* anonymous namespace */

int
main(void) {
	for (int i = 0; i <= +10; ++i) {
		$::cerr
			<< -i - 9*10 << ": " << fexpn(-i - 9*10) << " | "
			<< -i - 8*10 << ": " << fexpn(-i - 8*10) << " | "
			<< -i - 7*10 << ": " << fexpn(-i - 7*10) << " | "
			<< -i - 6*10 << ": " << fexpn(-i - 6*10) << " | "
			<< -i - 6*10 << ": " << fexpn(-i - 6*10) << " | "
			<< -i - 5*10 << ": " << fexpn(-i - 5*10) << " | "
			<< -i - 5*10 << ": " << fexpn(-i - 5*10) << " | "
			<< -i - 4*10 << ": " << fexpn(-i - 4*10) << " | "
			<< -i - 3*10 << ": " << fexpn(-i - 2*10) << " | "
			<< -i - 2*10 << ": " << fexpn(-i - 2*10) << " | "
			<< -i - 10 << ": " << fexpn(-i - 10) << " | "
			<< i << ": " << fexpn(i) << " | "
			<< i + 10 << ": " << fexpn(i + 10) << " | "
			<< i + 2*10 << ": " << fexpn(i + 2*10) << " | "
			<< i + 3*10 << ": " << fexpn(i + 3*10) << " | "
			<< i + 4*10 << ": " << fexpn(i + 4*10) << " | "
			<< i + 5*10 << ": " << fexpn(i + 5*10) << " | "
			<< i + 6*10 << ": " << fexpn(i + 6*10) << " | "
			<< i + 7*10 << ": " << fexpn(i + 7*10) << " | "
			<< i + 8*10 << ": " << fexpn(i + 8*10) << " | "
			<< i + 9*10 << ": " << fexpn(i + 9*10)
			<< $::endl;
	}

	return 0;
}
