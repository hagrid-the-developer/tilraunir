CC = gcc
CXX = g++
AS = as
CFLAGS += -std=gnu11 -march=native -mavx -mavx2 -Ofast# -O0 -ggdb -DDEBUG #-Ofast

CXXFLAGS += -std=gnu++14
ASFLAGS += -march=avx2


COMP.c = $(CC) $(CFLAGS) -o $@ -c $<
COMP.cpp = $(CXX) $(CFLAGS:-std%=) $(CXXFLAGS) -o $@ -c $<
COMP.S = $(AS) -o $@ $<
LINK.o = $(CXX) -o $@ $^

.PHONY: all
all: run_test

.PHONY: clean
clean:
	rm -vf *.o test

.PHONY: run_test
run_test: test
	./test

test: run_movps.o run_gatherd.o test.o
	$(LINK.o)

%.o: %.cpp
	$(COMP.cpp)

%.o: %.c
	$(COMP.c)

%.o: %.S
	$(COMP.S)
