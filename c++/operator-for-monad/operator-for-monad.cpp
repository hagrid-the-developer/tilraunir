#include <cstdio>
#include <string>


namespace {

class X {
private:
	std::string str_ = "0";

public:
	X() = default;
	X(const int x): str_(std::to_string(x)) {  }
	X(const std::string &str): str_(str) {  }
	X(const X&) = default;
	X(X&&) = default;

	std::string operator*() const noexcept {
		return str_;
	}
	void operator()() const noexcept {
		fprintf(stderr, "X:%s", str_.c_str());
	}
};

const X operator >>=(const X&x, const X&y) {
	x();
        fprintf(stderr, " >>= ");
	y();
        fprintf(stderr, "\n");

	return X("(" + *x + " + " + *y + ")");
}

const X operator >>(const X&x, const X&y) {
	x();
        fprintf(stderr, " >> ");
	y();
        fprintf(stderr, "\n");

	return X("(" + *x + " + " + *y + ")");
}

} /* Anonymous Namespace */

int
main(void) {
	fprintf(stderr, "Operator >>=\n");
	X(0) >>= X(1) >>= X(2) >>= X(3) >>= X(4);
	fprintf(stderr, "Operator >>\n");
	X(0) >> X(1) >> X(2) >> X(3) >> X(4);
	return 0;
}
