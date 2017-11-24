#include <cstdio>

/**
 * It is necessary to add `mutable' to the definition of a lambda function.
 * When `mutable' is added then `()' must be added as well.
 *
 * Values do change between calls.
 */


int
main(void) {
	int n = 0;

	auto lmbd_val = [=]() mutable {
		++n;
		fprintf(stderr, "lmbd_val: %d\n", n);
	};

	lmbd_val();
	lmbd_val();

	return 0;
}
