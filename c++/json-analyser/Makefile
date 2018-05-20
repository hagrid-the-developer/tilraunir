.PHONY: all
all: main

main: main.o
	g++ -o main -std=c++14 -L/opt/boost-1.67.0/lib -lboost_system -o main main.o

main.o: main.cpp
	g++ -o main -std=c++14 -I/opt/boost-1.67.0/include -c main.cpp -o main.o

clean:
	rm -fv main *.o
