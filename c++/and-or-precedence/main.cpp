/*
 * $ g++ -std=gnu++1z -o main{,.cpp}
 * $ ./main; echo "> $?"
 */

#include <cstdio>
#include <cstdlib>

int
main(void) {
	unsigned x, y, z;
	unsigned wrong = 0;
	for (unsigned _ = 0; _ < 100000; ++_) {
		x = ::rand();
		y = ::rand() % 20;
		const unsigned val1 = x & (1<<y);
		const unsigned val2 = x & 1<<y;
		if (val1 != val2) {
			fprintf(stderr, "%u & (1 << %u) => %u != %u\n", x, y, val1, val2);
			++wrong;
		}
	}

	for (unsigned _ = 0; _ < 100000; ++_) {
		x = ::rand();
		y = ::rand() % 20;
		z = ::rand() % 2 == 1;

		const unsigned val1 = z && x & 1<<y;
		const unsigned val2 = z && (x & 1<<y);
		if (val1 != val2) {
			fprintf(stderr, "&& & %u, %u, %u  => %u != %u\n", x, y, z, val1, val2);
			++wrong;
		}
	}

	for (unsigned _ = 0; _ < 100000; ++_) {
		x = ::rand();
		y = ::rand() % 20;
		z = ::rand() % 2 == 1;

		const unsigned val1 = z || x & 1<<y;
		const unsigned val2 = z || (x & 1<<y);
		if (val1 != val2) {
			fprintf(stderr, "|| & %u, %u, %u  => %u != %u\n", x, y, z, val1, val2);
			++wrong;
		}
	}
	for (unsigned _ = 0; _ < 100000; ++_) {
		x = ::rand();
		y = ::rand() % 20;
		z = ::rand() % 2 == 1;

		const unsigned val1 = x & 1<<y && z;
		const unsigned val2 = (x & 1<<y) && z;
		if (val1 != val2) {
			fprintf(stderr, "& && %u, %u, %u  => %u != %u\n", x, y, z, val1, val2);
			++wrong;
		}
	}

	for (unsigned _ = 0; _ < 100000; ++_) {
		x = ::rand();
		y = ::rand() % 20;
		z = ::rand() % 2 == 1;

		const unsigned val1 = x & 1<<y || z;
		const unsigned val2 = (x & 1<<y) || z;
		if (val1 != val2) {
			fprintf(stderr, "& || %u, %u, %u  => %u != %u\n", x, y, z, val1, val2);
			++wrong;
		}
	}
	return !wrong ? 0 : 1;
}
