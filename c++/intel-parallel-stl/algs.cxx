#include <pstl/execution>
#include <pstl/algorithm>

namespace try_int {

struct alignas(32) Arr {
	int arr[];
};

void sort(Arr arr, const ::size_t N) {
	std::sort(std::execution::unseq, &arr.arr[0], &arr.arr[N]);
}

void fill(Arr arr, const ::size_t N) {
	std::fill_n(std::execution::unseq, &arr.arr[0], N, 0);
}

void transform(Arr dst, Arr src, const ::size_t N) {
	std::transform(std::execution::unseq, &src.arr[0], &src.arr[N], &dst.arr[0], [](const int x){ return 2*x; });
}

void transform32(Arr dst, Arr src, const ::size_t N_div8) {
	std::transform(std::execution::unseq, &src.arr[0], &src.arr[N_div8*8], &dst.arr[0], [](const int x){ return 2*x; });
}

}

namespace try_float {

struct alignas(32) Arr {
	float arr[];
};

void sort(Arr arr, const ::size_t N) {
	std::sort(std::execution::unseq, &arr.arr[0], &arr.arr[N]);
}

void fill(Arr arr, const ::size_t N) {
	std::fill_n(std::execution::unseq, &arr.arr[0], N, 0);
}

void transform(Arr dst, Arr src, const ::size_t N) {
	std::transform(std::execution::unseq, &src.arr[0], &src.arr[N], &dst.arr[0], [](const int x){ return 2*x; });
}

void transform32(Arr dst, Arr src, const ::size_t N_div8) {
	std::transform(std::execution::unseq, &src.arr[0], &src.arr[N_div8*8], &dst.arr[0], [](const int x){ return 2*x; });
}

}

namespace try_int_seq {

struct alignas(32) Arr {
	int arr[];
};

void sort(Arr arr, const ::size_t N) {
	std::sort(&arr.arr[0], &arr.arr[N]);
}

void fill(Arr arr, const ::size_t N) {
	std::fill_n(&arr.arr[0], N, 0);
}

void transform(Arr dst, Arr src, const ::size_t N) {
	std::transform(&src.arr[0], &src.arr[N], &dst.arr[0], [](const int x){ return 2*x; });
}

void transform32(Arr dst, Arr src, const ::size_t N_div8) {
	std::transform(&src.arr[0], &src.arr[N_div8*8], &dst.arr[0], [](const int x){ return 2*x; });
}

}

namespace try_float_seq {

struct alignas(32) Arr {
	float arr[];
};

void sort(Arr arr, const ::size_t N) {
	std::sort(&arr.arr[0], &arr.arr[N]);
}

void fill(Arr arr, const ::size_t N) {
	std::fill_n(&arr.arr[0], N, 0);
}

void transform(Arr dst, Arr src, const ::size_t N) {
	std::transform(&src.arr[0], &src.arr[N], &dst.arr[0], [](const int x){ return 2*x; });
}

void transform32(Arr dst, Arr src, const ::size_t N_div8) {
	std::transform(&src.arr[0], &src.arr[N_div8*8], &dst.arr[0], [](const int x){ return 2*x; });
}

}
