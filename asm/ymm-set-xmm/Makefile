CC = gcc
CXX = g++
AS = as
CFLAGS += -std=gnu11 -Ofast -march=native -mavx -mavx2

CXXFLAGS += -std=gnu++1y
ASFLAGS += -march=avx2


COMP.c = $(CC) $(CFLAGS) -o $@ -c $<
COMP.cpp = $(CXX) $(CFLAGS:-std%=) $(CXXFLAGS) -o $@ -c $<
COMP.S = $(AS) -o $@ $<
LINK.o = $(CXX) -o $@ $^

all: run_test

clean:
	rm -vf *.o test

.PHONY: run_test
run_test: test
	./test

test: test.o ymm_set_xmm.o
	$(LINK.o)

%.o: %.cpp
	$(COMP.cpp)

%.o: %.c
	$(COMP.c)

%.o: %.S
	$(COMP.S)
