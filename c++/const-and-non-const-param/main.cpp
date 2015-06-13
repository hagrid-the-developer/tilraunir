// g++ -O2 -c main.cpp
// g++ -O2 -c func.cpp // -Ofast, -O3, -O0, -O1
// g++ -o main main.o func.o

void func(const int *x, int *y);

int
main(void) {
	int x = 10;
	func(&x, &x);

	return 0;
}
