#include <algorithm>
#include <boost/filesystem.hpp>
#include <boost/range.hpp>
#include <boost/range/irange.hpp>
#include <cassert>
#include <cstdlib>
#include <iostream>
#include <random>
#include <vector>

// https://en.wikipedia.org/wiki/Comb_sort

/*
 * $ make
 * $ ./main
 * 7692 : 0.499509
 * 5916 : 0.499457
 * 4550 : 0.499591
 * 3499 : 0.499496
 * 2691 : 0.499512
 * 2070 : 0.49975
 * 1592 : 0.499513
 * 1224 : 0.499435
 * 941 : 0.499607
 * 723 : 0.499213
 * 556 : 0.499187
 * 427 : 0.49923
 * 328 : 0.499245
 * 252 : 0.498857
 * 193 : 0.497929
 * 148 : 0.497438
 * 113 : 0.496399
 * 86 : 0.495975
 * 66 : 0.492939
 * 50 : 0.492323
 * 38 : 0.489119
 * 29 : 0.493666
 * 22 : 0.49174
 * 16 : 0.481849
 * 12 : 0.46333
 * 9 : 0.441388
 * 6 : 0.416598
 * 4 : 0.404347
 * 3 : 0.353197
 * 2 : 0.267434
 * 1 : 0.0144867
 */

namespace $ = std;
namespace b = boost;

namespace {
	typedef unsigned uns;

	const ::size_t TESTS_NUM = 256;
	const ::size_t ARRAY_SIZE = 10'000;
	const double SHRINK = 1.3;

	$::default_random_engine rnd;
	$::uniform_int_distribution<uns> dist;

	::size_t calc_unsorted_elements($::vector<uns> &array) {
		::size_t $$ = 0;
		for (auto i: b::irange(::size_t(), array.size() - 1)) {
			$$ += array[i] > array[i + 1];
		}
		return $$;
	}
	void swap_gaps(const ::size_t gap, $::vector<uns> &array) {
		for (auto beg: b::irange(::size_t(), $::min(gap, array.size() - gap))) {
			for (auto f: b::irange(beg, array.size() - gap, gap)) {
				auto g = f + gap;
				if (array[f] > array[g])
					$::swap(array[f], array[g]);
			}
		}
	}
	void sort_gaps($::vector<uns> &array, $::vector<::uint64_t> &unsorted_elements) {
		::size_t gap = array.size(); 
		uns i = 0;
		do {
			gap = $::max(::size_t(1), ::size_t(double(gap) / SHRINK));
			swap_gaps(gap, array);
			unsorted_elements[i++] += calc_unsorted_elements(array);
		} while(gap > 1);
	}
} /* Anonymous Namespace */

int
main(void) {
	$::vector<::uint64_t> statistics(ARRAY_SIZE, 0);
	
	for (auto _: b::irange(::size_t(), TESTS_NUM)) {
		$::vector<uns> array(ARRAY_SIZE);
		$::generate(array.begin(), array.end(), [] { return dist(rnd); });
		sort_gaps(array, statistics);
	}
	::size_t gap = ARRAY_SIZE;
	for (auto _: b::irange(::size_t(), statistics.size())) {
		if (statistics[_] == 0 && $::find_if(statistics.begin() + _, statistics.end(), [](auto $){ return !!$;}) == statistics.end())
			break;
		gap = ::size_t(double(gap) / SHRINK);
		$::cerr << gap << " : " << statistics[_] / double(TESTS_NUM*ARRAY_SIZE) << $::endl;
	}

	return 0;
}
