#include <cstdint>
#include <vector>

void scale(std::vector<double>& v, const double& x) {
	for (size_t i = 0; i != v.size(); ++i)
		v[i] /= x;
}

void scale2(std::vector<double>& v, const double x) {
	for (size_t i = 0; i != v.size(); ++i)
		v[i] /= x;
}
