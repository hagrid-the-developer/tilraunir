.PHONE: all
all:
	icc -std=c++17 -Ofast -march=core-avx2 -c algs.cxx
	objdump -d algs.o >algs.S
	icc -std=c++17 -Ofast -march=core-avx2 -qopenmp-simd -c algs.cxx
	objdump -d algs.o >algs-openmp-simd.S

.PHONY: clean
clean:
	rm -vf *.o *.S
