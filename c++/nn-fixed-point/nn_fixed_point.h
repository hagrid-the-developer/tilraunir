#ifndef NN_FIXED_POINT_H_INCLUDED
#define NN_FIXED_POINT_H_INCLUDED

#include <stdint.h>

#define AVX_U8_VEC_LEN 32
#define MIN(X, Y) ((X) <= (Y) ? (X) : (Y))

typedef unsigned char u8;
typedef unsigned uns;

uns cache_block_over_inputs(const u8 *w, const u8 *inputs, const u8 *outputs, const uns w_len, const uns outputs_len);
uns cache_block_over_inputs_floats(const u8 *weights, const u8 *inputs, const uns w_len, const uns outputs_len);

/**
 * We have fully connected TDNN with two time-frames.
 *
 * So inputs-len is 2*w_len.
 * Every weight can be used for two times.
 *
 * We calculate both time-frames in one call.
 */
uint64_t cache_block_over_inputs_tdnn(const u8 *w, const u8 *inputs, const u8 *outputs, const uns w_len, const uns outputs_len);

#endif /* NN_FIXED_POINT_H_INCLUDED */
