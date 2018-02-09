#include <algorithm>
#include <iostream>
#include <limits>
#include <vector>


int solution(const std::vector<std::vector<int>>& A) {
	static constexpr auto NO_COUNTRY = std::numeric_limits<int>::max();

	const auto row_len = A.size();
	if (!row_len)
		return 0;

	const auto minmax = std::minmax_element(std::begin(A), std::end(A), [](const auto& x, const auto& y){ return x.size() < y.size(); });
	if (std::get<0>(minmax)->size() != std::get<1>(minmax)->size())
		throw std::runtime_error("Number of columns differ");

	const auto col_len = std::get<0>(minmax)->size();
	if (!col_len)
		return 0;


	auto cols_buffer = std::vector<int>(2*col_len + 3, NO_COUNTRY);
	
	int* prev_row = &cols_buffer[1];
	int* act_row = &prev_row[col_len + 1];

	auto counter = int{0};
	for (const auto& row: A) {
		std::copy(std::begin(row), std::end(row), act_row);
		for (int i = 0; i < col_len; ++i) {
			++counter;
			const int c = act_row[i];
			// This is more complicated (especially setting *y = NO_COUNTRY)
			//   because I thought that it is possible to travel not only ortogonally
			//   but also olinquely
			for (auto y: {&act_row[i - 1], &prev_row[i] /* &prev_row[i - 1], &prev_row[i + 1] */}) {
				if (*y == c) {
					--counter;
					*y = NO_COUNTRY;
				}
			}
		}
		std::swap(prev_row, act_row);
	}
	return counter;
}

int
main(void) {
	const std::vector<std::vector<int>> map = {
		  {5, 4, 4}
		, {4, 3, 4}
		, {3, 2, 4}
		, {2, 2, 2}
		, {3, 3, 4}
		, {1, 4, 4}
		, {4, 1, 1}
	};
	std::cout << solution(map) << std::endl;
}
