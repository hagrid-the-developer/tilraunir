#include <algorithm>
#include <array>
#include <iterator>

static char g_arr[64];
static char g_array[64];

void
f1(const char* arr, const size_t arr_len)
{
	std::array<char, 32> dst{};
	std::copy(arr, arr+arr_len, std::begin(dst));
}

void
f2()
{
	std::array<char, 32> dst{};
	std::copy(std::begin(g_arr), std::end(g_arr), std::begin(dst));
}

void
f3()
{
	std::array<char, 32> dst{};
	std::copy(std::begin(g_array), std::end(g_array), std::begin(dst));
}
