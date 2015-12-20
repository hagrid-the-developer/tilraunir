Experiement with speed of store of data
=======================================

Matrix transposition, traversing matrix in column-wise and row-wise order.
Data are stored in the opposite order to the destination matrix.

Output (Linux, Intel(R) Core(TM) i7-4790S CPU @3.20GHz, 16GB)

    $ /opt/gcc-5.2.0/bin/g++ -std=gnu++1y -mavx2 -Ofast -c store_speed.cpp
    $ /opt/gcc-5.2.0/bin/g++ -std=gnu++1y -Ofast -o store_speed store_speed.o
    $ ./store_speed

    Test col -> row...
            ...time: 17.4934
    Test row -> col...
            ...time: 12.9337
    Test col -> row stream store...
            ...time: 3.15016
    Test row -> col stream store...
            ...time: 2.10906
    Test row -> col stream store2...
            ...time: 1.6595
