/**
 * g++ -std=gnu++1y -o str_erase str_erase.cpp
 *
 * std::erase(x, ...)
 *   x can be equal to std::length(), but cannot be bigger!
 *
 */

#include <iostream>
#include <string>

namespace $ = std;

namespace {

void eraser() {
	const $::string str("Dia dhuit ar domhan");

	for (::size_t i = 0; i <= str.length() + 10; ++i) {
		$::string s = str;
		try {
			$::cerr << "i: " << i << "; length: " << s.length() << $::endl; 
			s.erase(i);
		} catch (...) {
			$::cerr << "Exception" << $::endl;
		}
	}
}

} /* Anonymous Namespace */

int
main(void) {
	eraser();

	return 0;
}
