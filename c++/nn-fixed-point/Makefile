SHELL := /bin/bash

CC=gcc
CXX=g++
CFLAGS=-sdt=gnu9x -Ofast
CXXFLAGS=-std=gnu++1y

COMPILE.c = $(CC) $(CFLAGS) -o $@ -c $<
COMPILE.cpp = $(CC) $(CFLAGS) $(CXXFLAGS) -o $@ -c $<

nn_fixed_point.o: nn_fixed_point.c nn_fixed_point.h
	$(COMPILE.c)
