Present glibc uses the per-thread heap. I was afraid what would happen if memory is allocated in one thread and delete in another thread. In such cases it could happen that memory from a heap of thread A will all remain in memory for a heap of thread B. But when I run the test program then it allocated a majority of arrays with the same address, so it has been working correctly:

    $ g++ -std=c++14 -pthread -o heap-and-multiple-threads heap-and-multiple-threads.cxx
    $ ./heap-and-multiple-threads 2>allocations.log
    $ sort allocations.log | uniq -c
          1 Allocated: 0x7f6204000b10
          1 Allocated: 0x7f6204000d20
          1 Allocated: 0x7f6204000f30
          1 Allocated: 0x7f6204001140
          1 Allocated: 0x7f6204001350
          1 Allocated: 0x7f6204001560
          1 Allocated: 0x7f6204001770
    233526933 Allocated: 0x7f62040019801
    
With tcmalloc:

    # apt install libgoogle-perftools-dev
    $ g++ -std=c++14 -o heap-and-multiple-threads -pthread -ltcmalloc heap-and-multiple-threads.cxx
    $ LD_PRELOAD=/usr/lib ./heap-and-multiple-threads 2>pt-allocations.log
    $ sort pt-allocations.log | uniq -c
      1 Allocated: 0x7f2d20000b10
      1 Allocated: 0x7f2d20000d20
      1 Allocated: 0x7f2d20000f30
      1 Allocated: 0x7f2d20001140
      1 Allocated: 0x7f2d20001350
      1 Allocated: 0x7f2d20001560
      1 Allocated: 0x7f2d20001770
      225340224 Allocated: 0x7f2d20001980
