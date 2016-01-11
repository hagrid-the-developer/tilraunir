#include <algorithm>
#include <iostream>
#include <memory>
#include <random>

#include "nn_fixed_point.hpp"

namespace $ = std;

namespace {

typedef $::default_random_engine RandomGenerator;
typedef $::uniform_int_distribution<u8> Dist;

RandomGenerator rand;
Dist dist(0, 255);

const uns W_LEN = 1000;
const uns OUTPUTS_LEN = 2000;
const uns ALIGNMENT_U8 = 32;

u8 *align(u8 *$) noexcept {
	const ::uintptr_t ALGNMNT = ALIGNMENT_U8 * sizeof(u8);

	::uintptr_t _ = reinterpret_cast<::uintptr_t>($);
	_ = (_ + ALGNMNT - 1) & ~(ALGNMNT - 1);
	return reinterpret_cast<u8*>(_);
}

double getrealtime() noexcept {
	struct timespec ts;
	if (-1 == ::clock_gettime(CLOCK_REALTIME, &ts))
		::abort(); // This could only happen by some mistake in the program.
	return ts.tv_sec + ts.tv_nsec/1000000000.0;
}

typedef uns (*F)(const u8 *w, const u8 *inputs, const u8 *outputs, const uns w_len, const uns outputs_len);

double run_test(F f) noexcept {
	auto unaligned_inputs = $::make_unique<u8[]>(2*W_LEN + ALIGNMENT_U8 - 1);
	auto unaligned_weights = $::make_unique<u8[]>(W_LEN*OUTPUTS_LEN + ALIGNMENT_U8 - 1);
	//auto unaligned_outputs = $::make_unique<u8[]>(OUTPUTS_LEN + ALIGNMENT_U8 - 1);

	u8 *inputs = align(&unaligned_inputs[0]);
	u8 *weights = align(&unaligned_weights[0]);
	//u8 *outputs = align(&unaligned_outputs[0]);

	$::generate(&inputs[0], &inputs[W_LEN], []() -> u8 { dist(rand); });
	$::generate(&weights[0], &weights[W_LEN*OUTPUTS_LEN], []() -> u8 { dist(rand); });
	//$::generate(&outputs[0], &outputs[OUTPUTS_LEN], []() -> u8 { dist(rand); });

	const double time_beg = getrealtime();
	for (uns out_index = 0; out_index < OUTPUTS_LEN; out_index += f(&weights[0], &inputs[0], nullptr, W_LEN, OUTPUTS_LEN));
	const double time_end = getrealtime();

	return time_end - time_beg;
}

} /* anonymous namespace */

int main(void) {
#define DO_TEST(TEST_FUNC) do { \
	$::cerr << #TEST_FUNC << "..." << $::endl; \
	const auto TEST_FUNC ## _time = run_test(TEST_FUNC); \
	$::cout << "Test:" << #TEST_FUNC << "; time:" << TEST_FUNC ## _time << ";" << $::endl; \
} while(0)
	DO_TEST(::cache_block_over_inputs_tdnn);
#undef DO_TEST

	return 0;
}
