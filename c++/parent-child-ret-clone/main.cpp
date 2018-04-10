/*
 * It seems that Parent and X aren't at the same position in Child,
 * x are at correct positions. And when calling p1->clone() than conversion
 * from Child* to Parent* is done correctly.
 *
 * In main2.cpp it seems that Parent is at the beginning of Child.
 *
 * With gcc 7.2.0:
 *
 * $ g++ -std=c++14 -o main main.cpp
 * $ ./main
 * Child::clone() -> 0x564f054e2ea0
 * Child::clone() -> 0x564f054e32e0
 * Child::clone() -> 0x564f054e3310
 * 0x564f054e2e70, 0x564f054e2ea0, 0x564f054e32f0, 0x564f054e3320
 * ch1 -> p3 (0x564f054e2e70 -> 0x564f054e2e80), X: 0x564f054e2e70
 * Touch parent: 0x564f054e32f0 0x564f054e32f8
 * Touch parent: 0x564f054e3340 0x564f054e3348
 * Child::glone() -> 0x564f054e3360
 * Touch x: 0x564f054e3360 0x564f054e3368
 * x: 0x564f054e3360
 * Touch parent: 0x564f054e2eb0 0x564f054e2eb8
 * Touch x: 0x564f054e2ea0 0x564f054e2ea8
 * Touch child: 0x564f054e2ea0 0x564f054e2ebc
 */

#include <cstdio>

class Parent {
	int x;

public:
	void touch_parent() {
		printf("Touch parent: %p %p\n", this, &this->x);
	}

	virtual Parent* clone() {
		auto p = new Parent;
		printf("Parent::clone() -> %p\n", p);
		return p;
	}
};

class X {
	int x;
public:

	void touch_x() {
		printf("Touch x: %p %p\n", this, &this->x);
	}


	virtual X* glone() {
		auto x = new X;
		printf("X::glone() -> %p\n", x);
		return x;
	}
};

class Child: public X, public Parent {
	int x;

public:
	void touch_child() {
		printf("Touch child: %p %p\n", this, &(this->x));
	}

	Child* clone() override {
		auto ch = new Child;
		printf("Child::clone() -> %p\n", ch);
		return ch;
	}

	Child* glone() override {
		auto ch = new Child;
		printf("Child::glone() -> %p\n", ch);
		return ch;
	}
};

int
main() {
	Child* ch1 = new Child;
	Child* ch2 = ch1->clone();
	Parent* p1 = ch1->clone();
	Parent* p2 = p1->clone();

	printf("%p, %p, %p, %p\n", ch1, ch2, p1, p2);

	Parent* p3 = ch1;
	printf("ch1 -> p3 (%p -> %p), X: %p\n", ch1, p3, (X*)ch1);

	p1->touch_parent();
	(new Parent)->touch_parent();

	X* x = ch1->glone();
	x->touch_x();
	printf("x: %p\n", x);

	ch2->touch_parent();
	ch2->touch_x();
	ch2->touch_child();
}
