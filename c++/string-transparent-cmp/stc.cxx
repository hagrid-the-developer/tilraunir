#include <iostream>
#include <string>
#include <set>

int
main(void) {
	std::set<std::string, std::less<>> set;
	set.find("Hello World");
}
