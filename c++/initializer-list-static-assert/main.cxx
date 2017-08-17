/*
 * $ gcc -std=gnu++1z -o main main.cxx
 *
 */

#include <cstdlib>
#include <initializer_list>

/*
 * Failed:
 *   error: static_assert expression is not an integral constant expression
 */
#if 0
template<typename T>
static constexpr void func(std::initializer_list<T> x) {
	static_assert(x.size() == 3);
	static_assert(*(x.begin()) == 9);
	static_assert(*std::begin(x) == 9);
}
#endif

/*
 * Works.
 * Trick with reference to array of exact size is described here:
 *   https://stackoverflow.com/questions/5438671/static-assert-on-initializer-listsize .
 */
#if 1
template<typename T, ::size_t N>
static void func(const T(&)[N]) {
	static_assert(N == 3, "Exactly three elements are required.");
}
#endif

/*
 * Failed:
 *   error: static_assert expression is not an integral constant expression
 * for x[.] == ...
 */
#if 0
template<typename T, ::size_t N>
constexpr static void func(const T(&x)[N]) {
	static_assert(N == 3, "Exactly three elements are required.");
	static_assert(x[0] == 9, "First value must be 9.");
	static_assert(x[1] == 8, "Second value must be 8.");
	static_assert(x[2] == 7, "Third value must be 7.");
}
#endif

int
main(void) {
	func({9, 8, 7});
	//func({9, 8, 7, 5});
	return 0;
}
