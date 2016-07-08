/*
 * $ g++ -std=c++11 -o stringstream-parser stringstream-parser.cpp
 * $ ./stringstream-parser
 */

#include <iostream>
#include <sstream>
#include <cstdio>

int lang_x(const std::string &s) {

	int val = 0, n = 0;
	if (1 == sscanf(s.c_str(), "lang_%d%n", &val, &n) && n > 0 && ::size_t(n) == s.length()) {
		return val;
	} else {
		return -1;
	}
}

int lang_num(const std::string &s) {
	std::stringstream ss(s);

	int x;
	ss >> x;

	if (!!x) {
		return x;
	} else {
		return -1;
	}
}


int
main(void) {
	std::string arr[] = {"Hello World", "234", "Lang_34", "_34", "lang_128"};

	for (unsigned i = 0; i < sizeof(arr)/sizeof(*arr); ++i) {
		std::cerr << "in:" << arr[i] << "; res:" << lang_x(arr[i]) << "; " << lang_num(arr[i]) << std::endl;
	}

	return 0;
}
