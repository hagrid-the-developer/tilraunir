#include <iostream>

namespace XYZ
{

void f() {
	std::cerr << "xyz1.cpp:g()" << std::endl;
}

void xyz1()
{
	std::cerr << "xyz1.cpp:xyz1()" << std::endl;
	f();
}

}
