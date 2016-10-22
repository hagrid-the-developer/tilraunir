/*
 * $ g++ -std=gnu++11 quic-sort.cpp -o quic-sort
 * $ ./quic-sort 1000003 2; echo $?
 *
 */

#include <algorithm>
#include <cstdlib>
#include <iostream>

namespace {

static void swap(int arr[], int i, int j) {
	const int temp = arr[i];
	arr[i] = arr[j];
	arr[j] = temp;
}

void quic_sort(int arr[], int b, int e) {

	const int med = arr[(b + e) / 2];
	int i = b, j = e;
	while (i <= j) {
		for (; arr[i] < med; ++i);
		for (; arr[j] > med; --j);

		if (i <= j)
			swap(arr, i++, j--);
	}
	// must have at least two elements
	if (b < j)
		quic_sort(arr, b, j);
	// must have at least two elements
	if (i < e)
		quic_sort(arr, i, e);
}

unsigned test_sort(unsigned len, int mod) {
	int *arr1 = new int[len];
	int *arr2 = new int[len];

	for (unsigned i = 0; i < len; ++i) {
		arr1[i] = arr2[i] = ::rand() % mod;
	}

	std::sort(&arr2[0], &arr2[len], [](int a, int b) -> bool { return a < b; });
	quic_sort(arr1, 0, len - 1);

	unsigned diff_num = 0;
	for (unsigned i = 0; i < len; ++i) {
		diff_num += (arr1[i] != arr2[i]);
	}

	delete[] arr1;
	delete[] arr2;

	return diff_num;
}

} /* Anonymous Namespace */


int main(const int argc, const char *argv[]) {
	const unsigned len = unsigned(atoi(argv[1]));
	const int mod = atoi(argv[2]);

	return test_sort(len, mod) == 0 ? 0 : 1;
}
