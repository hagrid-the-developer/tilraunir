.PHONY: all
all:
	clang-tidy-5.0 -checks=*-cppcoreguidelines-pro-bounds-pointer-arithmetic -header-filter=.* buffer-overflow.cxx -- -std=c++14
	clang-tidy-5.0 -checks=* -header-filter=.* dangerous-functions.cxx -- -std=c++14
