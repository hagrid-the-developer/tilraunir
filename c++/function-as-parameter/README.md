Tested with clang under macOS:

    $ clang++ -v
    Apple LLVM version 8.0.0 (clang-800.0.38)
    Target: x86_64-apple-darwin15.6.0
    Thread model: posix
    
Command:

    $ clang++ -c xyz.cpp
    
Returns:

    xyz.cpp:9:7: warning: parentheses were disambiguated as a function declaration [-Wvexing-parse]
        int f(std::string());
             ^~~~~~~~~~~~~~~
    xyz.cpp:9:8: note: add a pair of parentheses to declare a variable
            int f(std::string());
                  ^
                  (            )
    xyz.cpp:13:8: warning: parentheses were disambiguated as a function declaration [-Wvexing-parse]
            int g2(std::string (*x)());
                  ^~~~~~~~~~~~~~~~~~~~
    xyz.cpp:13:9: note: add a pair of parentheses to declare a variable
            int g2(std::string (*x)());
                   ^
                   (                 )
    xyz.cpp:15:4: error: cannot initialize a parameter of type 'std::string (*)()' (aka 'basic_string<char, char_traits<char>, allocator<char> > (*)()') with an lvalue of type 'int (std::string)'
          (aka 'int (basic_string<char, char_traits<char>, allocator<char> >)'): different number of parameters (0 vs 1)
            f(func);
              ^~~~
    xyz.cpp:9:20: note: passing argument to parameter here
            int f(std::string());
                              ^
    xyz.cpp:16:4: error: cannot initialize a parameter of type 'std::string *(*)()' (aka 'basic_string<char, char_traits<char>, allocator<char> > *(*)()') with an lvalue of type 'int (std::string)'
          (aka 'int (basic_string<char, char_traits<char>, allocator<char> >)'): different number of parameters (0 vs 1)
            g(func);
              ^~~~
    xyz.cpp:10:21: note: passing argument to parameter here
            int g(std::string*());
                               ^
    xyz.cpp:18:5: error: cannot initialize a parameter of type 'std::string (*)()' (aka 'basic_string<char, char_traits<char>, allocator<char> > (*)()') with an lvalue of type 'int (std::string)'
          (aka 'int (basic_string<char, char_traits<char>, allocator<char> >)'): different number of parameters (0 vs 1)
            f2(func);
               ^~~~
    xyz.cpp:12:21: note: passing argument to parameter 'x' here
            int f2(std::string x());
                               ^
    xyz.cpp:19:5: error: cannot initialize a parameter of type 'std::string (*)()' (aka 'basic_string<char, char_traits<char>, allocator<char> > (*)()') with an lvalue of type 'int (std::string)'
          (aka 'int (basic_string<char, char_traits<char>, allocator<char> >)'): different number of parameters (0 vs 1)
            g2(func);
               ^~~~
    xyz.cpp:13:23: note: passing argument to parameter 'x' here
             int g2(std::string (*x)());
                                  ^
    2 warnings and 4 errors generated.
    
    
So,

    int f(std::string());
    
is function `f` with one argument of type **pointer to function without arguments returning `std::string`** and `f` returns `int` .

    int g(std::string*());
    
if function `g` with one argument of type **pointer to function without arguments that returns pointer to `std::string`** and `g` returns `int`.

    int f2(std::string x());
    
is function `f2` that takes one argument `x` of type **pointer to function without arguments returning `std::string`** `f2` returns `int`.

    int g2(std::string (*x)());

is function `g2` that takes one argument `x` of type **pointer to function without arguments returning `std::string`** and `g2` returns `int`.