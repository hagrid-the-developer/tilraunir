/*
 * It seems that X is after Parent in Child, x is calculated correctly:
 *
 * $ ./main2
 * Child::clone() -> 0x5558ed337e90
 * Child::clone() -> 0x5558ed3382c0
 * Child::clone() -> 0x5558ed3382e0
 * 0x5558ed337e70, 0x5558ed337e90, 0x5558ed3382c0, 0x5558ed3382e0
 * ch1 -> p3 (0x5558ed337e70 -> 0x5558ed337e70), X: 0x5558ed337e7c
 * Touch parent: 0x5558ed3382c0 0x5558ed3382c8
 * Touch parent: 0x5558ed338300 0x5558ed338308
 * Touch parent: 0x5558ed337e90 0x5558ed337e98
 * Touch x: 0x5558ed337e9c 0x5558ed337e9c
 * Touch child: 0x5558ed337e90 0x5558ed337ea0
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

};

class Child: public X, public Parent {
	int x;

public:
	void touch_child() {
		printf("Touch child: %p %p\n", this, &this->x);
	}

	Child* clone() override {
		auto ch = new Child;
		printf("Child::clone() -> %p\n", ch);
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

	ch2->touch_parent();
	ch2->touch_x();
	ch2->touch_child();
}
