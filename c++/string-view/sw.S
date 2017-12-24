
./a.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004015e8 <_init>:
_init():
  4015e8:	48 83 ec 08          	sub    $0x8,%rsp
  4015ec:	48 8b 05 ed 39 00 00 	mov    0x39ed(%rip),%rax        # 404fe0 <__gmon_start__>
  4015f3:	48 85 c0             	test   %rax,%rax
  4015f6:	74 02                	je     4015fa <_init+0x12>
  4015f8:	ff d0                	callq  *%rax
  4015fa:	48 83 c4 08          	add    $0x8,%rsp
  4015fe:	c3                   	retq   

Disassembly of section .plt:

0000000000401600 <std::allocator<char>::allocator()@plt-0x10>:
  401600:	ff 35 ea 39 00 00    	pushq  0x39ea(%rip)        # 404ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401606:	ff 25 ec 39 00 00    	jmpq   *0x39ec(%rip)        # 404ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40160c:	90                   	nop
  40160d:	90                   	nop
  40160e:	90                   	nop
  40160f:	90                   	nop

0000000000401610 <std::allocator<char>::allocator()@plt>:
  401610:	ff 25 ea 39 00 00    	jmpq   *0x39ea(%rip)        # 405000 <std::allocator<char>::allocator()@GLIBCXX_3.4>
  401616:	68 00 00 00 00       	pushq  $0x0
  40161b:	e9 e0 ff ff ff       	jmpq   401600 <_init+0x18>

0000000000401620 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@plt>:
  401620:	ff 25 e2 39 00 00    	jmpq   *0x39e2(%rip)        # 405008 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  401626:	68 01 00 00 00       	pushq  $0x1
  40162b:	e9 d0 ff ff ff       	jmpq   401600 <_init+0x18>

0000000000401630 <std::ostream::operator<<(std::ostream& (*)(std::ostream&))@plt>:
  401630:	ff 25 da 39 00 00    	jmpq   *0x39da(%rip)        # 405010 <std::ostream::operator<<(std::ostream& (*)(std::ostream&))@GLIBCXX_3.4>
  401636:	68 02 00 00 00       	pushq  $0x2
  40163b:	e9 c0 ff ff ff       	jmpq   401600 <_init+0x18>

0000000000401640 <std::allocator<char>::~allocator()@plt>:
  401640:	ff 25 d2 39 00 00    	jmpq   *0x39d2(%rip)        # 405018 <std::allocator<char>::~allocator()@GLIBCXX_3.4>
  401646:	68 03 00 00 00       	pushq  $0x3
  40164b:	e9 b0 ff ff ff       	jmpq   401600 <_init+0x18>

0000000000401650 <_Unwind_Resume@plt>:
  401650:	ff 25 ca 39 00 00    	jmpq   *0x39ca(%rip)        # 405020 <_Unwind_Resume@GCC_3.0>
  401656:	68 04 00 00 00       	pushq  $0x4
  40165b:	e9 a0 ff ff ff       	jmpq   401600 <_init+0x18>

0000000000401660 <std::ios_base::Init::Init()@plt>:
  401660:	ff 25 c2 39 00 00    	jmpq   *0x39c2(%rip)        # 405028 <std::ios_base::Init::Init()@GLIBCXX_3.4>
  401666:	68 05 00 00 00       	pushq  $0x5
  40166b:	e9 90 ff ff ff       	jmpq   401600 <_init+0x18>

0000000000401670 <std::ios_base::Init::~Init()@plt>:
  401670:	ff 25 ba 39 00 00    	jmpq   *0x39ba(%rip)        # 405030 <std::ios_base::Init::~Init()@GLIBCXX_3.4>
  401676:	68 06 00 00 00       	pushq  $0x6
  40167b:	e9 80 ff ff ff       	jmpq   401600 <_init+0x18>

0000000000401680 <__cxa_atexit@plt>:
  401680:	ff 25 b2 39 00 00    	jmpq   *0x39b2(%rip)        # 405038 <__cxa_atexit@GLIBC_2.2.5>
  401686:	68 07 00 00 00       	pushq  $0x7
  40168b:	e9 70 ff ff ff       	jmpq   401600 <_init+0x18>

0000000000401690 <memcpy@plt>:
  401690:	ff 25 aa 39 00 00    	jmpq   *0x39aa(%rip)        # 405040 <memcpy@GLIBC_2.14>
  401696:	68 08 00 00 00       	pushq  $0x8
  40169b:	e9 60 ff ff ff       	jmpq   401600 <_init+0x18>

00000000004016a0 <std::allocator<char>::~allocator()@plt>:
  4016a0:	ff 25 a2 39 00 00    	jmpq   *0x39a2(%rip)        # 405048 <std::allocator<char>::~allocator()@GLIBCXX_3.4>
  4016a6:	68 09 00 00 00       	pushq  $0x9
  4016ab:	e9 50 ff ff ff       	jmpq   401600 <_init+0x18>

00000000004016b0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>:
  4016b0:	ff 25 9a 39 00 00    	jmpq   *0x399a(%rip)        # 405050 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@GLIBCXX_3.4.9>
  4016b6:	68 0a 00 00 00       	pushq  $0xa
  4016bb:	e9 40 ff ff ff       	jmpq   401600 <_init+0x18>

00000000004016c0 <std::allocator<char>::allocator(std::allocator<char> const&)@plt>:
  4016c0:	ff 25 92 39 00 00    	jmpq   *0x3992(%rip)        # 405058 <std::allocator<char>::allocator(std::allocator<char> const&)@GLIBCXX_3.4>
  4016c6:	68 0b 00 00 00       	pushq  $0xb
  4016cb:	e9 30 ff ff ff       	jmpq   401600 <_init+0x18>

00000000004016d0 <std::__throw_logic_error(char const*)@plt>:
  4016d0:	ff 25 8a 39 00 00    	jmpq   *0x398a(%rip)        # 405060 <std::__throw_logic_error(char const*)@GLIBCXX_3.4>
  4016d6:	68 0c 00 00 00       	pushq  $0xc
  4016db:	e9 20 ff ff ff       	jmpq   401600 <_init+0x18>

00000000004016e0 <operator delete(void*)@plt>:
  4016e0:	ff 25 82 39 00 00    	jmpq   *0x3982(%rip)        # 405068 <operator delete(void*)@GLIBCXX_3.4>
  4016e6:	68 0d 00 00 00       	pushq  $0xd
  4016eb:	e9 10 ff ff ff       	jmpq   401600 <_init+0x18>

00000000004016f0 <std::__throw_length_error(char const*)@plt>:
  4016f0:	ff 25 7a 39 00 00    	jmpq   *0x397a(%rip)        # 405070 <std::__throw_length_error(char const*)@GLIBCXX_3.4>
  4016f6:	68 0e 00 00 00       	pushq  $0xe
  4016fb:	e9 00 ff ff ff       	jmpq   401600 <_init+0x18>

0000000000401700 <std::__throw_bad_alloc()@plt>:
  401700:	ff 25 72 39 00 00    	jmpq   *0x3972(%rip)        # 405078 <std::__throw_bad_alloc()@GLIBCXX_3.4>
  401706:	68 0f 00 00 00       	pushq  $0xf
  40170b:	e9 f0 fe ff ff       	jmpq   401600 <_init+0x18>

0000000000401710 <operator new(unsigned long)@plt>:
  401710:	ff 25 6a 39 00 00    	jmpq   *0x396a(%rip)        # 405080 <operator new(unsigned long)@GLIBCXX_3.4>
  401716:	68 10 00 00 00       	pushq  $0x10
  40171b:	e9 e0 fe ff ff       	jmpq   401600 <_init+0x18>

0000000000401720 <__gxx_personality_v0@plt>:
  401720:	ff 25 62 39 00 00    	jmpq   *0x3962(%rip)        # 405088 <__gxx_personality_v0@CXXABI_1.3>
  401726:	68 11 00 00 00       	pushq  $0x11
  40172b:	e9 d0 fe ff ff       	jmpq   401600 <_init+0x18>

Disassembly of section .text:

0000000000401730 <_start>:
_start():
  401730:	31 ed                	xor    %ebp,%ebp
  401732:	49 89 d1             	mov    %rdx,%r9
  401735:	5e                   	pop    %rsi
  401736:	48 89 e2             	mov    %rsp,%rdx
  401739:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40173d:	50                   	push   %rax
  40173e:	54                   	push   %rsp
  40173f:	49 c7 c0 90 24 40 00 	mov    $0x402490,%r8
  401746:	48 c7 c1 20 24 40 00 	mov    $0x402420,%rcx
  40174d:	48 c7 c7 4c 18 40 00 	mov    $0x40184c,%rdi
  401754:	ff 15 7e 38 00 00    	callq  *0x387e(%rip)        # 404fd8 <__libc_start_main@GLIBC_2.2.5>
  40175a:	f4                   	hlt    
  40175b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401760 <deregister_tm_clones>:
deregister_tm_clones():
  401760:	55                   	push   %rbp
  401761:	b8 a0 50 40 00       	mov    $0x4050a0,%eax
  401766:	48 3d a0 50 40 00    	cmp    $0x4050a0,%rax
  40176c:	48 89 e5             	mov    %rsp,%rbp
  40176f:	74 17                	je     401788 <deregister_tm_clones+0x28>
  401771:	b8 00 00 00 00       	mov    $0x0,%eax
  401776:	48 85 c0             	test   %rax,%rax
  401779:	74 0d                	je     401788 <deregister_tm_clones+0x28>
  40177b:	5d                   	pop    %rbp
  40177c:	bf a0 50 40 00       	mov    $0x4050a0,%edi
  401781:	ff e0                	jmpq   *%rax
  401783:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401788:	5d                   	pop    %rbp
  401789:	c3                   	retq   
  40178a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401790 <register_tm_clones>:
register_tm_clones():
  401790:	be a0 50 40 00       	mov    $0x4050a0,%esi
  401795:	55                   	push   %rbp
  401796:	48 81 ee a0 50 40 00 	sub    $0x4050a0,%rsi
  40179d:	48 89 e5             	mov    %rsp,%rbp
  4017a0:	48 c1 fe 03          	sar    $0x3,%rsi
  4017a4:	48 89 f0             	mov    %rsi,%rax
  4017a7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4017ab:	48 01 c6             	add    %rax,%rsi
  4017ae:	48 d1 fe             	sar    %rsi
  4017b1:	74 15                	je     4017c8 <register_tm_clones+0x38>
  4017b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4017b8:	48 85 c0             	test   %rax,%rax
  4017bb:	74 0b                	je     4017c8 <register_tm_clones+0x38>
  4017bd:	5d                   	pop    %rbp
  4017be:	bf a0 50 40 00       	mov    $0x4050a0,%edi
  4017c3:	ff e0                	jmpq   *%rax
  4017c5:	0f 1f 00             	nopl   (%rax)
  4017c8:	5d                   	pop    %rbp
  4017c9:	c3                   	retq   
  4017ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004017d0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  4017d0:	80 3d c9 38 00 00 00 	cmpb   $0x0,0x38c9(%rip)        # 4050a0 <__bss_start>
  4017d7:	75 17                	jne    4017f0 <__do_global_dtors_aux+0x20>
  4017d9:	55                   	push   %rbp
  4017da:	48 89 e5             	mov    %rsp,%rbp
  4017dd:	e8 7e ff ff ff       	callq  401760 <deregister_tm_clones>
  4017e2:	c6 05 b7 38 00 00 01 	movb   $0x1,0x38b7(%rip)        # 4050a0 <__bss_start>
  4017e9:	5d                   	pop    %rbp
  4017ea:	c3                   	retq   
  4017eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4017f0:	f3 c3                	repz retq 
  4017f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4017f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4017fd:	00 00 00 

0000000000401800 <frame_dummy>:
frame_dummy():
  401800:	55                   	push   %rbp
  401801:	48 89 e5             	mov    %rsp,%rbp
  401804:	5d                   	pop    %rbp
  401805:	eb 89                	jmp    401790 <register_tm_clones>

0000000000401807 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)>:
_Z6make_sNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE():
  401807:	55                   	push   %rbp
  401808:	48 89 e5             	mov    %rsp,%rbp
  40180b:	53                   	push   %rbx
  40180c:	48 83 ec 18          	sub    $0x18,%rsp
  401810:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401814:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401818:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40181c:	48 89 c7             	mov    %rax,%rdi
  40181f:	e8 f0 03 00 00       	callq  401c14 <std::remove_reference<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>::type&& std::move<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)>
  401824:	48 89 c7             	mov    %rax,%rdi
  401827:	e8 f6 03 00 00       	callq  401c22 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator std::basic_string_view<char, std::char_traits<char> >() const>
  40182c:	48 89 c1             	mov    %rax,%rcx
  40182f:	48 89 d3             	mov    %rdx,%rbx
  401832:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401836:	48 89 ce             	mov    %rcx,%rsi
  401839:	48 89 c7             	mov    %rax,%rdi
  40183c:	e8 af 01 00 00       	callq  4019f0 <S::S(std::basic_string_view<char, std::char_traits<char> >)>
  401841:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401845:	48 83 c4 18          	add    $0x18,%rsp
  401849:	5b                   	pop    %rbx
  40184a:	5d                   	pop    %rbp
  40184b:	c3                   	retq   

000000000040184c <main>:
main():
  40184c:	55                   	push   %rbp
  40184d:	48 89 e5             	mov    %rsp,%rbp
  401850:	53                   	push   %rbx
  401851:	48 83 ec 58          	sub    $0x58,%rsp
  401855:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  401859:	48 89 c7             	mov    %rax,%rdi
  40185c:	e8 af fd ff ff       	callq  401610 <std::allocator<char>::allocator()@plt>
  401861:	48 8d 55 ef          	lea    -0x11(%rbp),%rdx
  401865:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401869:	be a8 24 40 00       	mov    $0x4024a8,%esi
  40186e:	48 89 c7             	mov    %rax,%rdi
  401871:	e8 f8 03 00 00       	callq  401c6e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)>
  401876:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40187a:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  40187e:	48 89 d6             	mov    %rdx,%rsi
  401881:	48 89 c7             	mov    %rax,%rdi
  401884:	e8 7e ff ff ff       	callq  401807 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)>
  401889:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40188d:	48 89 c6             	mov    %rax,%rsi
  401890:	bf c0 50 40 00       	mov    $0x4050c0,%edi
  401895:	e8 6b 04 00 00       	callq  401d05 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)>
  40189a:	be 20 16 40 00       	mov    $0x401620,%esi
  40189f:	48 89 c7             	mov    %rax,%rdi
  4018a2:	e8 89 fd ff ff       	callq  401630 <std::ostream::operator<<(std::ostream& (*)(std::ostream&))@plt>
  4018a7:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4018ab:	48 89 c7             	mov    %rax,%rdi
  4018ae:	e8 bf 01 00 00       	callq  401a72 <S::~S()>
  4018b3:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4018b7:	48 89 c7             	mov    %rax,%rdi
  4018ba:	e8 27 02 00 00       	callq  401ae6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  4018bf:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  4018c3:	48 89 c7             	mov    %rax,%rdi
  4018c6:	e8 75 fd ff ff       	callq  401640 <std::allocator<char>::~allocator()@plt>
  4018cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4018d0:	eb 3c                	jmp    40190e <main+0xc2>
  4018d2:	48 89 c3             	mov    %rax,%rbx
  4018d5:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4018d9:	48 89 c7             	mov    %rax,%rdi
  4018dc:	e8 91 01 00 00       	callq  401a72 <S::~S()>
  4018e1:	eb 03                	jmp    4018e6 <main+0x9a>
  4018e3:	48 89 c3             	mov    %rax,%rbx
  4018e6:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4018ea:	48 89 c7             	mov    %rax,%rdi
  4018ed:	e8 f4 01 00 00       	callq  401ae6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  4018f2:	eb 03                	jmp    4018f7 <main+0xab>
  4018f4:	48 89 c3             	mov    %rax,%rbx
  4018f7:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  4018fb:	48 89 c7             	mov    %rax,%rdi
  4018fe:	e8 3d fd ff ff       	callq  401640 <std::allocator<char>::~allocator()@plt>
  401903:	48 89 d8             	mov    %rbx,%rax
  401906:	48 89 c7             	mov    %rax,%rdi
  401909:	e8 42 fd ff ff       	callq  401650 <_Unwind_Resume@plt>
  40190e:	48 83 c4 58          	add    $0x58,%rsp
  401912:	5b                   	pop    %rbx
  401913:	5d                   	pop    %rbp
  401914:	c3                   	retq   

0000000000401915 <__static_initialization_and_destruction_0(int, int)>:
_Z41__static_initialization_and_destruction_0ii():
  401915:	55                   	push   %rbp
  401916:	48 89 e5             	mov    %rsp,%rbp
  401919:	48 83 ec 10          	sub    $0x10,%rsp
  40191d:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401920:	89 75 f8             	mov    %esi,-0x8(%rbp)
  401923:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  401927:	75 27                	jne    401950 <__static_initialization_and_destruction_0(int, int)+0x3b>
  401929:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  401930:	75 1e                	jne    401950 <__static_initialization_and_destruction_0(int, int)+0x3b>
  401932:	bf a1 50 40 00       	mov    $0x4050a1,%edi
  401937:	e8 24 fd ff ff       	callq  401660 <std::ios_base::Init::Init()@plt>
  40193c:	ba 98 50 40 00       	mov    $0x405098,%edx
  401941:	be a1 50 40 00       	mov    $0x4050a1,%esi
  401946:	bf 70 16 40 00       	mov    $0x401670,%edi
  40194b:	e8 30 fd ff ff       	callq  401680 <__cxa_atexit@plt>
  401950:	90                   	nop
  401951:	c9                   	leaveq 
  401952:	c3                   	retq   

0000000000401953 <_GLOBAL__sub_I__Z6make_sNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
_GLOBAL__sub_I__Z6make_sNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE():
  401953:	55                   	push   %rbp
  401954:	48 89 e5             	mov    %rsp,%rbp
  401957:	be ff ff 00 00       	mov    $0xffff,%esi
  40195c:	bf 01 00 00 00       	mov    $0x1,%edi
  401961:	e8 af ff ff ff       	callq  401915 <__static_initialization_and_destruction_0(int, int)>
  401966:	5d                   	pop    %rbp
  401967:	c3                   	retq   

0000000000401968 <std::char_traits<char>::assign(char&, char const&)>:
_ZNSt11char_traitsIcE6assignERcRKc():
  401968:	55                   	push   %rbp
  401969:	48 89 e5             	mov    %rsp,%rbp
  40196c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401970:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401974:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401978:	0f b6 10             	movzbl (%rax),%edx
  40197b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40197f:	88 10                	mov    %dl,(%rax)
  401981:	90                   	nop
  401982:	5d                   	pop    %rbp
  401983:	c3                   	retq   

0000000000401984 <std::char_traits<char>::length(char const*)>:
_ZNSt11char_traitsIcE6lengthEPKc():
  401984:	55                   	push   %rbp
  401985:	48 89 e5             	mov    %rsp,%rbp
  401988:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40198c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401990:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401997:	48 89 c2             	mov    %rax,%rdx
  40199a:	b8 00 00 00 00       	mov    $0x0,%eax
  40199f:	48 89 d7             	mov    %rdx,%rdi
  4019a2:	f2 ae                	repnz scas %es:(%rdi),%al
  4019a4:	48 89 c8             	mov    %rcx,%rax
  4019a7:	48 f7 d0             	not    %rax
  4019aa:	48 83 e8 01          	sub    $0x1,%rax
  4019ae:	5d                   	pop    %rbp
  4019af:	c3                   	retq   

00000000004019b0 <std::char_traits<char>::copy(char*, char const*, unsigned long)>:
_ZNSt11char_traitsIcE4copyEPcPKcm():
  4019b0:	55                   	push   %rbp
  4019b1:	48 89 e5             	mov    %rsp,%rbp
  4019b4:	48 83 ec 20          	sub    $0x20,%rsp
  4019b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4019bc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4019c0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4019c4:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  4019c9:	75 06                	jne    4019d1 <std::char_traits<char>::copy(char*, char const*, unsigned long)+0x21>
  4019cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019cf:	eb 1d                	jmp    4019ee <std::char_traits<char>::copy(char*, char const*, unsigned long)+0x3e>
  4019d1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4019d5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4019d9:	48 89 d1             	mov    %rdx,%rcx
  4019dc:	48 89 c6             	mov    %rax,%rsi
  4019df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4019e3:	48 89 c2             	mov    %rax,%rdx
  4019e6:	48 89 cf             	mov    %rcx,%rdi
  4019e9:	e8 a2 fc ff ff       	callq  401690 <memcpy@plt>
  4019ee:	c9                   	leaveq 
  4019ef:	c3                   	retq   

00000000004019f0 <S::S(std::basic_string_view<char, std::char_traits<char> >)>:
_ZN1SC2ESt17basic_string_viewIcSt11char_traitsIcEE():
  4019f0:	55                   	push   %rbp
  4019f1:	48 89 e5             	mov    %rsp,%rbp
  4019f4:	53                   	push   %rbx
  4019f5:	48 83 ec 38          	sub    $0x38,%rsp
  4019f9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4019fd:	48 89 f0             	mov    %rsi,%rax
  401a00:	48 89 d1             	mov    %rdx,%rcx
  401a03:	48 89 ca             	mov    %rcx,%rdx
  401a06:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401a0a:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  401a0e:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
  401a12:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  401a16:	48 89 c7             	mov    %rax,%rdi
  401a19:	e8 f2 fb ff ff       	callq  401610 <std::allocator<char>::allocator()@plt>
  401a1e:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401a22:	48 89 c7             	mov    %rax,%rdi
  401a25:	e8 7d 01 00 00       	callq  401ba7 <std::remove_reference<std::basic_string_view<char, std::char_traits<char> >&>::type&& std::move<std::basic_string_view<char, std::char_traits<char> >&>(std::basic_string_view<char, std::char_traits<char> >&)>
  401a2a:	48 8d 4d ef          	lea    -0x11(%rbp),%rcx
  401a2e:	48 8b 10             	mov    (%rax),%rdx
  401a31:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a35:	48 89 d6             	mov    %rdx,%rsi
  401a38:	48 89 c2             	mov    %rax,%rdx
  401a3b:	48 89 df             	mov    %rbx,%rdi
  401a3e:	e8 73 01 00 00       	callq  401bb6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::basic_string_view<char, std::char_traits<char> >, std::allocator<char> const&)>
  401a43:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  401a47:	48 89 c7             	mov    %rax,%rdi
  401a4a:	e8 f1 fb ff ff       	callq  401640 <std::allocator<char>::~allocator()@plt>
  401a4f:	eb 1a                	jmp    401a6b <S::S(std::basic_string_view<char, std::char_traits<char> >)+0x7b>
  401a51:	48 89 c3             	mov    %rax,%rbx
  401a54:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
  401a58:	48 89 c7             	mov    %rax,%rdi
  401a5b:	e8 e0 fb ff ff       	callq  401640 <std::allocator<char>::~allocator()@plt>
  401a60:	48 89 d8             	mov    %rbx,%rax
  401a63:	48 89 c7             	mov    %rax,%rdi
  401a66:	e8 e5 fb ff ff       	callq  401650 <_Unwind_Resume@plt>
  401a6b:	48 83 c4 38          	add    $0x38,%rsp
  401a6f:	5b                   	pop    %rbx
  401a70:	5d                   	pop    %rbp
  401a71:	c3                   	retq   

0000000000401a72 <S::~S()>:
_ZN1SD2Ev():
  401a72:	55                   	push   %rbp
  401a73:	48 89 e5             	mov    %rsp,%rbp
  401a76:	48 83 ec 10          	sub    $0x10,%rsp
  401a7a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401a7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a82:	48 89 c7             	mov    %rax,%rdi
  401a85:	e8 5c 00 00 00       	callq  401ae6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  401a8a:	90                   	nop
  401a8b:	c9                   	leaveq 
  401a8c:	c3                   	retq   
  401a8d:	90                   	nop

0000000000401a8e <std::basic_string_view<char, std::char_traits<char> >::data() const>:
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv():
  401a8e:	55                   	push   %rbp
  401a8f:	48 89 e5             	mov    %rsp,%rbp
  401a92:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401a96:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a9a:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a9e:	5d                   	pop    %rbp
  401a9f:	c3                   	retq   

0000000000401aa0 <std::basic_string_view<char, std::char_traits<char> >::basic_string_view(char const*, unsigned long)>:
_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm():
  401aa0:	55                   	push   %rbp
  401aa1:	48 89 e5             	mov    %rsp,%rbp
  401aa4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401aa8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401aac:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401ab0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ab4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401ab8:	48 89 10             	mov    %rdx,(%rax)
  401abb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401abf:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401ac3:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401ac7:	90                   	nop
  401ac8:	5d                   	pop    %rbp
  401ac9:	c3                   	retq   

0000000000401aca <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev():
  401aca:	55                   	push   %rbp
  401acb:	48 89 e5             	mov    %rsp,%rbp
  401ace:	48 83 ec 10          	sub    $0x10,%rsp
  401ad2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401ad6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ada:	48 89 c7             	mov    %rax,%rdi
  401add:	e8 be fb ff ff       	callq  4016a0 <std::allocator<char>::~allocator()@plt>
  401ae2:	90                   	nop
  401ae3:	c9                   	leaveq 
  401ae4:	c3                   	retq   
  401ae5:	90                   	nop

0000000000401ae6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev():
  401ae6:	55                   	push   %rbp
  401ae7:	48 89 e5             	mov    %rsp,%rbp
  401aea:	48 83 ec 10          	sub    $0x10,%rsp
  401aee:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401af2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401af6:	48 89 c7             	mov    %rax,%rdi
  401af9:	e8 62 02 00 00       	callq  401d60 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()>
  401afe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b02:	48 89 c7             	mov    %rax,%rdi
  401b05:	e8 c0 ff ff ff       	callq  401aca <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()>
  401b0a:	90                   	nop
  401b0b:	c9                   	leaveq 
  401b0c:	c3                   	retq   
  401b0d:	90                   	nop

0000000000401b0e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::data() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv():
  401b0e:	55                   	push   %rbp
  401b0f:	48 89 e5             	mov    %rsp,%rbp
  401b12:	48 83 ec 10          	sub    $0x10,%rsp
  401b16:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b1e:	48 89 c7             	mov    %rax,%rdi
  401b21:	e8 28 02 00 00       	callq  401d4e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  401b26:	c9                   	leaveq 
  401b27:	c3                   	retq   

0000000000401b28 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, unsigned long, std::allocator<char> const&)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_():
  401b28:	55                   	push   %rbp
  401b29:	48 89 e5             	mov    %rsp,%rbp
  401b2c:	53                   	push   %rbx
  401b2d:	48 83 ec 28          	sub    $0x28,%rsp
  401b31:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401b35:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401b39:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401b3d:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  401b41:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  401b45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401b49:	48 89 c7             	mov    %rax,%rdi
  401b4c:	e8 49 02 00 00       	callq  401d9a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data()>
  401b51:	48 89 c1             	mov    %rax,%rcx
  401b54:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401b58:	48 89 c2             	mov    %rax,%rdx
  401b5b:	48 89 ce             	mov    %rcx,%rsi
  401b5e:	48 89 df             	mov    %rbx,%rdi
  401b61:	e8 52 02 00 00       	callq  401db8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::_Alloc_hider(char*, std::allocator<char> const&)>
  401b66:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401b6a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b6e:	48 01 c2             	add    %rax,%rdx
  401b71:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401b75:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401b79:	48 89 ce             	mov    %rcx,%rsi
  401b7c:	48 89 c7             	mov    %rax,%rdi
  401b7f:	e8 6a 02 00 00       	callq  401dee <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*)>
  401b84:	eb 1a                	jmp    401ba0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, unsigned long, std::allocator<char> const&)+0x78>
  401b86:	48 89 c3             	mov    %rax,%rbx
  401b89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401b8d:	48 89 c7             	mov    %rax,%rdi
  401b90:	e8 35 ff ff ff       	callq  401aca <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()>
  401b95:	48 89 d8             	mov    %rbx,%rax
  401b98:	48 89 c7             	mov    %rax,%rdi
  401b9b:	e8 b0 fa ff ff       	callq  401650 <_Unwind_Resume@plt>
  401ba0:	48 83 c4 28          	add    $0x28,%rsp
  401ba4:	5b                   	pop    %rbx
  401ba5:	5d                   	pop    %rbp
  401ba6:	c3                   	retq   

0000000000401ba7 <std::remove_reference<std::basic_string_view<char, std::char_traits<char> >&>::type&& std::move<std::basic_string_view<char, std::char_traits<char> >&>(std::basic_string_view<char, std::char_traits<char> >&)>:
_ZSt4moveIRSt17basic_string_viewIcSt11char_traitsIcEEEONSt16remove_referenceIT_E4typeEOS6_():
  401ba7:	55                   	push   %rbp
  401ba8:	48 89 e5             	mov    %rsp,%rbp
  401bab:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401baf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401bb3:	5d                   	pop    %rbp
  401bb4:	c3                   	retq   
  401bb5:	90                   	nop

0000000000401bb6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::basic_string_view<char, std::char_traits<char> >, std::allocator<char> const&)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ESt17basic_string_viewIcS2_ERKS3_():
  401bb6:	55                   	push   %rbp
  401bb7:	48 89 e5             	mov    %rsp,%rbp
  401bba:	53                   	push   %rbx
  401bbb:	48 83 ec 28          	sub    $0x28,%rsp
  401bbf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401bc3:	48 89 f0             	mov    %rsi,%rax
  401bc6:	48 89 d6             	mov    %rdx,%rsi
  401bc9:	48 89 f2             	mov    %rsi,%rdx
  401bcc:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401bd0:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401bd4:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  401bd8:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401bdc:	48 89 c7             	mov    %rax,%rdi
  401bdf:	e8 54 02 00 00       	callq  401e38 <std::basic_string_view<char, std::char_traits<char> >::size() const>
  401be4:	48 89 c3             	mov    %rax,%rbx
  401be7:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401beb:	48 89 c7             	mov    %rax,%rdi
  401bee:	e8 9b fe ff ff       	callq  401a8e <std::basic_string_view<char, std::char_traits<char> >::data() const>
  401bf3:	48 89 c6             	mov    %rax,%rsi
  401bf6:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401bfa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401bfe:	48 89 d1             	mov    %rdx,%rcx
  401c01:	48 89 da             	mov    %rbx,%rdx
  401c04:	48 89 c7             	mov    %rax,%rdi
  401c07:	e8 1c ff ff ff       	callq  401b28 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, unsigned long, std::allocator<char> const&)>
  401c0c:	90                   	nop
  401c0d:	48 83 c4 28          	add    $0x28,%rsp
  401c11:	5b                   	pop    %rbx
  401c12:	5d                   	pop    %rbp
  401c13:	c3                   	retq   

0000000000401c14 <std::remove_reference<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>::type&& std::move<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&>(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)>:
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_():
  401c14:	55                   	push   %rbp
  401c15:	48 89 e5             	mov    %rsp,%rbp
  401c18:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401c1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c20:	5d                   	pop    %rbp
  401c21:	c3                   	retq   

0000000000401c22 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator std::basic_string_view<char, std::char_traits<char> >() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEcvSt17basic_string_viewIcS2_EEv():
  401c22:	55                   	push   %rbp
  401c23:	48 89 e5             	mov    %rsp,%rbp
  401c26:	53                   	push   %rbx
  401c27:	48 83 ec 28          	sub    $0x28,%rsp
  401c2b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401c2f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401c33:	48 89 c7             	mov    %rax,%rdi
  401c36:	e8 eb 01 00 00       	callq  401e26 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::size() const>
  401c3b:	48 89 c3             	mov    %rax,%rbx
  401c3e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401c42:	48 89 c7             	mov    %rax,%rdi
  401c45:	e8 c4 fe ff ff       	callq  401b0e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::data() const>
  401c4a:	48 89 c1             	mov    %rax,%rcx
  401c4d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401c51:	48 89 da             	mov    %rbx,%rdx
  401c54:	48 89 ce             	mov    %rcx,%rsi
  401c57:	48 89 c7             	mov    %rax,%rdi
  401c5a:	e8 41 fe ff ff       	callq  401aa0 <std::basic_string_view<char, std::char_traits<char> >::basic_string_view(char const*, unsigned long)>
  401c5f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401c63:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401c67:	48 83 c4 28          	add    $0x28,%rsp
  401c6b:	5b                   	pop    %rbx
  401c6c:	5d                   	pop    %rbp
  401c6d:	c3                   	retq   

0000000000401c6e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_():
  401c6e:	55                   	push   %rbp
  401c6f:	48 89 e5             	mov    %rsp,%rbp
  401c72:	53                   	push   %rbx
  401c73:	48 83 ec 28          	sub    $0x28,%rsp
  401c77:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401c7b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401c7f:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401c83:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  401c87:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c8b:	48 89 c7             	mov    %rax,%rdi
  401c8e:	e8 07 01 00 00       	callq  401d9a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data()>
  401c93:	48 89 c1             	mov    %rax,%rcx
  401c96:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401c9a:	48 89 c2             	mov    %rax,%rdx
  401c9d:	48 89 ce             	mov    %rcx,%rsi
  401ca0:	48 89 df             	mov    %rbx,%rdi
  401ca3:	e8 10 01 00 00       	callq  401db8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::_Alloc_hider(char*, std::allocator<char> const&)>
  401ca8:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  401cad:	74 18                	je     401cc7 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)+0x59>
  401caf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401cb3:	48 89 c7             	mov    %rax,%rdi
  401cb6:	e8 c9 fc ff ff       	callq  401984 <std::char_traits<char>::length(char const*)>
  401cbb:	48 89 c2             	mov    %rax,%rdx
  401cbe:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401cc2:	48 01 d0             	add    %rdx,%rax
  401cc5:	eb 08                	jmp    401ccf <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)+0x61>
  401cc7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401ccb:	48 83 e8 01          	sub    $0x1,%rax
  401ccf:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  401cd3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  401cd7:	48 89 c2             	mov    %rax,%rdx
  401cda:	48 89 cf             	mov    %rcx,%rdi
  401cdd:	e8 0c 01 00 00       	callq  401dee <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*)>
  401ce2:	eb 1a                	jmp    401cfe <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)+0x90>
  401ce4:	48 89 c3             	mov    %rax,%rbx
  401ce7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401ceb:	48 89 c7             	mov    %rax,%rdi
  401cee:	e8 d7 fd ff ff       	callq  401aca <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()>
  401cf3:	48 89 d8             	mov    %rbx,%rax
  401cf6:	48 89 c7             	mov    %rax,%rdi
  401cf9:	e8 52 f9 ff ff       	callq  401650 <_Unwind_Resume@plt>
  401cfe:	48 83 c4 28          	add    $0x28,%rsp
  401d02:	5b                   	pop    %rbx
  401d03:	5d                   	pop    %rbp
  401d04:	c3                   	retq   

0000000000401d05 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)>:
_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE():
  401d05:	55                   	push   %rbp
  401d06:	48 89 e5             	mov    %rsp,%rbp
  401d09:	53                   	push   %rbx
  401d0a:	48 83 ec 18          	sub    $0x18,%rsp
  401d0e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401d12:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401d16:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401d1a:	48 89 c7             	mov    %rax,%rdi
  401d1d:	e8 04 01 00 00       	callq  401e26 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::size() const>
  401d22:	48 89 c3             	mov    %rax,%rbx
  401d25:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401d29:	48 89 c7             	mov    %rax,%rdi
  401d2c:	e8 dd fd ff ff       	callq  401b0e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::data() const>
  401d31:	48 89 c1             	mov    %rax,%rcx
  401d34:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401d38:	48 89 da             	mov    %rbx,%rdx
  401d3b:	48 89 ce             	mov    %rcx,%rsi
  401d3e:	48 89 c7             	mov    %rax,%rdi
  401d41:	e8 6a f9 ff ff       	callq  4016b0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
  401d46:	48 83 c4 18          	add    $0x18,%rsp
  401d4a:	5b                   	pop    %rbx
  401d4b:	5d                   	pop    %rbp
  401d4c:	c3                   	retq   
  401d4d:	90                   	nop

0000000000401d4e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv():
  401d4e:	55                   	push   %rbp
  401d4f:	48 89 e5             	mov    %rsp,%rbp
  401d52:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401d56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d5a:	48 8b 00             	mov    (%rax),%rax
  401d5d:	5d                   	pop    %rbp
  401d5e:	c3                   	retq   
  401d5f:	90                   	nop

0000000000401d60 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv():
  401d60:	55                   	push   %rbp
  401d61:	48 89 e5             	mov    %rsp,%rbp
  401d64:	48 83 ec 10          	sub    $0x10,%rsp
  401d68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401d6c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d70:	48 89 c7             	mov    %rax,%rdi
  401d73:	e8 d2 00 00 00       	callq  401e4a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_is_local() const>
  401d78:	83 f0 01             	xor    $0x1,%eax
  401d7b:	84 c0                	test   %al,%al
  401d7d:	74 17                	je     401d96 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()+0x36>
  401d7f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d83:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401d87:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d8b:	48 89 d6             	mov    %rdx,%rsi
  401d8e:	48 89 c7             	mov    %rax,%rdi
  401d91:	e8 ea 00 00 00       	callq  401e80 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_destroy(unsigned long)>
  401d96:	90                   	nop
  401d97:	c9                   	leaveq 
  401d98:	c3                   	retq   
  401d99:	90                   	nop

0000000000401d9a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data()>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv():
  401d9a:	55                   	push   %rbp
  401d9b:	48 89 e5             	mov    %rsp,%rbp
  401d9e:	48 83 ec 10          	sub    $0x10,%rsp
  401da2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401da6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401daa:	48 83 c0 10          	add    $0x10,%rax
  401dae:	48 89 c7             	mov    %rax,%rdi
  401db1:	e8 18 01 00 00       	callq  401ece <std::pointer_traits<char*>::pointer_to(char&)>
  401db6:	c9                   	leaveq 
  401db7:	c3                   	retq   

0000000000401db8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::_Alloc_hider(char*, std::allocator<char> const&)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_():
  401db8:	55                   	push   %rbp
  401db9:	48 89 e5             	mov    %rsp,%rbp
  401dbc:	48 83 ec 20          	sub    $0x20,%rsp
  401dc0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401dc4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401dc8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401dcc:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401dd0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401dd4:	48 89 d6             	mov    %rdx,%rsi
  401dd7:	48 89 c7             	mov    %rax,%rdi
  401dda:	e8 e1 f8 ff ff       	callq  4016c0 <std::allocator<char>::allocator(std::allocator<char> const&)@plt>
  401ddf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401de3:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401de7:	48 89 10             	mov    %rdx,(%rax)
  401dea:	90                   	nop
  401deb:	c9                   	leaveq 
  401dec:	c3                   	retq   
  401ded:	90                   	nop

0000000000401dee <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_():
  401dee:	55                   	push   %rbp
  401def:	48 89 e5             	mov    %rsp,%rbp
  401df2:	48 83 ec 20          	sub    $0x20,%rsp
  401df6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401dfa:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401dfe:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401e02:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401e06:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  401e0a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e0e:	48 83 ec 08          	sub    $0x8,%rsp
  401e12:	41 50                	push   %r8
  401e14:	48 89 ce             	mov    %rcx,%rsi
  401e17:	48 89 c7             	mov    %rax,%rdi
  401e1a:	e8 c9 00 00 00       	callq  401ee8 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type)>
  401e1f:	48 83 c4 10          	add    $0x10,%rsp
  401e23:	90                   	nop
  401e24:	c9                   	leaveq 
  401e25:	c3                   	retq   

0000000000401e26 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::size() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv():
  401e26:	55                   	push   %rbp
  401e27:	48 89 e5             	mov    %rsp,%rbp
  401e2a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401e2e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e32:	48 8b 40 08          	mov    0x8(%rax),%rax
  401e36:	5d                   	pop    %rbp
  401e37:	c3                   	retq   

0000000000401e38 <std::basic_string_view<char, std::char_traits<char> >::size() const>:
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv():
  401e38:	55                   	push   %rbp
  401e39:	48 89 e5             	mov    %rsp,%rbp
  401e3c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401e40:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e44:	48 8b 00             	mov    (%rax),%rax
  401e47:	5d                   	pop    %rbp
  401e48:	c3                   	retq   
  401e49:	90                   	nop

0000000000401e4a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_is_local() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv():
  401e4a:	55                   	push   %rbp
  401e4b:	48 89 e5             	mov    %rsp,%rbp
  401e4e:	53                   	push   %rbx
  401e4f:	48 83 ec 18          	sub    $0x18,%rsp
  401e53:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401e57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401e5b:	48 89 c7             	mov    %rax,%rdi
  401e5e:	e8 eb fe ff ff       	callq  401d4e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  401e63:	48 89 c3             	mov    %rax,%rbx
  401e66:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401e6a:	48 89 c7             	mov    %rax,%rdi
  401e6d:	e8 6c 01 00 00       	callq  401fde <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data() const>
  401e72:	48 39 c3             	cmp    %rax,%rbx
  401e75:	0f 94 c0             	sete   %al
  401e78:	48 83 c4 18          	add    $0x18,%rsp
  401e7c:	5b                   	pop    %rbx
  401e7d:	5d                   	pop    %rbp
  401e7e:	c3                   	retq   
  401e7f:	90                   	nop

0000000000401e80 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_destroy(unsigned long)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm():
  401e80:	55                   	push   %rbp
  401e81:	48 89 e5             	mov    %rsp,%rbp
  401e84:	41 54                	push   %r12
  401e86:	53                   	push   %rbx
  401e87:	48 83 ec 10          	sub    $0x10,%rsp
  401e8b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401e8f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401e93:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401e97:	48 8d 58 01          	lea    0x1(%rax),%rbx
  401e9b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401e9f:	48 89 c7             	mov    %rax,%rdi
  401ea2:	e8 a7 fe ff ff       	callq  401d4e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  401ea7:	49 89 c4             	mov    %rax,%r12
  401eaa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401eae:	48 89 c7             	mov    %rax,%rdi
  401eb1:	e8 78 00 00 00       	callq  401f2e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator()>
  401eb6:	48 89 da             	mov    %rbx,%rdx
  401eb9:	4c 89 e6             	mov    %r12,%rsi
  401ebc:	48 89 c7             	mov    %rax,%rdi
  401ebf:	e8 38 01 00 00       	callq  401ffc <std::allocator_traits<std::allocator<char> >::deallocate(std::allocator<char>&, char*, unsigned long)>
  401ec4:	90                   	nop
  401ec5:	48 83 c4 10          	add    $0x10,%rsp
  401ec9:	5b                   	pop    %rbx
  401eca:	41 5c                	pop    %r12
  401ecc:	5d                   	pop    %rbp
  401ecd:	c3                   	retq   

0000000000401ece <std::pointer_traits<char*>::pointer_to(char&)>:
_ZNSt14pointer_traitsIPcE10pointer_toERc():
  401ece:	55                   	push   %rbp
  401ecf:	48 89 e5             	mov    %rsp,%rbp
  401ed2:	48 83 ec 10          	sub    $0x10,%rsp
  401ed6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401eda:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ede:	48 89 c7             	mov    %rax,%rdi
  401ee1:	e8 44 01 00 00       	callq  40202a <char* std::addressof<char>(char&)>
  401ee6:	c9                   	leaveq 
  401ee7:	c3                   	retq   

0000000000401ee8 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type():
  401ee8:	55                   	push   %rbp
  401ee9:	48 89 e5             	mov    %rsp,%rbp
  401eec:	48 83 ec 30          	sub    $0x30,%rsp
  401ef0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401ef4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401ef8:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401efc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401f00:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401f04:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f08:	48 83 ec 08          	sub    $0x8,%rsp
  401f0c:	41 50                	push   %r8
  401f0e:	48 89 ce             	mov    %rcx,%rsi
  401f11:	48 89 c7             	mov    %rax,%rdi
  401f14:	e8 6b 01 00 00       	callq  402084 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)>
  401f19:	48 83 c4 10          	add    $0x10,%rsp
  401f1d:	90                   	nop
  401f1e:	c9                   	leaveq 
  401f1f:	c3                   	retq   

0000000000401f20 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv():
  401f20:	55                   	push   %rbp
  401f21:	48 89 e5             	mov    %rsp,%rbp
  401f24:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401f28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f2c:	5d                   	pop    %rbp
  401f2d:	c3                   	retq   

0000000000401f2e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator()>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv():
  401f2e:	55                   	push   %rbp
  401f2f:	48 89 e5             	mov    %rsp,%rbp
  401f32:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401f36:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f3a:	5d                   	pop    %rbp
  401f3b:	c3                   	retq   

0000000000401f3c <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data(char*)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc():
  401f3c:	55                   	push   %rbp
  401f3d:	48 89 e5             	mov    %rsp,%rbp
  401f40:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401f44:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401f48:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f4c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401f50:	48 89 10             	mov    %rdx,(%rax)
  401f53:	90                   	nop
  401f54:	5d                   	pop    %rbp
  401f55:	c3                   	retq   

0000000000401f56 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_capacity(unsigned long)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm():
  401f56:	55                   	push   %rbp
  401f57:	48 89 e5             	mov    %rsp,%rbp
  401f5a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401f5e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401f62:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f66:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401f6a:	48 89 50 10          	mov    %rdx,0x10(%rax)
  401f6e:	90                   	nop
  401f6f:	5d                   	pop    %rbp
  401f70:	c3                   	retq   
  401f71:	90                   	nop

0000000000401f72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_length(unsigned long)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm():
  401f72:	55                   	push   %rbp
  401f73:	48 89 e5             	mov    %rsp,%rbp
  401f76:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401f7a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401f7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f82:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401f86:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401f8a:	90                   	nop
  401f8b:	5d                   	pop    %rbp
  401f8c:	c3                   	retq   
  401f8d:	90                   	nop

0000000000401f8e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_set_length(unsigned long)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm():
  401f8e:	55                   	push   %rbp
  401f8f:	48 89 e5             	mov    %rsp,%rbp
  401f92:	48 83 ec 20          	sub    $0x20,%rsp
  401f96:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401f9a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401f9e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401fa2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401fa6:	48 89 d6             	mov    %rdx,%rsi
  401fa9:	48 89 c7             	mov    %rax,%rdi
  401fac:	e8 c1 ff ff ff       	callq  401f72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_length(unsigned long)>
  401fb1:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
  401fb5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401fb9:	48 89 c7             	mov    %rax,%rdi
  401fbc:	e8 8d fd ff ff       	callq  401d4e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  401fc1:	48 89 c2             	mov    %rax,%rdx
  401fc4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401fc8:	48 01 c2             	add    %rax,%rdx
  401fcb:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
  401fcf:	48 89 c6             	mov    %rax,%rsi
  401fd2:	48 89 d7             	mov    %rdx,%rdi
  401fd5:	e8 8e f9 ff ff       	callq  401968 <std::char_traits<char>::assign(char&, char const&)>
  401fda:	90                   	nop
  401fdb:	c9                   	leaveq 
  401fdc:	c3                   	retq   
  401fdd:	90                   	nop

0000000000401fde <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv():
  401fde:	55                   	push   %rbp
  401fdf:	48 89 e5             	mov    %rsp,%rbp
  401fe2:	48 83 ec 10          	sub    $0x10,%rsp
  401fe6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401fea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fee:	48 83 c0 10          	add    $0x10,%rax
  401ff2:	48 89 c7             	mov    %rax,%rdi
  401ff5:	e8 db 01 00 00       	callq  4021d5 <std::pointer_traits<char const*>::pointer_to(char const&)>
  401ffa:	c9                   	leaveq 
  401ffb:	c3                   	retq   

0000000000401ffc <std::allocator_traits<std::allocator<char> >::deallocate(std::allocator<char>&, char*, unsigned long)>:
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm():
  401ffc:	55                   	push   %rbp
  401ffd:	48 89 e5             	mov    %rsp,%rbp
  402000:	48 83 ec 20          	sub    $0x20,%rsp
  402004:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402008:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40200c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402010:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402014:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402018:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40201c:	48 89 ce             	mov    %rcx,%rsi
  40201f:	48 89 c7             	mov    %rax,%rdi
  402022:	e8 c9 01 00 00       	callq  4021f0 <__gnu_cxx::new_allocator<char>::deallocate(char*, unsigned long)>
  402027:	90                   	nop
  402028:	c9                   	leaveq 
  402029:	c3                   	retq   

000000000040202a <char* std::addressof<char>(char&)>:
_ZSt9addressofIcEPT_RS0_():
  40202a:	55                   	push   %rbp
  40202b:	48 89 e5             	mov    %rsp,%rbp
  40202e:	48 83 ec 10          	sub    $0x10,%rsp
  402032:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402036:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40203a:	48 89 c7             	mov    %rax,%rdi
  40203d:	e8 d0 01 00 00       	callq  402212 <char* std::__addressof<char>(char&)>
  402042:	c9                   	leaveq 
  402043:	c3                   	retq   

0000000000402044 <std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*)>:
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_():
  402044:	55                   	push   %rbp
  402045:	48 89 e5             	mov    %rsp,%rbp
  402048:	53                   	push   %rbx
  402049:	48 83 ec 18          	sub    $0x18,%rsp
  40204d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402051:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402055:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  402059:	48 89 c7             	mov    %rax,%rdi
  40205c:	e8 d1 01 00 00       	callq  402232 <std::iterator_traits<char const*>::iterator_category std::__iterator_category<char const*>(char const* const&)>
  402061:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402065:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  402069:	48 83 ec 08          	sub    $0x8,%rsp
  40206d:	53                   	push   %rbx
  40206e:	48 89 d6             	mov    %rdx,%rsi
  402071:	48 89 c7             	mov    %rax,%rdi
  402074:	e8 c3 01 00 00       	callq  40223c <std::iterator_traits<char const*>::difference_type std::__distance<char const*>(char const*, char const*, std::random_access_iterator_tag)>
  402079:	48 83 c4 10          	add    $0x10,%rsp
  40207d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402081:	c9                   	leaveq 
  402082:	c3                   	retq   
  402083:	90                   	nop

0000000000402084 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag():
  402084:	55                   	push   %rbp
  402085:	48 89 e5             	mov    %rsp,%rbp
  402088:	48 83 ec 30          	sub    $0x30,%rsp
  40208c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402090:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402094:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402098:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40209c:	48 89 c7             	mov    %rax,%rdi
  40209f:	e8 7c 01 00 00       	callq  402220 <bool __gnu_cxx::__is_null_pointer<char const>(char const*)>
  4020a4:	84 c0                	test   %al,%al
  4020a6:	74 11                	je     4020b9 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0x35>
  4020a8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4020ac:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  4020b0:	74 07                	je     4020b9 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0x35>
  4020b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4020b7:	eb 05                	jmp    4020be <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0x3a>
  4020b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4020be:	84 c0                	test   %al,%al
  4020c0:	74 0a                	je     4020cc <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0x48>
  4020c2:	bf b8 24 40 00       	mov    $0x4024b8,%edi
  4020c7:	e8 04 f6 ff ff       	callq  4016d0 <std::__throw_logic_error(char const*)@plt>
  4020cc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4020d0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4020d4:	48 89 d6             	mov    %rdx,%rsi
  4020d7:	48 89 c7             	mov    %rax,%rdi
  4020da:	e8 65 ff ff ff       	callq  402044 <std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*)>
  4020df:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4020e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020e7:	48 83 f8 0f          	cmp    $0xf,%rax
  4020eb:	76 3d                	jbe    40212a <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0xa6>
  4020ed:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
  4020f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4020f5:	ba 00 00 00 00       	mov    $0x0,%edx
  4020fa:	48 89 ce             	mov    %rcx,%rsi
  4020fd:	48 89 c7             	mov    %rax,%rdi
  402100:	e8 53 01 00 00       	callq  402258 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)>
  402105:	48 89 c2             	mov    %rax,%rdx
  402108:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40210c:	48 89 d6             	mov    %rdx,%rsi
  40210f:	48 89 c7             	mov    %rax,%rdi
  402112:	e8 25 fe ff ff       	callq  401f3c <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data(char*)>
  402117:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40211b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40211f:	48 89 d6             	mov    %rdx,%rsi
  402122:	48 89 c7             	mov    %rax,%rdi
  402125:	e8 2c fe ff ff       	callq  401f56 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_capacity(unsigned long)>
  40212a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40212e:	48 89 c7             	mov    %rax,%rdi
  402131:	e8 18 fc ff ff       	callq  401d4e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  402136:	48 89 c1             	mov    %rax,%rcx
  402139:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40213d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402141:	48 89 c6             	mov    %rax,%rsi
  402144:	48 89 cf             	mov    %rcx,%rdi
  402147:	e8 d3 01 00 00       	callq  40231f <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy_chars(char*, char const*, char const*)>
  40214c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402150:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402154:	48 89 d6             	mov    %rdx,%rsi
  402157:	48 89 c7             	mov    %rax,%rdi
  40215a:	e8 2f fe ff ff       	callq  401f8e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_set_length(unsigned long)>
  40215f:	90                   	nop
  402160:	c9                   	leaveq 
  402161:	c3                   	retq   

0000000000402162 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::max_size() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv():
  402162:	55                   	push   %rbp
  402163:	48 89 e5             	mov    %rsp,%rbp
  402166:	48 83 ec 10          	sub    $0x10,%rsp
  40216a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40216e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402172:	48 89 c7             	mov    %rax,%rdi
  402175:	e8 a6 fd ff ff       	callq  401f20 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator() const>
  40217a:	48 89 c7             	mov    %rax,%rdi
  40217d:	e8 d8 01 00 00       	callq  40235a <std::allocator_traits<std::allocator<char> >::max_size(std::allocator<char> const&)>
  402182:	48 83 e8 01          	sub    $0x1,%rax
  402186:	48 d1 e8             	shr    %rax
  402189:	c9                   	leaveq 
  40218a:	c3                   	retq   

000000000040218b <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy(char*, char const*, unsigned long)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm():
  40218b:	55                   	push   %rbp
  40218c:	48 89 e5             	mov    %rsp,%rbp
  40218f:	48 83 ec 20          	sub    $0x20,%rsp
  402193:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402197:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40219b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40219f:	48 83 7d e8 01       	cmpq   $0x1,-0x18(%rbp)
  4021a4:	75 15                	jne    4021bb <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy(char*, char const*, unsigned long)+0x30>
  4021a6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4021aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4021ae:	48 89 d6             	mov    %rdx,%rsi
  4021b1:	48 89 c7             	mov    %rax,%rdi
  4021b4:	e8 af f7 ff ff       	callq  401968 <std::char_traits<char>::assign(char&, char const&)>
  4021b9:	eb 17                	jmp    4021d2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy(char*, char const*, unsigned long)+0x47>
  4021bb:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4021bf:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4021c3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4021c7:	48 89 ce             	mov    %rcx,%rsi
  4021ca:	48 89 c7             	mov    %rax,%rdi
  4021cd:	e8 de f7 ff ff       	callq  4019b0 <std::char_traits<char>::copy(char*, char const*, unsigned long)>
  4021d2:	90                   	nop
  4021d3:	c9                   	leaveq 
  4021d4:	c3                   	retq   

00000000004021d5 <std::pointer_traits<char const*>::pointer_to(char const&)>:
_ZNSt14pointer_traitsIPKcE10pointer_toERS0_():
  4021d5:	55                   	push   %rbp
  4021d6:	48 89 e5             	mov    %rsp,%rbp
  4021d9:	48 83 ec 10          	sub    $0x10,%rsp
  4021dd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4021e1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4021e5:	48 89 c7             	mov    %rax,%rdi
  4021e8:	e8 87 01 00 00       	callq  402374 <char const* std::addressof<char const>(char const&)>
  4021ed:	c9                   	leaveq 
  4021ee:	c3                   	retq   
  4021ef:	90                   	nop

00000000004021f0 <__gnu_cxx::new_allocator<char>::deallocate(char*, unsigned long)>:
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm():
  4021f0:	55                   	push   %rbp
  4021f1:	48 89 e5             	mov    %rsp,%rbp
  4021f4:	48 83 ec 20          	sub    $0x20,%rsp
  4021f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4021fc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402200:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402204:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402208:	48 89 c7             	mov    %rax,%rdi
  40220b:	e8 d0 f4 ff ff       	callq  4016e0 <operator delete(void*)@plt>
  402210:	c9                   	leaveq 
  402211:	c3                   	retq   

0000000000402212 <char* std::__addressof<char>(char&)>:
_ZSt11__addressofIcEPT_RS0_():
  402212:	55                   	push   %rbp
  402213:	48 89 e5             	mov    %rsp,%rbp
  402216:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40221a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40221e:	5d                   	pop    %rbp
  40221f:	c3                   	retq   

0000000000402220 <bool __gnu_cxx::__is_null_pointer<char const>(char const*)>:
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_():
  402220:	55                   	push   %rbp
  402221:	48 89 e5             	mov    %rsp,%rbp
  402224:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402228:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40222d:	0f 94 c0             	sete   %al
  402230:	5d                   	pop    %rbp
  402231:	c3                   	retq   

0000000000402232 <std::iterator_traits<char const*>::iterator_category std::__iterator_category<char const*>(char const* const&)>:
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_():
  402232:	55                   	push   %rbp
  402233:	48 89 e5             	mov    %rsp,%rbp
  402236:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40223a:	5d                   	pop    %rbp
  40223b:	c3                   	retq   

000000000040223c <std::iterator_traits<char const*>::difference_type std::__distance<char const*>(char const*, char const*, std::random_access_iterator_tag)>:
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag():
  40223c:	55                   	push   %rbp
  40223d:	48 89 e5             	mov    %rsp,%rbp
  402240:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402244:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402248:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40224c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402250:	48 29 c2             	sub    %rax,%rdx
  402253:	48 89 d0             	mov    %rdx,%rax
  402256:	5d                   	pop    %rbp
  402257:	c3                   	retq   

0000000000402258 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm():
  402258:	55                   	push   %rbp
  402259:	48 89 e5             	mov    %rsp,%rbp
  40225c:	53                   	push   %rbx
  40225d:	48 83 ec 28          	sub    $0x28,%rsp
  402261:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402265:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402269:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40226d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402271:	48 8b 18             	mov    (%rax),%rbx
  402274:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402278:	48 89 c7             	mov    %rax,%rdi
  40227b:	e8 e2 fe ff ff       	callq  402162 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::max_size() const>
  402280:	48 39 c3             	cmp    %rax,%rbx
  402283:	0f 97 c0             	seta   %al
  402286:	84 c0                	test   %al,%al
  402288:	74 0a                	je     402294 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)+0x3c>
  40228a:	bf e2 24 40 00       	mov    $0x4024e2,%edi
  40228f:	e8 5c f4 ff ff       	callq  4016f0 <std::__throw_length_error(char const*)@plt>
  402294:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402298:	48 8b 00             	mov    (%rax),%rax
  40229b:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
  40229f:	73 55                	jae    4022f6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)+0x9e>
  4022a1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4022a5:	48 8b 00             	mov    (%rax),%rax
  4022a8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4022ac:	48 01 d2             	add    %rdx,%rdx
  4022af:	48 39 d0             	cmp    %rdx,%rax
  4022b2:	73 42                	jae    4022f6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)+0x9e>
  4022b4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4022b8:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
  4022bc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4022c0:	48 89 10             	mov    %rdx,(%rax)
  4022c3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4022c7:	48 8b 18             	mov    (%rax),%rbx
  4022ca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4022ce:	48 89 c7             	mov    %rax,%rdi
  4022d1:	e8 8c fe ff ff       	callq  402162 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::max_size() const>
  4022d6:	48 39 c3             	cmp    %rax,%rbx
  4022d9:	0f 97 c0             	seta   %al
  4022dc:	84 c0                	test   %al,%al
  4022de:	74 16                	je     4022f6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)+0x9e>
  4022e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4022e4:	48 89 c7             	mov    %rax,%rdi
  4022e7:	e8 76 fe ff ff       	callq  402162 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::max_size() const>
  4022ec:	48 89 c2             	mov    %rax,%rdx
  4022ef:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4022f3:	48 89 10             	mov    %rdx,(%rax)
  4022f6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4022fa:	48 8b 00             	mov    (%rax),%rax
  4022fd:	48 8d 58 01          	lea    0x1(%rax),%rbx
  402301:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402305:	48 89 c7             	mov    %rax,%rdi
  402308:	e8 21 fc ff ff       	callq  401f2e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator()>
  40230d:	48 89 de             	mov    %rbx,%rsi
  402310:	48 89 c7             	mov    %rax,%rdi
  402313:	e8 76 00 00 00       	callq  40238e <std::allocator_traits<std::allocator<char> >::allocate(std::allocator<char>&, unsigned long)>
  402318:	48 83 c4 28          	add    $0x28,%rsp
  40231c:	5b                   	pop    %rbx
  40231d:	5d                   	pop    %rbp
  40231e:	c3                   	retq   

000000000040231f <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy_chars(char*, char const*, char const*)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_():
  40231f:	55                   	push   %rbp
  402320:	48 89 e5             	mov    %rsp,%rbp
  402323:	48 83 ec 20          	sub    $0x20,%rsp
  402327:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40232b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40232f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402333:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402337:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40233b:	48 29 c2             	sub    %rax,%rdx
  40233e:	48 89 d0             	mov    %rdx,%rax
  402341:	48 89 c2             	mov    %rax,%rdx
  402344:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402348:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40234c:	48 89 ce             	mov    %rcx,%rsi
  40234f:	48 89 c7             	mov    %rax,%rdi
  402352:	e8 34 fe ff ff       	callq  40218b <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy(char*, char const*, unsigned long)>
  402357:	90                   	nop
  402358:	c9                   	leaveq 
  402359:	c3                   	retq   

000000000040235a <std::allocator_traits<std::allocator<char> >::max_size(std::allocator<char> const&)>:
_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_():
  40235a:	55                   	push   %rbp
  40235b:	48 89 e5             	mov    %rsp,%rbp
  40235e:	48 83 ec 10          	sub    $0x10,%rsp
  402362:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402366:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40236a:	48 89 c7             	mov    %rax,%rdi
  40236d:	e8 46 00 00 00       	callq  4023b8 <__gnu_cxx::new_allocator<char>::max_size() const>
  402372:	c9                   	leaveq 
  402373:	c3                   	retq   

0000000000402374 <char const* std::addressof<char const>(char const&)>:
_ZSt9addressofIKcEPT_RS1_():
  402374:	55                   	push   %rbp
  402375:	48 89 e5             	mov    %rsp,%rbp
  402378:	48 83 ec 10          	sub    $0x10,%rsp
  40237c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402380:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402384:	48 89 c7             	mov    %rax,%rdi
  402387:	e8 3d 00 00 00       	callq  4023c9 <char const* std::__addressof<char const>(char const&)>
  40238c:	c9                   	leaveq 
  40238d:	c3                   	retq   

000000000040238e <std::allocator_traits<std::allocator<char> >::allocate(std::allocator<char>&, unsigned long)>:
_ZNSt16allocator_traitsISaIcEE8allocateERS0_m():
  40238e:	55                   	push   %rbp
  40238f:	48 89 e5             	mov    %rsp,%rbp
  402392:	48 83 ec 10          	sub    $0x10,%rsp
  402396:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40239a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40239e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4023a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023a6:	ba 00 00 00 00       	mov    $0x0,%edx
  4023ab:	48 89 ce             	mov    %rcx,%rsi
  4023ae:	48 89 c7             	mov    %rax,%rdi
  4023b1:	e8 22 00 00 00       	callq  4023d8 <__gnu_cxx::new_allocator<char>::allocate(unsigned long, void const*)>
  4023b6:	c9                   	leaveq 
  4023b7:	c3                   	retq   

00000000004023b8 <__gnu_cxx::new_allocator<char>::max_size() const>:
_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv():
  4023b8:	55                   	push   %rbp
  4023b9:	48 89 e5             	mov    %rsp,%rbp
  4023bc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4023c0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023c7:	5d                   	pop    %rbp
  4023c8:	c3                   	retq   

00000000004023c9 <char const* std::__addressof<char const>(char const&)>:
_ZSt11__addressofIKcEPT_RS1_():
  4023c9:	55                   	push   %rbp
  4023ca:	48 89 e5             	mov    %rsp,%rbp
  4023cd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4023d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023d5:	5d                   	pop    %rbp
  4023d6:	c3                   	retq   
  4023d7:	90                   	nop

00000000004023d8 <__gnu_cxx::new_allocator<char>::allocate(unsigned long, void const*)>:
_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv():
  4023d8:	55                   	push   %rbp
  4023d9:	48 89 e5             	mov    %rsp,%rbp
  4023dc:	48 83 ec 20          	sub    $0x20,%rsp
  4023e0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4023e4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4023e8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4023ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023f0:	48 89 c7             	mov    %rax,%rdi
  4023f3:	e8 c0 ff ff ff       	callq  4023b8 <__gnu_cxx::new_allocator<char>::max_size() const>
  4023f8:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  4023fc:	0f 97 c0             	seta   %al
  4023ff:	84 c0                	test   %al,%al
  402401:	74 05                	je     402408 <__gnu_cxx::new_allocator<char>::allocate(unsigned long, void const*)+0x30>
  402403:	e8 f8 f2 ff ff       	callq  401700 <std::__throw_bad_alloc()@plt>
  402408:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40240c:	48 89 c7             	mov    %rax,%rdi
  40240f:	e8 fc f2 ff ff       	callq  401710 <operator new(unsigned long)@plt>
  402414:	c9                   	leaveq 
  402415:	c3                   	retq   
  402416:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40241d:	00 00 00 

0000000000402420 <__libc_csu_init>:
__libc_csu_init():
  402420:	41 57                	push   %r15
  402422:	41 56                	push   %r14
  402424:	41 89 ff             	mov    %edi,%r15d
  402427:	41 55                	push   %r13
  402429:	41 54                	push   %r12
  40242b:	4c 8d 25 96 29 00 00 	lea    0x2996(%rip),%r12        # 404dc8 <__frame_dummy_init_array_entry>
  402432:	55                   	push   %rbp
  402433:	48 8d 2d 9e 29 00 00 	lea    0x299e(%rip),%rbp        # 404dd8 <__init_array_end>
  40243a:	53                   	push   %rbx
  40243b:	49 89 f6             	mov    %rsi,%r14
  40243e:	49 89 d5             	mov    %rdx,%r13
  402441:	4c 29 e5             	sub    %r12,%rbp
  402444:	48 83 ec 08          	sub    $0x8,%rsp
  402448:	48 c1 fd 03          	sar    $0x3,%rbp
  40244c:	e8 97 f1 ff ff       	callq  4015e8 <_init>
  402451:	48 85 ed             	test   %rbp,%rbp
  402454:	74 20                	je     402476 <__libc_csu_init+0x56>
  402456:	31 db                	xor    %ebx,%ebx
  402458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40245f:	00 
  402460:	4c 89 ea             	mov    %r13,%rdx
  402463:	4c 89 f6             	mov    %r14,%rsi
  402466:	44 89 ff             	mov    %r15d,%edi
  402469:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40246d:	48 83 c3 01          	add    $0x1,%rbx
  402471:	48 39 dd             	cmp    %rbx,%rbp
  402474:	75 ea                	jne    402460 <__libc_csu_init+0x40>
  402476:	48 83 c4 08          	add    $0x8,%rsp
  40247a:	5b                   	pop    %rbx
  40247b:	5d                   	pop    %rbp
  40247c:	41 5c                	pop    %r12
  40247e:	41 5d                	pop    %r13
  402480:	41 5e                	pop    %r14
  402482:	41 5f                	pop    %r15
  402484:	c3                   	retq   
  402485:	90                   	nop
  402486:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40248d:	00 00 00 

0000000000402490 <__libc_csu_fini>:
__libc_csu_fini():
  402490:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402494 <_fini>:
_fini():
  402494:	48 83 ec 08          	sub    $0x8,%rsp
  402498:	48 83 c4 08          	add    $0x8,%rsp
  40249c:	c3                   	retq   
