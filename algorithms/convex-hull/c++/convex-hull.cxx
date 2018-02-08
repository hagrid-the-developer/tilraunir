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
struct PointInContainer { };

template <typename T>
struct PointInContainer<Point<T>> {
	using type = Point<T>;
};

template <typename Container>
static auto convex_hull(Container points) {
	//using Point = typename std::decay<Container>::type::value_type;
	using Point = typename PointInContainer<typename std::decay<Container>::type::value_type>::type;

	std::sort(std::begin(points), std::end(points));
	for (auto point: points) {
		std::cerr << point << std::endl;
	}
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
	convex_hull(std::move(points));
}
