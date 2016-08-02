#include <stdio.h>
#include <stdlib.h>

#include "float-xy.h"

/*
 * $ gcc -std=gnu99 -c calc_with_fake_tables.c -I/opt/OpenBlasExperiments/include
 * $ gcc -std=gnu99 -o calc_with_fake_tables calc_with_fake_tables.o -static -L /opt/OpenBlasExperiments/lib -lopenblas_haswellp-r0.2.15 -lopenblas -pthread
 *
 */

int
main(void) {
	static const unsigned ROW_NUM = 16000;
	static const unsigned COL_NUM = 16000;

	float *arr = malloc(ROW_NUM * COL_NUM * sizeof(*arr));

	gen_xy_rowfirst(arr, ROW_NUM, COL_NUM);

	unsigned long long differences = 0;
	for (unsigned row = 0; row < ROW_NUM; ++row) {
		for (unsigned col = 0; col < COL_NUM; ++col) {
			const float f = arr[row * COL_NUM + col];
			unsigned col_val = 0, row_val = 0;
			float2rowcol(f, &row_val, &col_val);

			if (col == col_val && row == row_val)
				continue;

			if (differences++ > 16)
				continue;

			printf("r:%u c:%u f_r:%u f_c:%u f:%e\n", row, col, row_val, col_val, f);
		}
	}
	if (!differences)
		fprintf(stderr, "OK :-)\n");
	else
		fprintf(stderr, "Total number of differences: %llu :-(\n", differences);

	return !!differences;
}
