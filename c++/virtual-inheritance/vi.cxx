/*
 * $ g++ -v
 * Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
 * Apple LLVM version 8.0.0 (clang-800.0.42.1)
 * Target: x86_64-apple-darwin15.6.0
 * Thread model: posix
 * InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
 * $ g++ -std=c++14 vi.cxx
 * $ ./a.out
 * D1:V: 0x7fa1bbc031a0
 * D2:V: 0x7fa1bbc031a0
 * D1:V: 0x7fa1bbc031a0
 * D2:V: 0x7fa1bbc031a0
 * D1:B: 0x7fa1bbc031a0
 * D2:B: 0x7fa1bbc031a8
 */

#include <iostream>
#include <memory>

namespace diamond {

struct VBase {};

struct Base : public virtual VBase {};

struct Derived1 : public Base {};

struct Derived2 : public Base {};

struct X : public Derived1, public Derived2 {
	X() {
		std::cerr << "D1:V: " << (VBase*)(Derived1*)this << std::endl;
		std::cerr << "D2:V: " << (VBase*)(Derived2*)this << std::endl;
	}
};


} /* namespace diamond */

namespace experiment {

struct VBase {};

struct Base {};

struct Derived1 : public Base, public virtual VBase {};

struct Derived2 : public Base, public virtual VBase {};

struct X : public Derived1, public Derived2 {
	X() {
		std::cerr << "D1:V: " << (VBase*)(Derived1*)this << std::endl;
		std::cerr << "D2:V: " << (VBase*)(Derived2*)this << std::endl;
	}
};

} /* namespace experiment */

namespace experiment2 {

struct Base {};

struct Derived1 : public Base {};

struct Derived2 : public Base {};

struct X : public virtual Derived1, public virtual Derived2 {
	X() {
		std::cerr << "D1:B: " << (Base*)(Derived1*)this << std::endl;
		std::cerr << "D2:B: " << (Base*)(Derived2*)this << std::endl;
	}
};

} /* namespace experiment */

int
main() {
	std::make_unique<diamond::X>();
	std::make_unique<experiment::X>();
	std::make_unique<experiment2::X>();
}
