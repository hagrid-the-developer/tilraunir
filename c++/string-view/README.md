std::string_view, std::string and std::move(.)
=============

Following example is taken from this [youtube video](https://youtu.be/nnY4e4faNp0?t=48m42s). While it looks awkward and it ceates a lot of temporaries, it probably doesn't introduce dangling pointers, undefined behavior or any other mistake. I compiled `sw.cxx` with `GCC 7.2.0` on Ubuntu 17.04 and tried to run the program in valgrind: it found no error. Then I tried to dissamble the final program and it seems to be OK, at least the one without optimizations.

File `sw.S` was created with commands:

	$ g++ -std=gnu++17 sv.cxx
	$ objdump -dClR ./a.out >sw.S
	
And File `sw.Ofast.S` was created with commands:

	$ g++ -std=gnu++17 -Ofast sv.cxx
	$ objdump -dClR ./a.out >sw.Ofast.S

Analysis of sw.S
-------

In file `sw.S` that looks simpler to read, following happens:
The final string `S::s` is created from `string_view` that points to temporary string that does still exists when final string is being created.

Functions std::move(.) simply return pointer that is their first argument (copy `%rdi` to `%rax` in indirect way):

    0000000000401c14 ...&& std::move<std::__cxx11::basic_string<...>:
    401c14:       55                      push   %rbp
    401c15:       48 89 e5                mov    %rsp,%rbp
    401c18:       48 89 7d f8             mov    %rdi,-0x8(%rbp)
    401c1c:       48 8b 45 f8             mov    -0x8(%rbp),%rax
    401c20:       5d                      pop    %rbp
    401c21:       c3
    

### Function `main()`
    
In function `main()`, `std::string` is created on the stack at address `-0x40(%rbp)`:

    401865:       48 8d 45 c0             lea    -0x40(%rbp),%rax
    ...
    40186e:       48 89 c7                mov    %rax,%rdi
    401871:       e8 f8 03 00 00          callq  401c6e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)>
    
Then `make_s()` is called with two arguments (address `-0x60(%rbp)`, probably returned `S` with RVO, and the string at address `-0x40(%rbp)`):

     401876:       48 8d 45 a0             lea    -0x60(%rbp),%rax
     40187a:       48 8d 55 c0             lea    -0x40(%rbp),%rdx
     40187e:       48 89 d6                mov    %rdx,%rsi
     401881:       48 89 c7                mov    %rax,%rdi
     401884:       e8 7e ff ff ff          callq  401807 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)>
     
Then `operator<<()` is called with the second argument that points to the struct `S` and also to `S::s`.

Finally, destructor of the string at address `-0x40(%rbp)` is called:

    4018b3:       48 8d 45 c0             lea    -0x40(%rbp),%rax
    4018b7:       48 89 c7                mov    %rax,%rdi
    4018ba:       e8 27 02 00 00          callq  401ae6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
    
### Function `make_s(.)`
    
In function `make_s()`:
First `std::move()` over string is called, that is no-op. Then conversional operator to `std::string_view` is called:

     401824:       48 89 c7                mov    %rax,%rdi
     401827:       e8 f6 03 00 00          callq  401c22 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator std::basic_string_view<char, std::char_traits<char> >() const>
     40182c:       48 89 c1                mov    %rax,%rcx
     
Where `%rax` is address returned by conversional operator. Finally, constructor `S::S()` is called. First argument contains pointer to `S`: `main:-0x60(%rbp)` and second argument is value returned by conversional operator.

Constructor `S::S()`:

Allocator is constructed and later destructed:

     401a12:       48 8d 45 ef             lea    -0x11(%rbp),%rax
     401a16:       48 89 c7                mov    %rax,%rdi
     401a19:       e8 f2 fb ff ff          callq  401610 <std::allocator<char>::allocator()@plt>
     ...
     401a43:       48 8d 45 ef             lea    -0x11(%rbp),%rax
     401a47:       48 89 c7                mov    %rax,%rdi
     401a4a:       e8 f1 fb ff ff          callq  401640 <std::allocator<char>::~allocator()@plt>
      
It seems that `-0x11(%rbp)` is a pointer to the allocator.

`std::move()` over `std::string_vew` is called and it is no-op.

### Constructor `S::S(const string_view&)`

Finally, constructor `S::S(const string_view&)` is called. It seems that no pointer to `string_view` is passed to the function, but pointer and length from the `string_view` are passed directly as the first and second arguments. Namely, first argument is pointer to `S`, second is pointer to the first byte of the string and the third argument is the length of the string.

There is another section that seems to be used in case exception is thrown:

    401a4f:       eb 1a                   jmp    401a6b <S::S(std::basic_string_view<char, std::char_traits<char> >)+0x7b>
    401a51:       48 89 c3                mov    %rax,%rbx
    401a54:       48 8d 45 ef             lea    -0x11(%rbp),%rax
    401a58:       48 89 c7                mov    %rax,%rdi
    401a5b:       e8 e0 fb ff ff          callq  401640 <std::allocator<char>::~allocator()@plt>
    401a60:       48 89 d8                mov    %rbx,%rax
    401a63:       48 89 c7                mov    %rax,%rdi
    401a66:       e8 e5 fb ff ff          callq  401650 <_Unwind_Resume@plt>
    401a6b:       48 83 c4 38             add    $0x38,%rsp
    
First `jmp` is used when no exception occured.