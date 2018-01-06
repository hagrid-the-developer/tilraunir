Experiments with Parallel STL and AVX support
=============================================

Several STL algorithms with and without `std::execution::unseq` were tested. Results (see `algs*.S`):

* SIMD istructions were used especially for simpler algorithms.
* Similar code is generated regardless `-qopenmp-simd` is used.
* Similar code is also generated even for `std` algorithms without `std::execution::unseq` -- generated SIMD instructions are probably result of optimization, not of the use of Parallel STL.
* Algorithm `std::sort()` for floating points seems to use some SSE instructions, but instruction `vcomiss` works with only one pair of floating-point numbers, so this algorithm is probably still sequential. :-(

References:

* [https://software.intel.com/en-us/get-started-with-pstl](https://software.intel.com/en-us/get-started-with-pstl)
* [https://software.intel.com/en-us/articles/intel-system-studio-avx2-support](https://software.intel.com/en-us/articles/intel-system-studio-avx2-support)
* [http://www.felixcloutier.com/x86/COMISS.html](http://www.felixcloutier.com/x86/COMISS.html) 

