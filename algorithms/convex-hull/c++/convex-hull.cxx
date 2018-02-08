#include <cassert>
#include <iostream>
#include <tuple>
#include <type_traits>
#include <vector>


namespace {

template <typename T>
struct Point : public std::tuple<T, T> {
	constexpr T x() const {
		return std::get<0>(*this);
	}

	constexpr T y() const {
		return std::get<1>(*this);
	}

	Point(const int x, const int y) : std::tuple<int, int>{x, y} {}
};

template <typename T>
std::ostream& operator<<(std::ostream& o, const Point<T>& point) {
	return o << "Point{" << point.x() << ", " << point.y() << "}";
}

template <typename T>
static T cross_product(const Point<T>& a, const Point<T>& b, const Point<T>& c) {
	return (a.x() - c.x())*(b.y() - c.y()) - (a.y() - c.y())*(b.x() - c.x());
}


template <typename T>
struct reversion_wrapper {
	T& _iterable;
};

template <typename T>
reversion_wrapper<T> reverse(T&& iterable) {
	return { iterable };
}

template <typename T>
struct PointType { };

template <typename T>
struct PointType<Point<T>> {
	using type = T;
};

} /* anonymous namespace */

namespace std {

template <typename T>
auto begin(reversion_wrapper<T> w) {
	return rbegin(w._iterable);
}

template <typename T>
auto end(reversion_wrapper<T> w) {
	return rend(w._iterable);
}

} /* namespace std */

namespace {

template <typename Container>
static auto convex_hull(Container points) {
	//using Point = typename std::decay<Container>::type::value_type;
	using Point = Point< typename PointType<typename std::decay<Container>::type::value_type>::type >;

	auto len = points.size();
	if (len < 3)
		return len;

	std::sort(std::begin(points), std::end(points));

	std::vector<Point> lower;
	std::vector<Point> upper;

	for (const auto& x: points) {
		while ((len = lower.size()) >= 2 && cross_product(lower[len - 2], lower[len - 1], x) <= 0) {
			lower.pop_back();
		}
		lower.emplace_back(x);
	}

	for (const auto& x: reverse(points)) {
		while ((len = upper.size()) >= 2 && cross_product(upper[len - 2], upper[len - 1], x) <= 0)
			upper.pop_back();
		upper.emplace_back(x);
	}

	assert(upper.size() + lower.size() > 4);
	return upper.size() + lower.size() - 2;
}

} /* anonymous namespace */

int main() {
	std::vector<Point<int>> points = {
		  {3, 2}
		, {6, 3}
		, {2, 5}
		, {5, 2}
		, {1, 1}
		, {4, 4}
	};
	std::cout << convex_hull(std::move(points)) << std::endl;
}
