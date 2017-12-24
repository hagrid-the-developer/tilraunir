#include <iostream>
#include <string>
#include <string_view>

struct S {
	S(std::string_view sv_)
	: _s(std::move(sv_)) {
	}

	std::string _s;
};

S make_s(std::string s) {
	return S(std::move(s));
}

int
main(void) {
	std::cerr << make_s("Hello World")._s << std::endl;
}
