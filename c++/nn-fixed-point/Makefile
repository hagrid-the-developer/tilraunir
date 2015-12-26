SHELL := /bin/bash

CC=gcc
CXX=g++
CFLAGS=-std=gnu9x -Ofast -march=native
CXXFLAGS=-std=gnu++1y

COMPILE.c = $(CC) $(CFLAGS) -o $@ -c $<
COMPILE.cpp = $(CC) $(CFLAGS) $(CXXFLAGS) -o $@ -c $<

all:

nn_fixed_point.o: nn_fixed_point.c nn_fixed_point.h
	$(COMPILE.c)

clean:
	rm -vf *.o
