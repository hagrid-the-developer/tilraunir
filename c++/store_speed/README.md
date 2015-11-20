Experiement with speed of store of data
=======================================

Matrix transposition, traversing matrix in column-wise and row-wise order.
Data are stored in the opposite order to the destination matrix.

Output (Linux, Intel(R) Core(TM) i7-4790S CPU @3.20GHz, 16GB)

    $ /opt/gcc-5.2.0/bin/g++ -std=gnu++1y -c store_speed.cpp
    $ /opt/gcc-5.2.0/bin/g++ -std=gnu++1y -o store_speed store_speed.o
    $ LD_LIBRARY_PATH=/opt/gcc-5.2.0/lib64 ./store_speed 
    Test col -> row...
        ...time: 2.59323
    Test row -> col...
        ...time: 3.78816