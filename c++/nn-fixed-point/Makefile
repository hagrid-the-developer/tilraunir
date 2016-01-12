SHELL := /bin/bash

CC = gcc
CXX = $(CC:%gcc=%g++)

CFLAGS = -std=gnu9x -Ofast -march=native
CXXFLAGS = -std=gnu++1y

COMPILE.c = $(CC) $(CFLAGS) -o $@ -c $<
COMPILE.cpp = $(CXX) $(CFLAGS:-std%=) $(CXXFLAGS) -o $@ -c $<
LINK.o = $(CXX) -o $@ $^

all: test

nn_fixed_point.o: nn_fixed_point.c nn_fixed_point.h
	$(COMPILE.c)

nn_fixed_point_tdnn.o: nn_fixed_point_tdnn.c nn_fixed_point.h
	$(COMPILE.c)

test.o: test.cpp nn_fixed_point.h nn_fixed_point.hpp
	$(COMPILE.cpp)

test: test.o nn_fixed_point.o nn_fixed_point_tdnn.o
	$(LINK.o)

clean:
	rm -f test
	rm -vf *.o
