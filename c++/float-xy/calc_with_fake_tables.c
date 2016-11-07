#include <stdio.h>
#include <stdlib.h>
#include <cblas.h>

#include "float-xy.h"

static float *alloc_safe(const unsigned x, const unsigned y) {
	float *$ = malloc(x * y * sizeof(*$));
	if (!$) {
		fprintf(stderr, "Cannot allocate %zu bytes of memory\n", x * y * sizeof(*$));
		exit(1);
	}
	return $;
}

static int call_sgemm(const unsigned m, const unsigned n, const unsigned k) {
	float *A = alloc_safe(m, k);
	float *B = alloc_safe(k, n);
	float *C = alloc_safe(m, n);

	gen_xy_rowfirst(A, m, k);
	gen_xy_rowfirst(B, k, n);
	gen_xy_rowfirst(C, m, n);

	cblas_sgemm(CblasColMajor, CblasNoTrans, CblasNoTrans,
	      m, n, k,
	      1.f,
	      A, m,
	      B, k,
	      1.f,
	      C, m);
#	if 0
	sgemm(trans, inp.trans,                      // order, transa, transb
		int(units), int(repetitions), int(inputs),            // m, n, k
		1.0, pWeights, int(units),                            // alpha, A, lead_dim_A
		&ia[shift * inp.items], int(inputs),               // B, lead_dim_B
		1.0, &oa[shift * out.items], int(delays * units)); // beta, C, lead_dim_C
#	endif

	return 0;
}

static void print_rowcols(const float *arr, const unsigned len) {
	for (unsigned i = 0; i < len; ++i) {
		unsigned row = 0, col = 0;
		float2rowcol(arr[i], &row, &col);
		fprintf(stderr, "(%u, %u)", row, col);
	}
}

static unsigned read_arg(const char *name, const unsigned index, int argc, char **argv) {
	if (index >= (unsigned)argc) {
		fprintf(stderr, "Argument %u (%s) not entered!\n", index, name);
		exit(1);
	}

	unsigned val = 0;
	if (sscanf(argv[index], "%u", &val) != 1) {
		fprintf(stderr, "Cannot read argument %u (%s) :-(\n", index, name);
		exit(1);
	}

	return val;
}

int
main(int argc, char *argv[]) {
	const unsigned m = read_arg("m", 1, argc, argv);
	const unsigned n = read_arg("n", 2, argc, argv);
	const unsigned k = read_arg("k", 3, argc, argv);

	fprintf(stderr, "Running with: m:%u n:%u k:%u\n", m, n, k);

	return call_sgemm(m, n, k);
}
