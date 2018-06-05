#include <iostream>

struct foo {
	foo() = default;
	int a;
};

struct bar {
	bar();
	int b;
};

bar::bar() = default;

int main(void) {
	{
		foo a{};
		bar b{};
		std::cout << "a: " << a.a << "; b: " << b.b << std::endl;
	}

	{
		foo a;
		bar b;
		std::cout << "a: " << a.a << "; b: " << b.b << std::endl;
	}

	return 0;
}
