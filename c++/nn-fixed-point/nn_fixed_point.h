#ifndef NN_FIXED_POINT_H_INCLUDED
#define NN_FIXED_POINT_H_INCLUDED

#define AVX_U8_VEC_LEN 32
#define MIN(X, Y) ((X) <= (Y) ? (X) : (Y))

typedef unsigned char u8;
typedef unsigned uns;

void cache_block_over_inputs(const u8 *w, const u8 *inputs, const u8 *outputs, const uns w_len);
void cache_block_over_inputs_floats(const u8 *weights, const u8 *inputs, const uns w_len, const uns cache_blocking_len);

#endif /* NN_FIXED_POINT_H_INCLUDED */
