all:
	gcc -O2 -std=gnu11 -DNDEBUG -march=native -c rectifier.c
	as rectifier_kernel.S -o rectifier_kernel.o
	g++ -O2 -g -std=gnu++11 -march=native -c test-rectifier.cpp
	g++ -o test-rectifier rectifier.o rectifier_kernel.o test-rectifier.o
