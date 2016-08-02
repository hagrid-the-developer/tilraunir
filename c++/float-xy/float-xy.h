#ifndef FLOAT_XY_H_INCLUDED
#define FLOAT_XY_H_INCLUDED

static void float2rowcol(const float f, unsigned *p_row, unsigned *p_col) {
	union {
		float f;
		struct {
			unsigned col : 11;
			unsigned row : 12;
			unsigned exponent_col : 4;
			unsigned exponent_row : 4;
			unsigned sign : 1;
		} x;
	} $;

	$.f = f;
	*p_col = $.x.col | ($.x.exponent_col << 11) | ($.x.sign << 15);
	*p_row = $.x.row | ($.x.exponent_row << 12);

}

static float rowcol2float(const unsigned row, const unsigned col) {
	union {
		float f;
		struct {
			unsigned col : 11;
			unsigned row : 12;
			unsigned exponent_col : 4;
			unsigned exponent_row : 4;
			unsigned sign : 1;
		} x;
	} $;

	$.x.col = col & ((1 << 11) - 1);
	$.x.row = row & ((1 << 12) - 1);
	$.x.exponent_col = (col >> 11) & 0xF;
	$.x.exponent_row = (row >> 12) & 0xF;
	$.x.sign = (col >> 15) & 0x1;

	return $.f;

}
static void
gen_xy_rowfirst(float *dst, unsigned row_len, unsigned col_len)
{
	for (unsigned row = 0; row < row_len; ++row) {
		for (unsigned col = 0; col < col_len; ++col) {
			*dst++ = rowcol2float(row, col);
		}
	}
}

static void
gen_xy_colfirst(float *dst, unsigned row_len, unsigned col_len)
{
	for (unsigned col = 0; col < col_len; ++col) {
		for (unsigned row = 0; row < row_len; ++row) {
			*dst++ = rowcol2float(row, col);
		}
	}
}

#endif // FLOAT_XY_H_INCLUDED
