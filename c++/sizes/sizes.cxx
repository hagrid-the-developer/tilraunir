#include <iostream>
#include <memory>

/**
 * $ g++ -v
 * Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
 * Apple LLVM version 8.0.0 (clang-800.0.42.1)
 * Target: x86_64-apple-darwin15.6.0
 * Thread model: posix
 * InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
 *
 * $ g++ -std=c++14 sizes.cxx
 * $ ./a.out
 * l_nothing: 1
 * l_x: 4
 * l_xy: 8
 * l_xyf: 16
 * unique_ptr: 8
 * shared_ptr: 16
 */

static int g_x, g_y;

int
main(void) {
	int x, y;
	double f;

	auto l_nothing = [] {return g_x + g_y; };
	auto l_x = [x] { return x + g_y; };
	auto l_xy = [x, y] { return x + y; };
	auto l_xyf = [x, y, f] { return x + y + f; };

	std::cerr << "l_nothing: " << sizeof(l_nothing) << std::endl;
	std::cerr << "l_x: " << sizeof(l_x) << std::endl;
	std::cerr << "l_xy: " << sizeof(l_xy) << std::endl;
	std::cerr << "l_xyf: " << sizeof(l_xyf) << std::endl;

	std::unique_ptr<int> uptr;
	std::shared_ptr<int> ptr;

	std::cerr << "unique_ptr: " << sizeof(uptr) << std::endl;
	std::cerr << "shared_ptr: " << sizeof(ptr) << std::endl;
}
