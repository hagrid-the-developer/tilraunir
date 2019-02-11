#pragma once

#include <cassert>
#include <cstdarg>
#include <string>

std::string
str_printf(const char *msg, va_list args) noexcept
{
	va_list args2;

	va_copy(args2, args);
    const int len = std::vsnprintf(nullptr, 0, msg, args2);
	va_end(args2);

    assert(len >= 0);
    std::string ret(std::size_t(len + 1), '~');
    std::vsnprintf(&ret[0], std::size_t(len + 1), msg, args);
	assert(ret.back() == 0);
    ret.resize(std::size_t(len));

	return ret;
}

std::string
str_printf(const char *msg, ...) noexcept
{
	va_list args;

	va_start(args, msg);
	std::string ret = str_printf(msg, args);
	va_end(args);
	return ret;
}
