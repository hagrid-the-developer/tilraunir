g++ -std=gnu++11 -funsafe-math-optimizations -fno-trapping-math -fno-signaling-nans -mavx -ffast-math -Ofast -c matrix.cpp
g++ -std=gnu++11 -mavx -Ofast -o matrix matrix.o
