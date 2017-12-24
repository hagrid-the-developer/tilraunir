
./a.out:     file format elf64-x86-64


Disassembly of section .init:

00000000004008e8 <_init>:
_init():
  4008e8:	48 83 ec 08          	sub    $0x8,%rsp
  4008ec:	48 8b 05 ed 26 00 00 	mov    0x26ed(%rip),%rax        # 402fe0 <__gmon_start__>
  4008f3:	48 85 c0             	test   %rax,%rax
  4008f6:	74 02                	je     4008fa <_init+0x12>
  4008f8:	ff d0                	callq  *%rax
  4008fa:	48 83 c4 08          	add    $0x8,%rsp
  4008fe:	c3                   	retq   

Disassembly of section .plt:

0000000000400900 <operator new(unsigned long)@plt-0x10>:
  400900:	ff 35 ea 26 00 00    	pushq  0x26ea(%rip)        # 402ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400906:	ff 25 ec 26 00 00    	jmpq   *0x26ec(%rip)        # 402ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40090c:	90                   	nop
  40090d:	90                   	nop
  40090e:	90                   	nop
  40090f:	90                   	nop

0000000000400910 <operator new(unsigned long)@plt>:
  400910:	ff 25 ea 26 00 00    	jmpq   *0x26ea(%rip)        # 403000 <operator new(unsigned long)@GLIBCXX_3.4>
  400916:	68 00 00 00 00       	pushq  $0x0
  40091b:	e9 e0 ff ff ff       	jmpq   400900 <_init+0x18>

0000000000400920 <memcpy@plt>:
  400920:	ff 25 e2 26 00 00    	jmpq   *0x26e2(%rip)        # 403008 <memcpy@GLIBC_2.14>
  400926:	68 01 00 00 00       	pushq  $0x1
  40092b:	e9 d0 ff ff ff       	jmpq   400900 <_init+0x18>

0000000000400930 <std::__throw_logic_error(char const*)@plt>:
  400930:	ff 25 da 26 00 00    	jmpq   *0x26da(%rip)        # 403010 <std::__throw_logic_error(char const*)@GLIBCXX_3.4>
  400936:	68 02 00 00 00       	pushq  $0x2
  40093b:	e9 c0 ff ff ff       	jmpq   400900 <_init+0x18>

0000000000400940 <std::__throw_length_error(char const*)@plt>:
  400940:	ff 25 d2 26 00 00    	jmpq   *0x26d2(%rip)        # 403018 <std::__throw_length_error(char const*)@GLIBCXX_3.4>
  400946:	68 03 00 00 00       	pushq  $0x3
  40094b:	e9 b0 ff ff ff       	jmpq   400900 <_init+0x18>

0000000000400950 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>:
  400950:	ff 25 ca 26 00 00    	jmpq   *0x26ca(%rip)        # 403020 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@GLIBCXX_3.4.9>
  400956:	68 04 00 00 00       	pushq  $0x4
  40095b:	e9 a0 ff ff ff       	jmpq   400900 <_init+0x18>

0000000000400960 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@plt>:
  400960:	ff 25 c2 26 00 00    	jmpq   *0x26c2(%rip)        # 403028 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  400966:	68 05 00 00 00       	pushq  $0x5
  40096b:	e9 90 ff ff ff       	jmpq   400900 <_init+0x18>

0000000000400970 <operator delete(void*)@plt>:
  400970:	ff 25 ba 26 00 00    	jmpq   *0x26ba(%rip)        # 403030 <operator delete(void*)@GLIBCXX_3.4>
  400976:	68 06 00 00 00       	pushq  $0x6
  40097b:	e9 80 ff ff ff       	jmpq   400900 <_init+0x18>

0000000000400980 <_Unwind_Resume@plt>:
  400980:	ff 25 b2 26 00 00    	jmpq   *0x26b2(%rip)        # 403038 <_Unwind_Resume@GCC_3.0>
  400986:	68 07 00 00 00       	pushq  $0x7
  40098b:	e9 70 ff ff ff       	jmpq   400900 <_init+0x18>

0000000000400990 <std::ios_base::Init::Init()@plt>:
  400990:	ff 25 aa 26 00 00    	jmpq   *0x26aa(%rip)        # 403040 <std::ios_base::Init::Init()@GLIBCXX_3.4>
  400996:	68 08 00 00 00       	pushq  $0x8
  40099b:	e9 60 ff ff ff       	jmpq   400900 <_init+0x18>

00000000004009a0 <std::ios_base::Init::~Init()@plt>:
  4009a0:	ff 25 a2 26 00 00    	jmpq   *0x26a2(%rip)        # 403048 <std::ios_base::Init::~Init()@GLIBCXX_3.4>
  4009a6:	68 09 00 00 00       	pushq  $0x9
  4009ab:	e9 50 ff ff ff       	jmpq   400900 <_init+0x18>

00000000004009b0 <__cxa_atexit@plt>:
  4009b0:	ff 25 9a 26 00 00    	jmpq   *0x269a(%rip)        # 403050 <__cxa_atexit@GLIBC_2.2.5>
  4009b6:	68 0a 00 00 00       	pushq  $0xa
  4009bb:	e9 40 ff ff ff       	jmpq   400900 <_init+0x18>

00000000004009c0 <__gxx_personality_v0@plt>:
  4009c0:	ff 25 92 26 00 00    	jmpq   *0x2692(%rip)        # 403058 <__gxx_personality_v0@CXXABI_1.3>
  4009c6:	68 0b 00 00 00       	pushq  $0xb
  4009cb:	e9 30 ff ff ff       	jmpq   400900 <_init+0x18>

Disassembly of section .text:

00000000004009d0 <main>:
main():
  4009d0:	53                   	push   %rbx
  4009d1:	48 ba 48 65 6c 6c 6f 	movabs $0x6f57206f6c6c6548,%rdx
  4009d8:	20 57 6f 
  4009db:	bf a0 30 40 00       	mov    $0x4030a0,%edi
  4009e0:	48 83 ec 40          	sub    $0x40,%rsp
  4009e4:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  4009e9:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  4009ee:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  4009f3:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  4009f8:	ba 72 6c 00 00       	mov    $0x6c72,%edx
  4009fd:	c6 44 24 1a 64       	movb   $0x64,0x1a(%rsp)
  400a02:	66 89 56 08          	mov    %dx,0x8(%rsi)
  400a06:	48 89 04 24          	mov    %rax,(%rsp)
  400a0a:	ba 0b 00 00 00       	mov    $0xb,%edx
  400a0f:	b8 72 6c 00 00       	mov    $0x6c72,%eax
  400a14:	c6 46 0a 64          	movb   $0x64,0xa(%rsi)
  400a18:	48 c7 44 24 08 0b 00 	movq   $0xb,0x8(%rsp)
  400a1f:	00 00 
  400a21:	66 89 44 24 18       	mov    %ax,0x18(%rsp)
  400a26:	c6 44 24 1b 00       	movb   $0x0,0x1b(%rsp)
  400a2b:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
  400a30:	48 c7 44 24 28 0b 00 	movq   $0xb,0x28(%rsp)
  400a37:	00 00 
  400a39:	c6 44 24 3b 00       	movb   $0x0,0x3b(%rsp)
  400a3e:	e8 0d ff ff ff       	callq  400950 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
  400a43:	48 89 c7             	mov    %rax,%rdi
  400a46:	e8 15 ff ff ff       	callq  400960 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@plt>
  400a4b:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  400a50:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
  400a55:	48 39 c7             	cmp    %rax,%rdi
  400a58:	74 05                	je     400a5f <main+0x8f>
  400a5a:	e8 11 ff ff ff       	callq  400970 <operator delete(void*)@plt>
  400a5f:	48 8b 3c 24          	mov    (%rsp),%rdi
  400a63:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  400a68:	48 39 c7             	cmp    %rax,%rdi
  400a6b:	74 05                	je     400a72 <main+0xa2>
  400a6d:	e8 fe fe ff ff       	callq  400970 <operator delete(void*)@plt>
  400a72:	48 83 c4 40          	add    $0x40,%rsp
  400a76:	31 c0                	xor    %eax,%eax
  400a78:	5b                   	pop    %rbx
  400a79:	c3                   	retq   
  400a7a:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  400a7f:	48 89 c3             	mov    %rax,%rbx
  400a82:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
  400a87:	48 39 c7             	cmp    %rax,%rdi
  400a8a:	74 05                	je     400a91 <main+0xc1>
  400a8c:	e8 df fe ff ff       	callq  400970 <operator delete(void*)@plt>
  400a91:	48 8b 3c 24          	mov    (%rsp),%rdi
  400a95:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  400a9a:	48 39 c7             	cmp    %rax,%rdi
  400a9d:	74 05                	je     400aa4 <main+0xd4>
  400a9f:	e8 cc fe ff ff       	callq  400970 <operator delete(void*)@plt>
  400aa4:	48 89 df             	mov    %rbx,%rdi
  400aa7:	e8 d4 fe ff ff       	callq  400980 <_Unwind_Resume@plt>
  400aac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ab0 <_GLOBAL__sub_I__Z6make_sNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
_GLOBAL__sub_I__Z6make_sNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE():
  400ab0:	48 83 ec 08          	sub    $0x8,%rsp
  400ab4:	bf 81 30 40 00       	mov    $0x403081,%edi
  400ab9:	e8 d2 fe ff ff       	callq  400990 <std::ios_base::Init::Init()@plt>
  400abe:	ba 68 30 40 00       	mov    $0x403068,%edx
  400ac3:	be 81 30 40 00       	mov    $0x403081,%esi
  400ac8:	bf a0 09 40 00       	mov    $0x4009a0,%edi
  400acd:	48 83 c4 08          	add    $0x8,%rsp
  400ad1:	e9 da fe ff ff       	jmpq   4009b0 <__cxa_atexit@plt>
	...

0000000000400ae0 <set_fast_math>:
set_fast_math():
/home/faramir/Downloads/gcc-7.2.0/x86_64-pc-linux-gnu/libgcc/../.././libgcc/config/i386/crtfastmath.c:94
  400ae0:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
/home/faramir/Downloads/gcc-7.2.0/x86_64-pc-linux-gnu/libgcc/../.././libgcc/config/i386/crtfastmath.c:96
  400ae5:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
  400aec:	00 
  400aed:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
/home/faramir/Downloads/gcc-7.2.0/x86_64-pc-linux-gnu/libgcc/../.././libgcc/config/i386/crtfastmath.c:98
  400af2:	c3                   	retq   
	...

0000000000400b00 <_start>:
_start():
  400b00:	31 ed                	xor    %ebp,%ebp
  400b02:	49 89 d1             	mov    %rdx,%r9
  400b05:	5e                   	pop    %rsi
  400b06:	48 89 e2             	mov    %rsp,%rdx
  400b09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400b0d:	50                   	push   %rax
  400b0e:	54                   	push   %rsp
  400b0f:	49 c7 c0 10 0d 40 00 	mov    $0x400d10,%r8
  400b16:	48 c7 c1 a0 0c 40 00 	mov    $0x400ca0,%rcx
  400b1d:	48 c7 c7 d0 09 40 00 	mov    $0x4009d0,%rdi
  400b24:	ff 15 ae 24 00 00    	callq  *0x24ae(%rip)        # 402fd8 <__libc_start_main@GLIBC_2.2.5>
  400b2a:	f4                   	hlt    
  400b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400b30 <deregister_tm_clones>:
deregister_tm_clones():
  400b30:	55                   	push   %rbp
  400b31:	b8 70 30 40 00       	mov    $0x403070,%eax
  400b36:	48 3d 70 30 40 00    	cmp    $0x403070,%rax
  400b3c:	48 89 e5             	mov    %rsp,%rbp
  400b3f:	74 17                	je     400b58 <deregister_tm_clones+0x28>
  400b41:	b8 00 00 00 00       	mov    $0x0,%eax
  400b46:	48 85 c0             	test   %rax,%rax
  400b49:	74 0d                	je     400b58 <deregister_tm_clones+0x28>
  400b4b:	5d                   	pop    %rbp
  400b4c:	bf 70 30 40 00       	mov    $0x403070,%edi
  400b51:	ff e0                	jmpq   *%rax
  400b53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400b58:	5d                   	pop    %rbp
  400b59:	c3                   	retq   
  400b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400b60 <register_tm_clones>:
register_tm_clones():
  400b60:	be 70 30 40 00       	mov    $0x403070,%esi
  400b65:	55                   	push   %rbp
  400b66:	48 81 ee 70 30 40 00 	sub    $0x403070,%rsi
  400b6d:	48 89 e5             	mov    %rsp,%rbp
  400b70:	48 c1 fe 03          	sar    $0x3,%rsi
  400b74:	48 89 f0             	mov    %rsi,%rax
  400b77:	48 c1 e8 3f          	shr    $0x3f,%rax
  400b7b:	48 01 c6             	add    %rax,%rsi
  400b7e:	48 d1 fe             	sar    %rsi
  400b81:	74 15                	je     400b98 <register_tm_clones+0x38>
  400b83:	b8 00 00 00 00       	mov    $0x0,%eax
  400b88:	48 85 c0             	test   %rax,%rax
  400b8b:	74 0b                	je     400b98 <register_tm_clones+0x38>
  400b8d:	5d                   	pop    %rbp
  400b8e:	bf 70 30 40 00       	mov    $0x403070,%edi
  400b93:	ff e0                	jmpq   *%rax
  400b95:	0f 1f 00             	nopl   (%rax)
  400b98:	5d                   	pop    %rbp
  400b99:	c3                   	retq   
  400b9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ba0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  400ba0:	80 3d d9 24 00 00 00 	cmpb   $0x0,0x24d9(%rip)        # 403080 <completed.6953>
  400ba7:	75 17                	jne    400bc0 <__do_global_dtors_aux+0x20>
  400ba9:	55                   	push   %rbp
  400baa:	48 89 e5             	mov    %rsp,%rbp
  400bad:	e8 7e ff ff ff       	callq  400b30 <deregister_tm_clones>
  400bb2:	c6 05 c7 24 00 00 01 	movb   $0x1,0x24c7(%rip)        # 403080 <completed.6953>
  400bb9:	5d                   	pop    %rbp
  400bba:	c3                   	retq   
  400bbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400bc0:	f3 c3                	repz retq 
  400bc2:	0f 1f 40 00          	nopl   0x0(%rax)
  400bc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400bcd:	00 00 00 

0000000000400bd0 <frame_dummy>:
frame_dummy():
  400bd0:	55                   	push   %rbp
  400bd1:	48 89 e5             	mov    %rsp,%rbp
  400bd4:	5d                   	pop    %rbp
  400bd5:	eb 89                	jmp    400b60 <register_tm_clones>
  400bd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400bde:	00 00 

0000000000400be0 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)>:
_Z6make_sNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE():
  400be0:	41 54                	push   %r12
  400be2:	55                   	push   %rbp
  400be3:	48 8d 47 10          	lea    0x10(%rdi),%rax
  400be7:	53                   	push   %rbx
  400be8:	4c 8b 26             	mov    (%rsi),%r12
  400beb:	48 89 fd             	mov    %rdi,%rbp
  400bee:	48 8b 5e 08          	mov    0x8(%rsi),%rbx
  400bf2:	48 89 07             	mov    %rax,(%rdi)
  400bf5:	4c 89 e1             	mov    %r12,%rcx
  400bf8:	48 01 d9             	add    %rbx,%rcx
  400bfb:	74 05                	je     400c02 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)+0x22>
  400bfd:	4d 85 e4             	test   %r12,%r12
  400c00:	74 76                	je     400c78 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)+0x98>
  400c02:	48 83 fb 0f          	cmp    $0xf,%rbx
  400c06:	77 38                	ja     400c40 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)+0x60>
  400c08:	48 83 fb 01          	cmp    $0x1,%rbx
  400c0c:	74 1a                	je     400c28 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)+0x48>
  400c0e:	48 85 db             	test   %rbx,%rbx
  400c11:	75 43                	jne    400c56 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)+0x76>
  400c13:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
  400c17:	c6 04 18 00          	movb   $0x0,(%rax,%rbx,1)
  400c1b:	48 89 e8             	mov    %rbp,%rax
  400c1e:	5b                   	pop    %rbx
  400c1f:	5d                   	pop    %rbp
  400c20:	41 5c                	pop    %r12
  400c22:	c3                   	retq   
  400c23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400c28:	41 0f b6 14 24       	movzbl (%r12),%edx
  400c2d:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
  400c31:	88 55 10             	mov    %dl,0x10(%rbp)
  400c34:	c6 04 18 00          	movb   $0x0,(%rax,%rbx,1)
  400c38:	48 89 e8             	mov    %rbp,%rax
  400c3b:	5b                   	pop    %rbx
  400c3c:	5d                   	pop    %rbp
  400c3d:	41 5c                	pop    %r12
  400c3f:	c3                   	retq   
  400c40:	48 85 db             	test   %rbx,%rbx
  400c43:	78 3d                	js     400c82 <make_s(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >)+0xa2>
  400c45:	48 8d 7b 01          	lea    0x1(%rbx),%rdi
  400c49:	e8 c2 fc ff ff       	callq  400910 <operator new(unsigned long)@plt>
  400c4e:	48 89 5d 10          	mov    %rbx,0x10(%rbp)
  400c52:	48 89 45 00          	mov    %rax,0x0(%rbp)
  400c56:	48 89 da             	mov    %rbx,%rdx
  400c59:	4c 89 e6             	mov    %r12,%rsi
  400c5c:	48 89 c7             	mov    %rax,%rdi
  400c5f:	e8 bc fc ff ff       	callq  400920 <memcpy@plt>
  400c64:	48 8b 45 00          	mov    0x0(%rbp),%rax
  400c68:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
  400c6c:	c6 04 18 00          	movb   $0x0,(%rax,%rbx,1)
  400c70:	48 89 e8             	mov    %rbp,%rax
  400c73:	5b                   	pop    %rbx
  400c74:	5d                   	pop    %rbp
  400c75:	41 5c                	pop    %r12
  400c77:	c3                   	retq   
  400c78:	bf 38 0d 40 00       	mov    $0x400d38,%edi
  400c7d:	e8 ae fc ff ff       	callq  400930 <std::__throw_logic_error(char const*)@plt>
  400c82:	bf 62 0d 40 00       	mov    $0x400d62,%edi
  400c87:	e8 b4 fc ff ff       	callq  400940 <std::__throw_length_error(char const*)@plt>
  400c8c:	0f 1f 40 00          	nopl   0x0(%rax)
  400c90:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c97:	00 00 00 
  400c9a:	00 00                	add    %al,(%rax)
  400c9c:	00 00                	add    %al,(%rax)
	...

0000000000400ca0 <__libc_csu_init>:
__libc_csu_init():
  400ca0:	41 57                	push   %r15
  400ca2:	41 56                	push   %r14
  400ca4:	41 89 ff             	mov    %edi,%r15d
  400ca7:	41 55                	push   %r13
  400ca9:	41 54                	push   %r12
  400cab:	4c 8d 25 0e 21 00 00 	lea    0x210e(%rip),%r12        # 402dc0 <__frame_dummy_init_array_entry>
  400cb2:	55                   	push   %rbp
  400cb3:	48 8d 2d 1e 21 00 00 	lea    0x211e(%rip),%rbp        # 402dd8 <__init_array_end>
  400cba:	53                   	push   %rbx
  400cbb:	49 89 f6             	mov    %rsi,%r14
  400cbe:	49 89 d5             	mov    %rdx,%r13
  400cc1:	4c 29 e5             	sub    %r12,%rbp
  400cc4:	48 83 ec 08          	sub    $0x8,%rsp
  400cc8:	48 c1 fd 03          	sar    $0x3,%rbp
  400ccc:	e8 17 fc ff ff       	callq  4008e8 <_init>
  400cd1:	48 85 ed             	test   %rbp,%rbp
  400cd4:	74 20                	je     400cf6 <__libc_csu_init+0x56>
  400cd6:	31 db                	xor    %ebx,%ebx
  400cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400cdf:	00 
  400ce0:	4c 89 ea             	mov    %r13,%rdx
  400ce3:	4c 89 f6             	mov    %r14,%rsi
  400ce6:	44 89 ff             	mov    %r15d,%edi
  400ce9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400ced:	48 83 c3 01          	add    $0x1,%rbx
  400cf1:	48 39 dd             	cmp    %rbx,%rbp
  400cf4:	75 ea                	jne    400ce0 <__libc_csu_init+0x40>
  400cf6:	48 83 c4 08          	add    $0x8,%rsp
  400cfa:	5b                   	pop    %rbx
  400cfb:	5d                   	pop    %rbp
  400cfc:	41 5c                	pop    %r12
  400cfe:	41 5d                	pop    %r13
  400d00:	41 5e                	pop    %r14
  400d02:	41 5f                	pop    %r15
  400d04:	c3                   	retq   
  400d05:	90                   	nop
  400d06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d0d:	00 00 00 

0000000000400d10 <__libc_csu_fini>:
__libc_csu_fini():
  400d10:	f3 c3                	repz retq 
  400d12:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400d19:	1f 84 00 00 00 00 00 

Disassembly of section .fini:

0000000000400d20 <_fini>:
_fini():
  400d20:	48 83 ec 08          	sub    $0x8,%rsp
  400d24:	48 83 c4 08          	add    $0x8,%rsp
  400d28:	c3                   	retq   
