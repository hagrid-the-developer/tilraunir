#include <iostream>
#include <memory>
#include <new>
#include <cstdlib>

void* operator new(size_t sz) {
	void* p = ::malloc(sz);
	std::cerr << "operator new(" << sz << ") -> " << p << std::endl;
	return p;
}

void operator delete(void* ptr) noexcept {
    std::cerr << "operator delete <- " << ptr << std::endl;
    ::free(ptr);
}

template <size_t SIZE, bool USE_MAKE>
void test() {
	std::cerr << "BEGIN: " << SIZE << (USE_MAKE ? " with make function" : " with new") << std::endl;

	struct X {
		X() { std::cerr << "Constructor of X" << std::endl; }
		~X() { std::cerr << "Destructor of X" << std::endl; }
		char _[SIZE];
	};

	std::shared_ptr<X> ptr;
	if (USE_MAKE) {
		ptr = std::make_shared<X>();
	} else {
		ptr.reset(new X);
	}

	std::cerr << "Creating weak_ptr" << std::endl;
	std::weak_ptr<X> wtr{ptr};

	std::cerr << "Releasing shared_ptr" << std::endl;
	ptr.reset();

	std::cerr << "Releasing weak_ptr" << std::endl;
	wtr.reset();

	std::cerr << "END" << std::endl << std::endl;
}

int
main(void) {
	test<4, true>();
	test<4, false>();

	test<1024, true>();
	test<1024, false>();

	test<128'000, true>();
	test<128'000, false>();

	test<128'000'000, true>();
	test<128'000'000, false>();
}

