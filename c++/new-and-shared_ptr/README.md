Memory usage in combination with std::shared_ptr, std::weak_ptr and std::make_shared
=================================

It seems that when `std::make_shared` is used, then the object is destructed when the number of shared-counters reaches zero, but memory is freed when both the number of shared-counters and weak-counters reaches zero. Thus, if `std::shared_ptr` is created with `std::make_shared` and `std::weak_ptr`s outlive `std::shared_ptr`s for a long time, then there can be a lot of unallocated and unused memory.

This is tested under Ubuntu 14.10 with GCC 7.2.0:

    $ g++ -std=c++17 -o main main.cxx
    ./main


    BEGIN: 4 with make function
    operator new(24) -> 0x55b48f2d9e70
    Constructor of X
    Creating weak_ptr
    Releasing shared_ptr
    Destructor of X
    Releasing weak_ptr
    operator delete <- 0x55b48f2d9e70
    END
    
    BEGIN: 4 with new
    operator new(4) -> 0x55b48f2d9e70
    Constructor of X
    operator new(24) -> 0x55b48f2d9e90
    Creating weak_ptr
    Releasing shared_ptr
    Destructor of X
    operator delete <- 0x55b48f2d9e70
    Releasing weak_ptr
    operator delete <- 0x55b48f2d9e90
    END
    
    BEGIN: 1024 with make function
    operator new(1040) -> 0x55b48f2d9eb0
    Constructor of X
    Creating weak_ptr
    Releasing shared_ptr
    Destructor of X
    Releasing weak_ptr
    operator delete <- 0x55b48f2d9eb0
    END
    
    BEGIN: 1024 with new
    operator new(1024) -> 0x55b48f2d9eb0
    Constructor of X
    operator new(24) -> 0x55b48f2d9e90
    Creating weak_ptr
    Releasing shared_ptr
    Destructor of X
    operator delete <- 0x55b48f2d9eb0
    Releasing weak_ptr
    operator delete <- 0x55b48f2d9e90
    END
    
    BEGIN: 128000 with make function
    operator new(128016) -> 0x55b48f2da2c0
    Constructor of X
    Creating weak_ptr
    Releasing shared_ptr
    Destructor of X
    Releasing weak_ptr
    operator delete <- 0x55b48f2da2c0
    END
    
    BEGIN: 128000 with new
    operator new(128000) -> 0x55b48f2da2c0
    Constructor of X
    operator new(24) -> 0x55b48f2d9e90
    Creating weak_ptr
    Releasing shared_ptr
    Destructor of X
    operator delete <- 0x55b48f2da2c0
    Releasing weak_ptr
    operator delete <- 0x55b48f2d9e90
    END
    
    BEGIN: 128000000 with make function
    operator new(128000016) -> 0x7f3432ec8010
    Constructor of X
    Creating weak_ptr
    Releasing shared_ptr
    Destructor of X
    Releasing weak_ptr
    operator delete <- 0x7f3432ec8010
    END
    
    BEGIN: 128000000 with new
    operator new(128000000) -> 0x7f3432ec8010
    Constructor of X
    operator new(24) -> 0x55b48f2d9e90
    Creating weak_ptr
    Releasing shared_ptr
    Destructor of X
    operator delete <- 0x7f3432ec8010
    Releasing weak_ptr
    operator delete <- 0x55b48f2d9e90
    END
    
