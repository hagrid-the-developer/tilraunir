#include <cstdio>

/**
 * It is necessary to add `mutable' to the definition of a lambda function.
 * When `mutable' is added then `()' must be added as well.
 *
 * Values do change between calls.
 *
 * Nice info related to this:
 *   https://stackoverflow.com/questions/5501959/why-does-c0xs-lambda-require-mutable-keyword-for-capture-by-value-by-defau
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
	fprintf(stderr, "Original n: %d\n", n);

	return 0;
}
