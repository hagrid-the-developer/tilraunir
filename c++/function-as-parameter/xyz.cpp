#include <string>

int func(std::string) {
	return 5;
}

int
main(void) {
	int f(std::string());
	int g(std::string*());

	int f2(std::string x());
	int g2(std::string (*x)());

	f(func);
	g(func);

	f2(func);
	g2(func);

	return 0;
}
