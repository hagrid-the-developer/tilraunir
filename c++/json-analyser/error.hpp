#pragma once

#include <ostream>
#include <sstream>
#include <system_error>
#include <stdexcept>

#include "str_printf.hpp"

namespace meave {

class Error : public std::runtime_error {
public:
	Error() = default;
	Error(const Error&) = default;
	Error(Error&&) = default;
	Error(const std::string &s) noexcept
	:	std::runtime_error(s) {
	}
	template<typename ...T>
	Error(T ...t) noexcept
		: std::runtime_error(str_printf(t...)) {
	}

	friend std::ostream &operator<<(std::ostream &o, const Error &e) {
		o << e.what();
		return o;
	}

	template <typename T>
	friend Error operator<<(const Error &e, const T &t) {
		std::stringstream ss;
		ss << e;
		ss << t;
		return Error(ss.str());
	}

	virtual ~Error() = default;
};

} /* namespace meave */
