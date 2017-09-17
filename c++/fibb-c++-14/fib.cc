/*
 * Compilation is very fast (Mac OS). It seems that compiler can optimize-out
 *   recursive calls of templates.
 * Binary with array was about the same size as binary with impl. Binary with value read from command-line
 *   added another 40bytes.
 *
 * * With simply Fib struct:
 * $ time g++ -std=gnu++14 -Ofast fib.cc
 *
 * real	0m0.041s
 * user	0m0.022s
 * sys	0m0.016s
 * $ ./a.out
 * > 2971215073
 * $ ll ./a.out
 * -rwxr-xr-x  1 faramir  staff  8484 Sep 17 20:55 ./a.out
 *
 *  * Binary, where impl was added, but was used only on compile-time constant:
 *
 *  $ time g++ -std=gnu++14 -Ofast fib.cc
 *
 * real	0m0.123s
 * user	0m0.098s
 * sys	0m0.022s
 * $ ./a.out
 * > 2971215073
 * > 2971215073
 * $ ll ./a.out
 * -rwxr-xr-x  1 faramir  staff  8484 Sep 17 20:56 ./a.out
 *
 *  * Binary, where fibb() was used also on runtime value:
 *
 *  $ time g++ -std=gnu++14 -Ofast fib.cc
 *
 * real	0m0.155s
 * user	0m0.108s
 * sys	0m0.035s
 * $ ./a.out 47
 * > 2971215073
 * > 2971215073
 * > 2971215073
 * $ ll ./a.out
 * -rwxr-xr-x  1 faramir  staff  8524 Sep 17 21:00 ./a.out
 *
 *
 * $ g++ -v
 * Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
 * Apple LLVM version 8.0.0 (clang-800.0.38)
 * Target: x86_64-apple-darwin15.6.0
 * Thread model: posix
 */

#include <array>
#include <cstdio>
#include <cstdlib>
#include <utility>

template <unsigned N>
struct Fib {
	static constexpr unsigned value = Fib<N-1>::value + Fib<N-2>::value;
};
template<>
struct Fib<0> {
	static constexpr unsigned value = 0;
};
template<>
struct Fib<1> {
	static constexpr unsigned value = 1;
};

template<std::size_t ...I>
constexpr unsigned fibb_impl(std::index_sequence<I...>, const unsigned $) noexcept {
	std::array<std::size_t, sizeof...(I)> a = { Fib<I>::value... };
	return a[$];
}

constexpr unsigned fibb(const unsigned $) noexcept {
	return fibb_impl(std::make_index_sequence<48>{}, $);
}

int
main(int argc, char *argv[]) {
	fprintf(stderr, "> %u\n", Fib<47>::value);
	fprintf(stderr, "> %u\n", fibb(47));
	fprintf(stderr, "> %u\n", fibb(atoi(argv[1])));
	return 0;
}
