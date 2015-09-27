#include <memory>

class X {
private:
	class Y {
	private:
		std::shared_ptr<X> x_;

		void f() const noexcept {
			x_->val_ = 5;
		}
	public:
		void operator()() const noexcept {
			f();
		}
	};

	int val_;

public:
	Y y_;

	void operator()() const {
		y_();
	}
};

int
main(void) {
	X x;
	x(); // segfault :-)

	return 0;
}
