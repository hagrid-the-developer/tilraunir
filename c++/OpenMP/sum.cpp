#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <vector>

namespace $ = std;

namespace {

template <typename T>
$::vector<T> rand_vec(const ::size_t len) {
	$::vector<T> $$(len); 
	//#pragma omp parallel
	for (::size_t i = 0; i < len; ++i) {
		$$[i] = (::rand() % 1024) / 1024.f;
	}
	return $$;
}

float simple_sum(const ::size_t len) {
	$::vector<float> vec = rand_vec<float>(len);
	float sum = 0.f;
	//#pragma omp parallel for reduction(+:sum)
	for (::size_t i = 0; i < len; ++i) {
		sum += vec[i];
	}
	return sum;
}

class Float {
private:
	float _;

public:
	Float(const float $) : _($) {}
	Float() : Float(0.f) {}
	Float(const Float&) = default;
	
	Float& operator=(const Float&) = default;

	friend Float operator+(const Float &x, const Float &y) {
		return Float($::max(x._, y._));
	}

	Float &operator+=(const Float $) {
		_ = $::max(_, $._);

		return *this;
	}

	float operator*() const noexcept {
		return _;
	}
};

Float big_sum(const ::size_t len) {
	$::vector<Float> vec = rand_vec<Float>(len);
	Float sum = 0.f;
	#pragma omp declare reduction(FloatMax: class Float: \
		omp_out=(omp_out + omp_in) ) \
		initializer( omp_priv=Float() )
	#pragma omp parallel for reduction(FloatMax:sum)
	for (::size_t i = 0; i < len; ++i) {
		sum = vec[i];
	}
	return sum;
}

} /* Anonymous Namespace */

int
main(void) {
	{
		const float sum = simple_sum(1'000'000'000);
		$::cerr << "sum: " << sum << ";" << $::endl;
	}
	{
		const Float sum = big_sum(1'000'000'000);
		$::cerr << "sum: " << *sum << ";" << $::endl;
	}
	return 0;
}
