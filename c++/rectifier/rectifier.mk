all:
	gcc -O2 -std=gnu11 -DNDEBUG -march=native -c rectifier.c
	g++ -O2 -std=gnu++11 -march=native -c test-rectifier.cpp
	g++ -o test-rectifier rectifier.o test-rectifier.o
	rm -v rectifier.o test-rectifier.o
