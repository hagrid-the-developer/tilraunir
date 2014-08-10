#include "epona.hpp"

namespace epona {
	int f(const int x, const int y) {
		return g(x) + g(y);
	}

	int g(const int x) {
		return x*x;
	}
}
