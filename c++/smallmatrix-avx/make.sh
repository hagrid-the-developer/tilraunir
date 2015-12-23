#g++ -std=gnu++11 -DFMA -funsafe-math-optimizations -fno-trapping-math -fno-signaling-nans -mavx -march=native -mfma -ffast-math -Ofast -c matrix.cpp
# It seems that inner and inner2 ae faster with -fno-trapping-math -fno-signaling-nans
g++ -std=gnu++11 -DFMA -fno-trapping-math -fno-signaling-nans -mavx -mfma -Ofast -c matrix.cpp
g++ -std=gnu++11 -mavx -Ofast -o matrix matrix.o
