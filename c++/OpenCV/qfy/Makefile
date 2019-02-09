.PHONY: all
all: main

main: main.o

	g++ -std=c++17 -ggdb $^ -o $@ $(shell pkg-config --libs opencv)

main.o: main.cpp
	g++ -std=c++17 -ggdb $(shell pkg-config --cflags opencv) -c $^

.PHONY: clean
clean:
	rm -fv main.o main
