std::set<string> with transparent comparator
============================================

It seems that it doesn't create temporary strings to find an item, even if `set.find("...")` is called.

Experiment was done under Ubuntu 17.04 with GCC 7.2.0. File `stc.cxx` was compiled and disassembled:

	$ /opt/gcc-7.2.0/bin/g++ -std=c++17 stc.cxx
	$ objdump -dClR ./a.out >stc.S
	
It seems that there are no **temporary strings** created:

	$ grep -C10 '::[~]basic_string' stc.S
	
	000000000400ec2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>:
	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev():
  	400ec2:       55                      push   %rbp
  	400ec3:       48 89 e5                mov    %rsp,%rbp
  	400ec6:       48 83 ec 10             sub    $0x10,%rsp
    ...
    0000000000401720 <void __gnu_cxx::new_allocator<std::_Rb_tree_node<...>>::destroy<std::__cxx11::basic_string<char, ...>:
    ...
    401737:       e8 86 f7 ff ff          callq  400ec2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  
The call of string destructor is inside `destroy()` method of tree-node allocator. Operator `std::less<>::operator(char const(&)[], const std::string&)` calls `std::string::operator<(const char*, const std::string&)` and doesn't construct temporary string. It seems there are no other methods `std::less::operator()` defined, but `std::less:;operator()` is used on a lot of places.
	
	0000000000401492 ... std::less<void>::operator()<char const (&) [12], std::__cxx11::basic_string<...>:
    401492:       55                      push   %rbp
    401493:       48 89 e5                mov    %rsp,%rbp
    401496:       53                      push   %rbx
    401497:       48 83 ec 28             sub    $0x28,%rsp
    40149b:       48 89 7d e8             mov    %rdi,-0x18(%rbp)
    40149f:       48 89 75 e0             mov    %rsi,-0x20(%rbp)
    4014a3:       48 89 55 d8             mov    %rdx,-0x28(%rbp)
    4014a7:       48 8b 45 d8             mov    -0x28(%rbp),%rax
    4014ab:       48 89 c7                mov    %rax,%rdi
    4014ae:       e8 01 02 00 00          callq  4016b4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const& std::forward<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>(std::remove_reference<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>::type&)>
    4014b3:       48 89 c3                mov    %rax,%rbx
    4014b6:       48 8b 45 e0             mov    -0x20(%rbp),%rax
    4014ba:       48 89 c7                mov    %rax,%rdi
    4014bd:       e8 e4 01 00 00          callq  4016a6 <char const (&std::forward<char const (&) [12]>(std::remove_reference<char const (&) [12]>::type&)) [12]>
    4014c2:       48 89 de                mov    %rbx,%rsi
    4014c5:       48 89 c7                mov    %rax,%rdi
    4014c8:       e8 f5 01 00 00          callq  4016c2 <bool std::operator< <char, std::char_traits<char>, std::allocator<char> >(char const*, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)>
    4014cd:       48 83 c4 28             add    $0x28,%rsp
    4014d1:       5b                      pop    %rbx
    4014d2:       5d                      pop    %rbp
    4014d3:       c3                      retq