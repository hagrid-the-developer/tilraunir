#include <iostream>

namespace xyz {
	struct Stream{};
	struct A {
		inline friend Stream& operator<<(Stream& stream, const A& a) {
			(void)a;
			return stream;
		}

		inline friend std::ostream& operator<<(std::ostream& stream, const A& a) {
			(void)a;
			return stream;
		}
	};

}

int main() {
	xyz::A a;
#ifdef CUSTOM_STREAM
	xyz::Stream st;
	st << a;
#else
	std::cerr << a;
#endif
}
