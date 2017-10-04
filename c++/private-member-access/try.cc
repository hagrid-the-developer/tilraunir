/*
 * Test whether explicit instantion of the template allows accwessing
 *   of private members of the class:
 *   * https://github.com/insooth/insooth.github.io/blob/master/accessing-private-members.md
 *  It seems to work (tested fopr gcc 4.92 - 7.1.0 and clang 3.8).
 */

class A {
	int m = 999;
	void foo() { }
};

template <int (A::*)>
struct Y {
};

template class Y<&A::m>;
//Y<&A::m>;

int main(void) {
	return 0;
}
