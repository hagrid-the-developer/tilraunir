.PHONY: all
all: main

main: main.o

	g++ -std=c++17 -ggdb $^ -o $@ $(shell pkg-config --libs opencv4)

main.o: main.cpp
	g++ -std=c++17 -ggdb $(shell pkg-config --cflags opencv4) -c $^

.PHONY: clean
clean:
	rm -fv main.o main
