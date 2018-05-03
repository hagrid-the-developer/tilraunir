#include <array>
#include <cstring>
#include <iterator>

static std::array<char, 32> g_arr;

void f1(const char *src)
{
	strcpy(std::begin(g_arr), src);
}

void f2(const char *src)
{
	strcat(std::begin(g_arr), src);
}


// Call to strncpy is considered secure, even when the size is obviously wrong. It only contains check for NullPtr to strncpy...
void f3(const char *src)
{
	strncpy(std::begin(g_arr), src, 64);
}

// Call to memcpy is considered secure, even when the size is obviously wrong.
void f_memcpy(const char *src)
{
	memcpy(std::begin(g_arr), src, 64);
}
