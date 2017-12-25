
./a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b08 <_init>:
_init():
  400b08:	48 83 ec 08          	sub    $0x8,%rsp
  400b0c:	48 8b 05 cd 34 00 00 	mov    0x34cd(%rip),%rax        # 403fe0 <__gmon_start__>
  400b13:	48 85 c0             	test   %rax,%rax
  400b16:	74 02                	je     400b1a <_init+0x12>
  400b18:	ff d0                	callq  *%rax
  400b1a:	48 83 c4 08          	add    $0x8,%rsp
  400b1e:	c3                   	retq   

Disassembly of section .plt:

0000000000400b20 <_Unwind_Resume@plt-0x10>:
  400b20:	ff 35 ca 34 00 00    	pushq  0x34ca(%rip)        # 403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b26:	ff 25 cc 34 00 00    	jmpq   *0x34cc(%rip)        # 403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b2c:	90                   	nop
  400b2d:	90                   	nop
  400b2e:	90                   	nop
  400b2f:	90                   	nop

0000000000400b30 <_Unwind_Resume@plt>:
  400b30:	ff 25 ca 34 00 00    	jmpq   *0x34ca(%rip)        # 404000 <_Unwind_Resume@GCC_3.0>
  400b36:	68 00 00 00 00       	pushq  $0x0
  400b3b:	e9 e0 ff ff ff       	jmpq   400b20 <_init+0x18>

0000000000400b40 <std::ios_base::Init::Init()@plt>:
  400b40:	ff 25 c2 34 00 00    	jmpq   *0x34c2(%rip)        # 404008 <std::ios_base::Init::Init()@GLIBCXX_3.4>
  400b46:	68 01 00 00 00       	pushq  $0x1
  400b4b:	e9 d0 ff ff ff       	jmpq   400b20 <_init+0x18>

0000000000400b50 <std::ios_base::Init::~Init()@plt>:
  400b50:	ff 25 ba 34 00 00    	jmpq   *0x34ba(%rip)        # 404010 <std::ios_base::Init::~Init()@GLIBCXX_3.4>
  400b56:	68 02 00 00 00       	pushq  $0x2
  400b5b:	e9 c0 ff ff ff       	jmpq   400b20 <_init+0x18>

0000000000400b60 <__cxa_atexit@plt>:
  400b60:	ff 25 b2 34 00 00    	jmpq   *0x34b2(%rip)        # 404018 <__cxa_atexit@GLIBC_2.2.5>
  400b66:	68 03 00 00 00       	pushq  $0x3
  400b6b:	e9 b0 ff ff ff       	jmpq   400b20 <_init+0x18>

0000000000400b70 <memcmp@plt>:
  400b70:	ff 25 aa 34 00 00    	jmpq   *0x34aa(%rip)        # 404020 <memcmp@GLIBC_2.2.5>
  400b76:	68 04 00 00 00       	pushq  $0x4
  400b7b:	e9 a0 ff ff ff       	jmpq   400b20 <_init+0x18>

0000000000400b80 <std::allocator<char>::~allocator()@plt>:
  400b80:	ff 25 a2 34 00 00    	jmpq   *0x34a2(%rip)        # 404028 <std::allocator<char>::~allocator()@GLIBCXX_3.4>
  400b86:	68 05 00 00 00       	pushq  $0x5
  400b8b:	e9 90 ff ff ff       	jmpq   400b20 <_init+0x18>

0000000000400b90 <operator delete(void*)@plt>:
  400b90:	ff 25 9a 34 00 00    	jmpq   *0x349a(%rip)        # 404030 <operator delete(void*)@GLIBCXX_3.4>
  400b96:	68 06 00 00 00       	pushq  $0x6
  400b9b:	e9 80 ff ff ff       	jmpq   400b20 <_init+0x18>

0000000000400ba0 <__gxx_personality_v0@plt>:
  400ba0:	ff 25 92 34 00 00    	jmpq   *0x3492(%rip)        # 404038 <__gxx_personality_v0@CXXABI_1.3>
  400ba6:	68 07 00 00 00       	pushq  $0x7
  400bab:	e9 70 ff ff ff       	jmpq   400b20 <_init+0x18>

Disassembly of section .text:

0000000000400bb0 <_start>:
_start():
  400bb0:	31 ed                	xor    %ebp,%ebp
  400bb2:	49 89 d1             	mov    %rdx,%r9
  400bb5:	5e                   	pop    %rsi
  400bb6:	48 89 e2             	mov    %rsp,%rdx
  400bb9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400bbd:	50                   	push   %rax
  400bbe:	54                   	push   %rsp
  400bbf:	49 c7 c0 80 19 40 00 	mov    $0x401980,%r8
  400bc6:	48 c7 c1 10 19 40 00 	mov    $0x401910,%rcx
  400bcd:	48 c7 c7 87 0c 40 00 	mov    $0x400c87,%rdi
  400bd4:	ff 15 fe 33 00 00    	callq  *0x33fe(%rip)        # 403fd8 <__libc_start_main@GLIBC_2.2.5>
  400bda:	f4                   	hlt    
  400bdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400be0 <deregister_tm_clones>:
deregister_tm_clones():
  400be0:	55                   	push   %rbp
  400be1:	b8 50 40 40 00       	mov    $0x404050,%eax
  400be6:	48 3d 50 40 40 00    	cmp    $0x404050,%rax
  400bec:	48 89 e5             	mov    %rsp,%rbp
  400bef:	74 17                	je     400c08 <deregister_tm_clones+0x28>
  400bf1:	b8 00 00 00 00       	mov    $0x0,%eax
  400bf6:	48 85 c0             	test   %rax,%rax
  400bf9:	74 0d                	je     400c08 <deregister_tm_clones+0x28>
  400bfb:	5d                   	pop    %rbp
  400bfc:	bf 50 40 40 00       	mov    $0x404050,%edi
  400c01:	ff e0                	jmpq   *%rax
  400c03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400c08:	5d                   	pop    %rbp
  400c09:	c3                   	retq   
  400c0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400c10 <register_tm_clones>:
register_tm_clones():
  400c10:	be 50 40 40 00       	mov    $0x404050,%esi
  400c15:	55                   	push   %rbp
  400c16:	48 81 ee 50 40 40 00 	sub    $0x404050,%rsi
  400c1d:	48 89 e5             	mov    %rsp,%rbp
  400c20:	48 c1 fe 03          	sar    $0x3,%rsi
  400c24:	48 89 f0             	mov    %rsi,%rax
  400c27:	48 c1 e8 3f          	shr    $0x3f,%rax
  400c2b:	48 01 c6             	add    %rax,%rsi
  400c2e:	48 d1 fe             	sar    %rsi
  400c31:	74 15                	je     400c48 <register_tm_clones+0x38>
  400c33:	b8 00 00 00 00       	mov    $0x0,%eax
  400c38:	48 85 c0             	test   %rax,%rax
  400c3b:	74 0b                	je     400c48 <register_tm_clones+0x38>
  400c3d:	5d                   	pop    %rbp
  400c3e:	bf 50 40 40 00       	mov    $0x404050,%edi
  400c43:	ff e0                	jmpq   *%rax
  400c45:	0f 1f 00             	nopl   (%rax)
  400c48:	5d                   	pop    %rbp
  400c49:	c3                   	retq   
  400c4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400c50 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  400c50:	80 3d f9 33 00 00 00 	cmpb   $0x0,0x33f9(%rip)        # 404050 <__bss_start>
  400c57:	75 17                	jne    400c70 <__do_global_dtors_aux+0x20>
  400c59:	55                   	push   %rbp
  400c5a:	48 89 e5             	mov    %rsp,%rbp
  400c5d:	e8 7e ff ff ff       	callq  400be0 <deregister_tm_clones>
  400c62:	c6 05 e7 33 00 00 01 	movb   $0x1,0x33e7(%rip)        # 404050 <__bss_start>
  400c69:	5d                   	pop    %rbp
  400c6a:	c3                   	retq   
  400c6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400c70:	f3 c3                	repz retq 
  400c72:	0f 1f 40 00          	nopl   0x0(%rax)
  400c76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c7d:	00 00 00 

0000000000400c80 <frame_dummy>:
frame_dummy():
  400c80:	55                   	push   %rbp
  400c81:	48 89 e5             	mov    %rsp,%rbp
  400c84:	5d                   	pop    %rbp
  400c85:	eb 89                	jmp    400c10 <register_tm_clones>

0000000000400c87 <main>:
main():
  400c87:	55                   	push   %rbp
  400c88:	48 89 e5             	mov    %rsp,%rbp
  400c8b:	53                   	push   %rbx
  400c8c:	48 83 ec 38          	sub    $0x38,%rsp
  400c90:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400c94:	48 89 c7             	mov    %rax,%rdi
  400c97:	e8 d2 01 00 00       	callq  400e6e <std::set<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::set()>
  400c9c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400ca0:	be 94 19 40 00       	mov    $0x401994,%esi
  400ca5:	48 89 c7             	mov    %rax,%rdi
  400ca8:	e8 bb 02 00 00       	callq  400f68 <_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS5_EE4findIA12_cEEDTtlSt23_Rb_tree_const_iteratorIS5_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_>
  400cad:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400cb1:	48 89 c7             	mov    %rax,%rdi
  400cb4:	e8 d1 01 00 00       	callq  400e8a <std::set<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~set()>
  400cb9:	b8 00 00 00 00       	mov    $0x0,%eax
  400cbe:	eb 1a                	jmp    400cda <main+0x53>
  400cc0:	48 89 c3             	mov    %rax,%rbx
  400cc3:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400cc7:	48 89 c7             	mov    %rax,%rdi
  400cca:	e8 bb 01 00 00       	callq  400e8a <std::set<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~set()>
  400ccf:	48 89 d8             	mov    %rbx,%rax
  400cd2:	48 89 c7             	mov    %rax,%rdi
  400cd5:	e8 56 fe ff ff       	callq  400b30 <_Unwind_Resume@plt>
  400cda:	48 83 c4 38          	add    $0x38,%rsp
  400cde:	5b                   	pop    %rbx
  400cdf:	5d                   	pop    %rbp
  400ce0:	c3                   	retq   

0000000000400ce1 <__static_initialization_and_destruction_0(int, int)>:
_Z41__static_initialization_and_destruction_0ii():
  400ce1:	55                   	push   %rbp
  400ce2:	48 89 e5             	mov    %rsp,%rbp
  400ce5:	48 83 ec 10          	sub    $0x10,%rsp
  400ce9:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400cec:	89 75 f8             	mov    %esi,-0x8(%rbp)
  400cef:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  400cf3:	75 27                	jne    400d1c <__static_initialization_and_destruction_0(int, int)+0x3b>
  400cf5:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  400cfc:	75 1e                	jne    400d1c <__static_initialization_and_destruction_0(int, int)+0x3b>
  400cfe:	bf 51 40 40 00       	mov    $0x404051,%edi
  400d03:	e8 38 fe ff ff       	callq  400b40 <std::ios_base::Init::Init()@plt>
  400d08:	ba 48 40 40 00       	mov    $0x404048,%edx
  400d0d:	be 51 40 40 00       	mov    $0x404051,%esi
  400d12:	bf 50 0b 40 00       	mov    $0x400b50,%edi
  400d17:	e8 44 fe ff ff       	callq  400b60 <__cxa_atexit@plt>
  400d1c:	90                   	nop
  400d1d:	c9                   	leaveq 
  400d1e:	c3                   	retq   

0000000000400d1f <_GLOBAL__sub_I_main>:
_GLOBAL__sub_I_main():
  400d1f:	55                   	push   %rbp
  400d20:	48 89 e5             	mov    %rsp,%rbp
  400d23:	be ff ff 00 00       	mov    $0xffff,%esi
  400d28:	bf 01 00 00 00       	mov    $0x1,%edi
  400d2d:	e8 af ff ff ff       	callq  400ce1 <__static_initialization_and_destruction_0(int, int)>
  400d32:	5d                   	pop    %rbp
  400d33:	c3                   	retq   

0000000000400d34 <std::char_traits<char>::compare(char const*, char const*, unsigned long)>:
_ZNSt11char_traitsIcE7compareEPKcS2_m():
  400d34:	55                   	push   %rbp
  400d35:	48 89 e5             	mov    %rsp,%rbp
  400d38:	48 83 ec 20          	sub    $0x20,%rsp
  400d3c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400d40:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400d44:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  400d48:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  400d4d:	75 07                	jne    400d56 <std::char_traits<char>::compare(char const*, char const*, unsigned long)+0x22>
  400d4f:	b8 00 00 00 00       	mov    $0x0,%eax
  400d54:	eb 17                	jmp    400d6d <std::char_traits<char>::compare(char const*, char const*, unsigned long)+0x39>
  400d56:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400d5a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  400d5e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400d62:	48 89 ce             	mov    %rcx,%rsi
  400d65:	48 89 c7             	mov    %rax,%rdi
  400d68:	e8 03 fe ff ff       	callq  400b70 <memcmp@plt>
  400d6d:	c9                   	leaveq 
  400d6e:	c3                   	retq   

0000000000400d6f <std::char_traits<char>::length(char const*)>:
_ZNSt11char_traitsIcE6lengthEPKc():
  400d6f:	55                   	push   %rbp
  400d70:	48 89 e5             	mov    %rsp,%rbp
  400d73:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400d77:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400d7b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  400d82:	48 89 c2             	mov    %rax,%rdx
  400d85:	b8 00 00 00 00       	mov    $0x0,%eax
  400d8a:	48 89 d7             	mov    %rdx,%rdi
  400d8d:	f2 ae                	repnz scas %es:(%rdi),%al
  400d8f:	48 89 c8             	mov    %rcx,%rax
  400d92:	48 f7 d0             	not    %rax
  400d95:	48 83 e8 01          	sub    $0x1,%rax
  400d99:	5d                   	pop    %rbp
  400d9a:	c3                   	retq   
  400d9b:	90                   	nop

0000000000400d9c <std::_Rb_tree_header::_Rb_tree_header()>:
_ZNSt15_Rb_tree_headerC2Ev():
  400d9c:	55                   	push   %rbp
  400d9d:	48 89 e5             	mov    %rsp,%rbp
  400da0:	48 83 ec 10          	sub    $0x10,%rsp
  400da4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400da8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400dac:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  400db2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400db6:	48 89 c7             	mov    %rax,%rdi
  400db9:	e8 04 00 00 00       	callq  400dc2 <std::_Rb_tree_header::_M_reset()>
  400dbe:	90                   	nop
  400dbf:	c9                   	leaveq 
  400dc0:	c3                   	retq   
  400dc1:	90                   	nop

0000000000400dc2 <std::_Rb_tree_header::_M_reset()>:
_ZNSt15_Rb_tree_header8_M_resetEv():
  400dc2:	55                   	push   %rbp
  400dc3:	48 89 e5             	mov    %rsp,%rbp
  400dc6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400dca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400dce:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400dd5:	00 
  400dd6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400dda:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400dde:	48 89 50 10          	mov    %rdx,0x10(%rax)
  400de2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400de6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400dea:	48 89 50 18          	mov    %rdx,0x18(%rax)
  400dee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400df2:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
  400df9:	00 
  400dfa:	90                   	nop
  400dfb:	5d                   	pop    %rbp
  400dfc:	c3                   	retq   
  400dfd:	90                   	nop

0000000000400dfe <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_Rb_tree_impl<std::less<void>, true>::_Rb_tree_impl()>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE13_Rb_tree_implIS9_Lb1EEC2Ev():
  400dfe:	55                   	push   %rbp
  400dff:	48 89 e5             	mov    %rsp,%rbp
  400e02:	48 83 ec 10          	sub    $0x10,%rsp
  400e06:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400e0a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e0e:	48 89 c7             	mov    %rax,%rdi
  400e11:	e8 d4 00 00 00       	callq  400eea <std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::allocator()>
  400e16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e1a:	48 89 c7             	mov    %rax,%rdi
  400e1d:	e8 00 01 00 00       	callq  400f22 <std::_Rb_tree_key_compare<std::less<void> >::_Rb_tree_key_compare()>
  400e22:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e26:	48 83 c0 08          	add    $0x8,%rax
  400e2a:	48 89 c7             	mov    %rax,%rdi
  400e2d:	e8 6a ff ff ff       	callq  400d9c <std::_Rb_tree_header::_Rb_tree_header()>
  400e32:	90                   	nop
  400e33:	c9                   	leaveq 
  400e34:	c3                   	retq   
  400e35:	90                   	nop

0000000000400e36 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_Rb_tree_impl<std::less<void>, true>::~_Rb_tree_impl()>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE13_Rb_tree_implIS9_Lb1EED2Ev():
  400e36:	55                   	push   %rbp
  400e37:	48 89 e5             	mov    %rsp,%rbp
  400e3a:	48 83 ec 10          	sub    $0x10,%rsp
  400e3e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400e42:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e46:	48 89 c7             	mov    %rax,%rdi
  400e49:	e8 b8 00 00 00       	callq  400f06 <std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~allocator()>
  400e4e:	90                   	nop
  400e4f:	c9                   	leaveq 
  400e50:	c3                   	retq   
  400e51:	90                   	nop

0000000000400e52 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_Rb_tree()>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EEC2Ev():
  400e52:	55                   	push   %rbp
  400e53:	48 89 e5             	mov    %rsp,%rbp
  400e56:	48 83 ec 10          	sub    $0x10,%rsp
  400e5a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400e5e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e62:	48 89 c7             	mov    %rax,%rdi
  400e65:	e8 94 ff ff ff       	callq  400dfe <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_Rb_tree_impl<std::less<void>, true>::_Rb_tree_impl()>
  400e6a:	90                   	nop
  400e6b:	c9                   	leaveq 
  400e6c:	c3                   	retq   
  400e6d:	90                   	nop

0000000000400e6e <std::set<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::set()>:
_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS5_EEC2Ev():
  400e6e:	55                   	push   %rbp
  400e6f:	48 89 e5             	mov    %rsp,%rbp
  400e72:	48 83 ec 10          	sub    $0x10,%rsp
  400e76:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400e7a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e7e:	48 89 c7             	mov    %rax,%rdi
  400e81:	e8 cc ff ff ff       	callq  400e52 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_Rb_tree()>
  400e86:	90                   	nop
  400e87:	c9                   	leaveq 
  400e88:	c3                   	retq   
  400e89:	90                   	nop

0000000000400e8a <std::set<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~set()>:
_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS5_EED2Ev():
  400e8a:	55                   	push   %rbp
  400e8b:	48 89 e5             	mov    %rsp,%rbp
  400e8e:	48 83 ec 10          	sub    $0x10,%rsp
  400e92:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400e96:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e9a:	48 89 c7             	mov    %rax,%rdi
  400e9d:	e8 8c 00 00 00       	callq  400f2e <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~_Rb_tree()>
  400ea2:	90                   	nop
  400ea3:	c9                   	leaveq 
  400ea4:	c3                   	retq   
  400ea5:	90                   	nop

0000000000400ea6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev():
  400ea6:	55                   	push   %rbp
  400ea7:	48 89 e5             	mov    %rsp,%rbp
  400eaa:	48 83 ec 10          	sub    $0x10,%rsp
  400eae:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400eb2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400eb6:	48 89 c7             	mov    %rax,%rdi
  400eb9:	e8 c2 fc ff ff       	callq  400b80 <std::allocator<char>::~allocator()@plt>
  400ebe:	90                   	nop
  400ebf:	c9                   	leaveq 
  400ec0:	c3                   	retq   
  400ec1:	90                   	nop

0000000000400ec2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev():
  400ec2:	55                   	push   %rbp
  400ec3:	48 89 e5             	mov    %rsp,%rbp
  400ec6:	48 83 ec 10          	sub    $0x10,%rsp
  400eca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400ece:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400ed2:	48 89 c7             	mov    %rax,%rdi
  400ed5:	e8 e0 00 00 00       	callq  400fba <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()>
  400eda:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400ede:	48 89 c7             	mov    %rax,%rdi
  400ee1:	e8 c0 ff ff ff       	callq  400ea6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()>
  400ee6:	90                   	nop
  400ee7:	c9                   	leaveq 
  400ee8:	c3                   	retq   
  400ee9:	90                   	nop

0000000000400eea <std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::allocator()>:
_ZNSaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev():
  400eea:	55                   	push   %rbp
  400eeb:	48 89 e5             	mov    %rsp,%rbp
  400eee:	48 83 ec 10          	sub    $0x10,%rsp
  400ef2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400ef6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400efa:	48 89 c7             	mov    %rax,%rdi
  400efd:	e8 04 01 00 00       	callq  401006 <__gnu_cxx::new_allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::new_allocator()>
  400f02:	90                   	nop
  400f03:	c9                   	leaveq 
  400f04:	c3                   	retq   
  400f05:	90                   	nop

0000000000400f06 <std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~allocator()>:
_ZNSaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev():
  400f06:	55                   	push   %rbp
  400f07:	48 89 e5             	mov    %rsp,%rbp
  400f0a:	48 83 ec 10          	sub    $0x10,%rsp
  400f0e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400f12:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f16:	48 89 c7             	mov    %rax,%rdi
  400f19:	e8 f4 00 00 00       	callq  401012 <__gnu_cxx::new_allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~new_allocator()>
  400f1e:	90                   	nop
  400f1f:	c9                   	leaveq 
  400f20:	c3                   	retq   
  400f21:	90                   	nop

0000000000400f22 <std::_Rb_tree_key_compare<std::less<void> >::_Rb_tree_key_compare()>:
_ZNSt20_Rb_tree_key_compareISt4lessIvEEC2Ev():
  400f22:	55                   	push   %rbp
  400f23:	48 89 e5             	mov    %rsp,%rbp
  400f26:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400f2a:	90                   	nop
  400f2b:	5d                   	pop    %rbp
  400f2c:	c3                   	retq   
  400f2d:	90                   	nop

0000000000400f2e <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~_Rb_tree()>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EED1Ev():
  400f2e:	55                   	push   %rbp
  400f2f:	48 89 e5             	mov    %rsp,%rbp
  400f32:	48 83 ec 10          	sub    $0x10,%rsp
  400f36:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400f3a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f3e:	48 89 c7             	mov    %rax,%rdi
  400f41:	e8 3e 01 00 00       	callq  401084 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_begin()>
  400f46:	48 89 c2             	mov    %rax,%rdx
  400f49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f4d:	48 89 d6             	mov    %rdx,%rsi
  400f50:	48 89 c7             	mov    %rax,%rdi
  400f53:	e8 c6 00 00 00       	callq  40101e <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_erase(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)>
  400f58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f5c:	48 89 c7             	mov    %rax,%rdi
  400f5f:	e8 d2 fe ff ff       	callq  400e36 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_Rb_tree_impl<std::less<void>, true>::~_Rb_tree_impl()>
  400f64:	90                   	nop
  400f65:	c9                   	leaveq 
  400f66:	c3                   	retq   
  400f67:	90                   	nop

0000000000400f68 <_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS5_EE4findIA12_cEEDTtlSt23_Rb_tree_const_iteratorIS5_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_>:
_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS5_EE4findIA12_cEEDTtlSt23_Rb_tree_const_iteratorIS5_EcldtdtdefpT4_M_t10_M_find_trfp_EEERKT_():
  400f68:	55                   	push   %rbp
  400f69:	48 89 e5             	mov    %rsp,%rbp
  400f6c:	48 83 ec 20          	sub    $0x20,%rsp
  400f70:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400f74:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400f78:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400f7c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  400f80:	48 89 d6             	mov    %rdx,%rsi
  400f83:	48 89 c7             	mov    %rax,%rdi
  400f86:	e8 0b 01 00 00       	callq  401096 <std::_Rb_tree_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_find_tr<char [12], void>(char const (&) [12])>
  400f8b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400f8f:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
  400f93:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400f97:	48 89 d6             	mov    %rdx,%rsi
  400f9a:	48 89 c7             	mov    %rax,%rdi
  400f9d:	e8 32 01 00 00       	callq  4010d4 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_Rb_tree_const_iterator(std::_Rb_tree_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&)>
  400fa2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400fa6:	c9                   	leaveq 
  400fa7:	c3                   	retq   

0000000000400fa8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv():
  400fa8:	55                   	push   %rbp
  400fa9:	48 89 e5             	mov    %rsp,%rbp
  400fac:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400fb0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400fb4:	48 8b 00             	mov    (%rax),%rax
  400fb7:	5d                   	pop    %rbp
  400fb8:	c3                   	retq   
  400fb9:	90                   	nop

0000000000400fba <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv():
  400fba:	55                   	push   %rbp
  400fbb:	48 89 e5             	mov    %rsp,%rbp
  400fbe:	48 83 ec 10          	sub    $0x10,%rsp
  400fc2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400fc6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400fca:	48 89 c7             	mov    %rax,%rdi
  400fcd:	e8 20 01 00 00       	callq  4010f2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_is_local() const>
  400fd2:	83 f0 01             	xor    $0x1,%eax
  400fd5:	84 c0                	test   %al,%al
  400fd7:	74 17                	je     400ff0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()+0x36>
  400fd9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400fdd:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400fe1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400fe5:	48 89 d6             	mov    %rdx,%rsi
  400fe8:	48 89 c7             	mov    %rax,%rdi
  400feb:	e8 38 01 00 00       	callq  401128 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_destroy(unsigned long)>
  400ff0:	90                   	nop
  400ff1:	c9                   	leaveq 
  400ff2:	c3                   	retq   
  400ff3:	90                   	nop

0000000000400ff4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::size() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv():
  400ff4:	55                   	push   %rbp
  400ff5:	48 89 e5             	mov    %rsp,%rbp
  400ff8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400ffc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401000:	48 8b 40 08          	mov    0x8(%rax),%rax
  401004:	5d                   	pop    %rbp
  401005:	c3                   	retq   

0000000000401006 <__gnu_cxx::new_allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::new_allocator()>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev():
  401006:	55                   	push   %rbp
  401007:	48 89 e5             	mov    %rsp,%rbp
  40100a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40100e:	90                   	nop
  40100f:	5d                   	pop    %rbp
  401010:	c3                   	retq   
  401011:	90                   	nop

0000000000401012 <__gnu_cxx::new_allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::~new_allocator()>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev():
  401012:	55                   	push   %rbp
  401013:	48 89 e5             	mov    %rsp,%rbp
  401016:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40101a:	90                   	nop
  40101b:	5d                   	pop    %rbp
  40101c:	c3                   	retq   
  40101d:	90                   	nop

000000000040101e <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_erase(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E():
  40101e:	55                   	push   %rbp
  40101f:	48 89 e5             	mov    %rsp,%rbp
  401022:	48 83 ec 20          	sub    $0x20,%rsp
  401026:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40102a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40102e:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  401033:	74 4b                	je     401080 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_erase(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)+0x62>
  401035:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401039:	48 89 c7             	mov    %rax,%rdi
  40103c:	e8 43 01 00 00       	callq  401184 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_right(std::_Rb_tree_node_base*)>
  401041:	48 89 c2             	mov    %rax,%rdx
  401044:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401048:	48 89 d6             	mov    %rdx,%rsi
  40104b:	48 89 c7             	mov    %rax,%rdi
  40104e:	e8 cb ff ff ff       	callq  40101e <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_erase(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)>
  401053:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401057:	48 89 c7             	mov    %rax,%rdi
  40105a:	e8 37 01 00 00       	callq  401196 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_left(std::_Rb_tree_node_base*)>
  40105f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401063:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401067:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40106b:	48 89 d6             	mov    %rdx,%rsi
  40106e:	48 89 c7             	mov    %rax,%rdi
  401071:	e8 32 01 00 00       	callq  4011a8 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_drop_node(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)>
  401076:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40107a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40107e:	eb ae                	jmp    40102e <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_erase(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)+0x10>
  401080:	90                   	nop
  401081:	c9                   	leaveq 
  401082:	c3                   	retq   
  401083:	90                   	nop

0000000000401084 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_begin()>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE8_M_beginEv():
  401084:	55                   	push   %rbp
  401085:	48 89 e5             	mov    %rsp,%rbp
  401088:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40108c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401090:	48 8b 40 10          	mov    0x10(%rax),%rax
  401094:	5d                   	pop    %rbp
  401095:	c3                   	retq   

0000000000401096 <std::_Rb_tree_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_find_tr<char [12], void>(char const (&) [12])>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE10_M_find_trIA12_cvEESt17_Rb_tree_iteratorIS5_ERKT_():
  401096:	55                   	push   %rbp
  401097:	48 89 e5             	mov    %rsp,%rbp
  40109a:	48 83 ec 20          	sub    $0x20,%rsp
  40109e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4010a2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4010a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4010aa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4010ae:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4010b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4010b6:	48 89 d6             	mov    %rdx,%rsi
  4010b9:	48 89 c7             	mov    %rax,%rdi
  4010bc:	e8 21 01 00 00       	callq  4011e2 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_find_tr<char [12], void>(char const (&) [12]) const>
  4010c1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4010c5:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  4010c9:	48 89 c7             	mov    %rax,%rdi
  4010cc:	e8 b1 01 00 00       	callq  401282 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_const_cast() const>
  4010d1:	c9                   	leaveq 
  4010d2:	c3                   	retq   
  4010d3:	90                   	nop

00000000004010d4 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_Rb_tree_const_iterator(std::_Rb_tree_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&)>:
_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKSt17_Rb_tree_iteratorIS5_E():
  4010d4:	55                   	push   %rbp
  4010d5:	48 89 e5             	mov    %rsp,%rbp
  4010d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4010dc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4010e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4010e4:	48 8b 10             	mov    (%rax),%rdx
  4010e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4010eb:	48 89 10             	mov    %rdx,(%rax)
  4010ee:	90                   	nop
  4010ef:	5d                   	pop    %rbp
  4010f0:	c3                   	retq   
  4010f1:	90                   	nop

00000000004010f2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_is_local() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv():
  4010f2:	55                   	push   %rbp
  4010f3:	48 89 e5             	mov    %rsp,%rbp
  4010f6:	53                   	push   %rbx
  4010f7:	48 83 ec 18          	sub    $0x18,%rsp
  4010fb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4010ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401103:	48 89 c7             	mov    %rax,%rdi
  401106:	e8 9d fe ff ff       	callq  400fa8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  40110b:	48 89 c3             	mov    %rax,%rbx
  40110e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401112:	48 89 c7             	mov    %rax,%rdi
  401115:	e8 90 01 00 00       	callq  4012aa <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data() const>
  40111a:	48 39 c3             	cmp    %rax,%rbx
  40111d:	0f 94 c0             	sete   %al
  401120:	48 83 c4 18          	add    $0x18,%rsp
  401124:	5b                   	pop    %rbx
  401125:	5d                   	pop    %rbp
  401126:	c3                   	retq   
  401127:	90                   	nop

0000000000401128 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_destroy(unsigned long)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm():
  401128:	55                   	push   %rbp
  401129:	48 89 e5             	mov    %rsp,%rbp
  40112c:	41 54                	push   %r12
  40112e:	53                   	push   %rbx
  40112f:	48 83 ec 10          	sub    $0x10,%rsp
  401133:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401137:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40113b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40113f:	48 8d 58 01          	lea    0x1(%rax),%rbx
  401143:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401147:	48 89 c7             	mov    %rax,%rdi
  40114a:	e8 59 fe ff ff       	callq  400fa8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  40114f:	49 89 c4             	mov    %rax,%r12
  401152:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401156:	48 89 c7             	mov    %rax,%rdi
  401159:	e8 18 00 00 00       	callq  401176 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator()>
  40115e:	48 89 da             	mov    %rbx,%rdx
  401161:	4c 89 e6             	mov    %r12,%rsi
  401164:	48 89 c7             	mov    %rax,%rdi
  401167:	e8 5c 01 00 00       	callq  4012c8 <std::allocator_traits<std::allocator<char> >::deallocate(std::allocator<char>&, char*, unsigned long)>
  40116c:	90                   	nop
  40116d:	48 83 c4 10          	add    $0x10,%rsp
  401171:	5b                   	pop    %rbx
  401172:	41 5c                	pop    %r12
  401174:	5d                   	pop    %rbp
  401175:	c3                   	retq   

0000000000401176 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator()>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv():
  401176:	55                   	push   %rbp
  401177:	48 89 e5             	mov    %rsp,%rbp
  40117a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40117e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401182:	5d                   	pop    %rbp
  401183:	c3                   	retq   

0000000000401184 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_right(std::_Rb_tree_node_base*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base():
  401184:	55                   	push   %rbp
  401185:	48 89 e5             	mov    %rsp,%rbp
  401188:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40118c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401190:	48 8b 40 18          	mov    0x18(%rax),%rax
  401194:	5d                   	pop    %rbp
  401195:	c3                   	retq   

0000000000401196 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_left(std::_Rb_tree_node_base*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base():
  401196:	55                   	push   %rbp
  401197:	48 89 e5             	mov    %rsp,%rbp
  40119a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40119e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4011a2:	48 8b 40 10          	mov    0x10(%rax),%rax
  4011a6:	5d                   	pop    %rbp
  4011a7:	c3                   	retq   

00000000004011a8 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_drop_node(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E():
  4011a8:	55                   	push   %rbp
  4011a9:	48 89 e5             	mov    %rsp,%rbp
  4011ac:	48 83 ec 10          	sub    $0x10,%rsp
  4011b0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4011b4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4011b8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4011bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4011c0:	48 89 d6             	mov    %rdx,%rsi
  4011c3:	48 89 c7             	mov    %rax,%rdi
  4011c6:	e8 2b 01 00 00       	callq  4012f6 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_destroy_node(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)>
  4011cb:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4011cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4011d3:	48 89 d6             	mov    %rdx,%rsi
  4011d6:	48 89 c7             	mov    %rax,%rdi
  4011d9:	e8 58 01 00 00       	callq  401336 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_put_node(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)>
  4011de:	90                   	nop
  4011df:	c9                   	leaveq 
  4011e0:	c3                   	retq   
  4011e1:	90                   	nop

00000000004011e2 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_find_tr<char [12], void>(char const (&) [12]) const>:
_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE10_M_find_trIA12_cvEESt23_Rb_tree_const_iteratorIS5_ERKT_():
  4011e2:	55                   	push   %rbp
  4011e3:	48 89 e5             	mov    %rsp,%rbp
  4011e6:	53                   	push   %rbx
  4011e7:	48 83 ec 28          	sub    $0x28,%rsp
  4011eb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4011ef:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4011f3:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  4011f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4011fb:	48 89 d6             	mov    %rdx,%rsi
  4011fe:	48 89 c7             	mov    %rax,%rdi
  401201:	e8 66 01 00 00       	callq  40136c <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_lower_bound_tr<char [12], void>(char const (&) [12]) const>
  401206:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40120a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40120e:	48 89 c7             	mov    %rax,%rdi
  401211:	e8 04 02 00 00       	callq  40141a <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::end() const>
  401216:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40121a:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  40121e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401222:	48 89 d6             	mov    %rdx,%rsi
  401225:	48 89 c7             	mov    %rax,%rdi
  401228:	e8 17 02 00 00       	callq  401444 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::operator!=(std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&) const>
  40122d:	84 c0                	test   %al,%al
  40122f:	74 2d                	je     40125e <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_find_tr<char [12], void>(char const (&) [12]) const+0x7c>
  401231:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
  401235:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401239:	48 89 c7             	mov    %rax,%rdi
  40123c:	e8 25 02 00 00       	callq  401466 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_key(std::_Rb_tree_node_base const*)>
  401241:	48 89 c2             	mov    %rax,%rdx
  401244:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401248:	48 89 c6             	mov    %rax,%rsi
  40124b:	48 89 df             	mov    %rbx,%rdi
  40124e:	e8 3f 02 00 00       	callq  401492 <decltype (((forward<char const (&) [12]>)({parm#1}))<((forward<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>)({parm#2}))) std::less<void>::operator()<char const (&) [12], std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>(char const (&) [12], std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const>
  401253:	84 c0                	test   %al,%al
  401255:	74 07                	je     40125e <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_find_tr<char [12], void>(char const (&) [12]) const+0x7c>
  401257:	b8 01 00 00 00       	mov    $0x1,%eax
  40125c:	eb 05                	jmp    401263 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_find_tr<char [12], void>(char const (&) [12]) const+0x81>
  40125e:	b8 00 00 00 00       	mov    $0x0,%eax
  401263:	84 c0                	test   %al,%al
  401265:	74 10                	je     401277 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_find_tr<char [12], void>(char const (&) [12]) const+0x95>
  401267:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40126b:	48 89 c7             	mov    %rax,%rdi
  40126e:	e8 a7 01 00 00       	callq  40141a <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::end() const>
  401273:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401277:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40127b:	48 83 c4 28          	add    $0x28,%rsp
  40127f:	5b                   	pop    %rbx
  401280:	5d                   	pop    %rbp
  401281:	c3                   	retq   

0000000000401282 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_const_cast() const>:
_ZNKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13_M_const_castEv():
  401282:	55                   	push   %rbp
  401283:	48 89 e5             	mov    %rsp,%rbp
  401286:	48 83 ec 20          	sub    $0x20,%rsp
  40128a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40128e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401292:	48 8b 10             	mov    (%rax),%rdx
  401295:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401299:	48 89 d6             	mov    %rdx,%rsi
  40129c:	48 89 c7             	mov    %rax,%rdi
  40129f:	e8 30 02 00 00       	callq  4014d4 <std::_Rb_tree_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_Rb_tree_iterator(std::_Rb_tree_node_base*)>
  4012a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4012a8:	c9                   	leaveq 
  4012a9:	c3                   	retq   

00000000004012aa <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data() const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv():
  4012aa:	55                   	push   %rbp
  4012ab:	48 89 e5             	mov    %rsp,%rbp
  4012ae:	48 83 ec 10          	sub    $0x10,%rsp
  4012b2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4012b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4012ba:	48 83 c0 10          	add    $0x10,%rax
  4012be:	48 89 c7             	mov    %rax,%rdi
  4012c1:	e8 28 02 00 00       	callq  4014ee <std::pointer_traits<char const*>::pointer_to(char const&)>
  4012c6:	c9                   	leaveq 
  4012c7:	c3                   	retq   

00000000004012c8 <std::allocator_traits<std::allocator<char> >::deallocate(std::allocator<char>&, char*, unsigned long)>:
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm():
  4012c8:	55                   	push   %rbp
  4012c9:	48 89 e5             	mov    %rsp,%rbp
  4012cc:	48 83 ec 20          	sub    $0x20,%rsp
  4012d0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4012d4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4012d8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4012dc:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4012e0:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4012e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4012e8:	48 89 ce             	mov    %rcx,%rsi
  4012eb:	48 89 c7             	mov    %rax,%rdi
  4012ee:	e8 15 02 00 00       	callq  401508 <__gnu_cxx::new_allocator<char>::deallocate(char*, unsigned long)>
  4012f3:	90                   	nop
  4012f4:	c9                   	leaveq 
  4012f5:	c3                   	retq   

00000000004012f6 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_destroy_node(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E():
  4012f6:	55                   	push   %rbp
  4012f7:	48 89 e5             	mov    %rsp,%rbp
  4012fa:	53                   	push   %rbx
  4012fb:	48 83 ec 18          	sub    $0x18,%rsp
  4012ff:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401303:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401307:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40130b:	48 89 c7             	mov    %rax,%rdi
  40130e:	e8 25 02 00 00       	callq  401538 <std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_valptr()>
  401313:	48 89 c3             	mov    %rax,%rbx
  401316:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40131a:	48 89 c7             	mov    %rax,%rdi
  40131d:	e8 08 02 00 00       	callq  40152a <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_get_Node_allocator()>
  401322:	48 89 de             	mov    %rbx,%rsi
  401325:	48 89 c7             	mov    %rax,%rdi
  401328:	e8 29 02 00 00       	callq  401556 <void std::allocator_traits<std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::destroy<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >*)>
  40132d:	90                   	nop
  40132e:	48 83 c4 18          	add    $0x18,%rsp
  401332:	5b                   	pop    %rbx
  401333:	5d                   	pop    %rbp
  401334:	c3                   	retq   
  401335:	90                   	nop

0000000000401336 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_put_node(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E():
  401336:	55                   	push   %rbp
  401337:	48 89 e5             	mov    %rsp,%rbp
  40133a:	48 83 ec 10          	sub    $0x10,%rsp
  40133e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401342:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401346:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40134a:	48 89 c7             	mov    %rax,%rdi
  40134d:	e8 d8 01 00 00       	callq  40152a <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_get_Node_allocator()>
  401352:	48 89 c1             	mov    %rax,%rcx
  401355:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401359:	ba 01 00 00 00       	mov    $0x1,%edx
  40135e:	48 89 c6             	mov    %rax,%rsi
  401361:	48 89 cf             	mov    %rcx,%rdi
  401364:	e8 13 02 00 00       	callq  40157c <std::allocator_traits<std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::deallocate(std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&, std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*, unsigned long)>
  401369:	90                   	nop
  40136a:	c9                   	leaveq 
  40136b:	c3                   	retq   

000000000040136c <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_lower_bound_tr<char [12], void>(char const (&) [12]) const>:
_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE17_M_lower_bound_trIA12_cvEESt23_Rb_tree_const_iteratorIS5_ERKT_():
  40136c:	55                   	push   %rbp
  40136d:	48 89 e5             	mov    %rsp,%rbp
  401370:	53                   	push   %rbx
  401371:	48 83 ec 38          	sub    $0x38,%rsp
  401375:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  401379:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  40137d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401381:	48 89 c7             	mov    %rax,%rdi
  401384:	e8 21 02 00 00       	callq  4015aa <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_begin() const>
  401389:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40138d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401391:	48 89 c7             	mov    %rax,%rdi
  401394:	e8 23 02 00 00       	callq  4015bc <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_end() const>
  401399:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40139d:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  4013a2:	74 58                	je     4013fc <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_lower_bound_tr<char [12], void>(char const (&) [12]) const+0x90>
  4013a4:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
  4013a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4013ac:	48 89 c7             	mov    %rax,%rdi
  4013af:	e8 1a 02 00 00       	callq  4015ce <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_key(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > const*)>
  4013b4:	48 89 c1             	mov    %rax,%rcx
  4013b7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4013bb:	48 89 c2             	mov    %rax,%rdx
  4013be:	48 89 ce             	mov    %rcx,%rsi
  4013c1:	48 89 df             	mov    %rbx,%rdi
  4013c4:	e8 31 02 00 00       	callq  4015fa <decltype (((forward<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>)({parm#1}))<((forward<char const (&) [12]>)({parm#2}))) std::less<void>::operator()<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const (&) [12]>(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const (&) [12]) const>
  4013c9:	83 f0 01             	xor    $0x1,%eax
  4013cc:	84 c0                	test   %al,%al
  4013ce:	74 1a                	je     4013ea <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_lower_bound_tr<char [12], void>(char const (&) [12]) const+0x7e>
  4013d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4013d4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4013d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4013dc:	48 89 c7             	mov    %rax,%rdi
  4013df:	e8 58 02 00 00       	callq  40163c <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_left(std::_Rb_tree_node_base const*)>
  4013e4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4013e8:	eb b3                	jmp    40139d <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_lower_bound_tr<char [12], void>(char const (&) [12]) const+0x31>
  4013ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4013ee:	48 89 c7             	mov    %rax,%rdi
  4013f1:	e8 58 02 00 00       	callq  40164e <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_right(std::_Rb_tree_node_base const*)>
  4013f6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4013fa:	eb a1                	jmp    40139d <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_lower_bound_tr<char [12], void>(char const (&) [12]) const+0x31>
  4013fc:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401400:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  401404:	48 89 d6             	mov    %rdx,%rsi
  401407:	48 89 c7             	mov    %rax,%rdi
  40140a:	e8 51 02 00 00       	callq  401660 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_Rb_tree_const_iterator(std::_Rb_tree_node_base const*)>
  40140f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401413:	48 83 c4 38          	add    $0x38,%rsp
  401417:	5b                   	pop    %rbx
  401418:	5d                   	pop    %rbp
  401419:	c3                   	retq   

000000000040141a <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::end() const>:
_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE3endEv():
  40141a:	55                   	push   %rbp
  40141b:	48 89 e5             	mov    %rsp,%rbp
  40141e:	48 83 ec 20          	sub    $0x20,%rsp
  401422:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401426:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40142a:	48 8d 50 08          	lea    0x8(%rax),%rdx
  40142e:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  401432:	48 89 d6             	mov    %rdx,%rsi
  401435:	48 89 c7             	mov    %rax,%rdi
  401438:	e8 23 02 00 00       	callq  401660 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_Rb_tree_const_iterator(std::_Rb_tree_node_base const*)>
  40143d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401441:	c9                   	leaveq 
  401442:	c3                   	retq   
  401443:	90                   	nop

0000000000401444 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::operator!=(std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > const&) const>:
_ZNKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEneERKS6_():
  401444:	55                   	push   %rbp
  401445:	48 89 e5             	mov    %rsp,%rbp
  401448:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40144c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401450:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401454:	48 8b 10             	mov    (%rax),%rdx
  401457:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40145b:	48 8b 00             	mov    (%rax),%rax
  40145e:	48 39 c2             	cmp    %rax,%rdx
  401461:	0f 95 c0             	setne  %al
  401464:	5d                   	pop    %rbp
  401465:	c3                   	retq   

0000000000401466 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_key(std::_Rb_tree_node_base const*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base():
  401466:	55                   	push   %rbp
  401467:	48 89 e5             	mov    %rsp,%rbp
  40146a:	48 83 ec 20          	sub    $0x20,%rsp
  40146e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401472:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401476:	48 89 c7             	mov    %rax,%rdi
  401479:	e8 fc 01 00 00       	callq  40167a <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_value(std::_Rb_tree_node_base const*)>
  40147e:	48 89 c2             	mov    %rax,%rdx
  401481:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
  401485:	48 89 d6             	mov    %rdx,%rsi
  401488:	48 89 c7             	mov    %rax,%rdi
  40148b:	e8 04 02 00 00       	callq  401694 <std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::operator()(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const>
  401490:	c9                   	leaveq 
  401491:	c3                   	retq   

0000000000401492 <decltype (((forward<char const (&) [12]>)({parm#1}))<((forward<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>)({parm#2}))) std::less<void>::operator()<char const (&) [12], std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>(char const (&) [12], std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const>:
_ZNKSt4lessIvEclIRA12_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTltcl7forwardIT_Efp_Ecl7forwardIT0_Efp0_EEOSD_OSE_():
  401492:	55                   	push   %rbp
  401493:	48 89 e5             	mov    %rsp,%rbp
  401496:	53                   	push   %rbx
  401497:	48 83 ec 28          	sub    $0x28,%rsp
  40149b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40149f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4014a3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4014a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4014ab:	48 89 c7             	mov    %rax,%rdi
  4014ae:	e8 01 02 00 00       	callq  4016b4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const& std::forward<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>(std::remove_reference<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>::type&)>
  4014b3:	48 89 c3             	mov    %rax,%rbx
  4014b6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4014ba:	48 89 c7             	mov    %rax,%rdi
  4014bd:	e8 e4 01 00 00       	callq  4016a6 <char const (&std::forward<char const (&) [12]>(std::remove_reference<char const (&) [12]>::type&)) [12]>
  4014c2:	48 89 de             	mov    %rbx,%rsi
  4014c5:	48 89 c7             	mov    %rax,%rdi
  4014c8:	e8 f5 01 00 00       	callq  4016c2 <bool std::operator< <char, std::char_traits<char>, std::allocator<char> >(char const*, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)>
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	5b                   	pop    %rbx
  4014d2:	5d                   	pop    %rbp
  4014d3:	c3                   	retq   

00000000004014d4 <std::_Rb_tree_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_Rb_tree_iterator(std::_Rb_tree_node_base*)>:
_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPSt18_Rb_tree_node_base():
  4014d4:	55                   	push   %rbp
  4014d5:	48 89 e5             	mov    %rsp,%rbp
  4014d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4014dc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4014e0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4014e4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4014e8:	48 89 10             	mov    %rdx,(%rax)
  4014eb:	90                   	nop
  4014ec:	5d                   	pop    %rbp
  4014ed:	c3                   	retq   

00000000004014ee <std::pointer_traits<char const*>::pointer_to(char const&)>:
_ZNSt14pointer_traitsIPKcE10pointer_toERS0_():
  4014ee:	55                   	push   %rbp
  4014ef:	48 89 e5             	mov    %rsp,%rbp
  4014f2:	48 83 ec 10          	sub    $0x10,%rsp
  4014f6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4014fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4014fe:	48 89 c7             	mov    %rax,%rdi
  401501:	e8 e6 01 00 00       	callq  4016ec <char const* std::addressof<char const>(char const&)>
  401506:	c9                   	leaveq 
  401507:	c3                   	retq   

0000000000401508 <__gnu_cxx::new_allocator<char>::deallocate(char*, unsigned long)>:
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm():
  401508:	55                   	push   %rbp
  401509:	48 89 e5             	mov    %rsp,%rbp
  40150c:	48 83 ec 20          	sub    $0x20,%rsp
  401510:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401514:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401518:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40151c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401520:	48 89 c7             	mov    %rax,%rdi
  401523:	e8 68 f6 ff ff       	callq  400b90 <operator delete(void*)@plt>
  401528:	c9                   	leaveq 
  401529:	c3                   	retq   

000000000040152a <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_get_Node_allocator()>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE21_M_get_Node_allocatorEv():
  40152a:	55                   	push   %rbp
  40152b:	48 89 e5             	mov    %rsp,%rbp
  40152e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401532:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401536:	5d                   	pop    %rbp
  401537:	c3                   	retq   

0000000000401538 <std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_valptr()>:
_ZNSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv():
  401538:	55                   	push   %rbp
  401539:	48 89 e5             	mov    %rsp,%rbp
  40153c:	48 83 ec 10          	sub    $0x10,%rsp
  401540:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401544:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401548:	48 83 c0 20          	add    $0x20,%rax
  40154c:	48 89 c7             	mov    %rax,%rdi
  40154f:	e8 b2 01 00 00       	callq  401706 <__gnu_cxx::__aligned_membuf<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_ptr()>
  401554:	c9                   	leaveq 
  401555:	c3                   	retq   

0000000000401556 <void std::allocator_traits<std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::destroy<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >*)>:
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_():
  401556:	55                   	push   %rbp
  401557:	48 89 e5             	mov    %rsp,%rbp
  40155a:	48 83 ec 10          	sub    $0x10,%rsp
  40155e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401562:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401566:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40156a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40156e:	48 89 d6             	mov    %rdx,%rsi
  401571:	48 89 c7             	mov    %rax,%rdi
  401574:	e8 a7 01 00 00       	callq  401720 <void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::destroy<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >*)>
  401579:	90                   	nop
  40157a:	c9                   	leaveq 
  40157b:	c3                   	retq   

000000000040157c <std::allocator_traits<std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::deallocate(std::allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&, std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*, unsigned long)>:
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m():
  40157c:	55                   	push   %rbp
  40157d:	48 89 e5             	mov    %rsp,%rbp
  401580:	48 83 ec 20          	sub    $0x20,%rsp
  401584:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401588:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40158c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401590:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401594:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  401598:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40159c:	48 89 ce             	mov    %rcx,%rsi
  40159f:	48 89 c7             	mov    %rax,%rdi
  4015a2:	e8 99 01 00 00       	callq  401740 <__gnu_cxx::new_allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::deallocate(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*, unsigned long)>
  4015a7:	90                   	nop
  4015a8:	c9                   	leaveq 
  4015a9:	c3                   	retq   

00000000004015aa <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_begin() const>:
_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE8_M_beginEv():
  4015aa:	55                   	push   %rbp
  4015ab:	48 89 e5             	mov    %rsp,%rbp
  4015ae:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4015b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4015b6:	48 8b 40 10          	mov    0x10(%rax),%rax
  4015ba:	5d                   	pop    %rbp
  4015bb:	c3                   	retq   

00000000004015bc <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_M_end() const>:
_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE6_M_endEv():
  4015bc:	55                   	push   %rbp
  4015bd:	48 89 e5             	mov    %rsp,%rbp
  4015c0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4015c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4015c8:	48 83 c0 08          	add    $0x8,%rax
  4015cc:	5d                   	pop    %rbp
  4015cd:	c3                   	retq   

00000000004015ce <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_key(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > const*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E():
  4015ce:	55                   	push   %rbp
  4015cf:	48 89 e5             	mov    %rsp,%rbp
  4015d2:	48 83 ec 20          	sub    $0x20,%rsp
  4015d6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4015da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4015de:	48 89 c7             	mov    %rax,%rdi
  4015e1:	e8 7c 01 00 00       	callq  401762 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_value(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > const*)>
  4015e6:	48 89 c2             	mov    %rax,%rdx
  4015e9:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
  4015ed:	48 89 d6             	mov    %rdx,%rsi
  4015f0:	48 89 c7             	mov    %rax,%rdi
  4015f3:	e8 9c 00 00 00       	callq  401694 <std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::operator()(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const>
  4015f8:	c9                   	leaveq 
  4015f9:	c3                   	retq   

00000000004015fa <decltype (((forward<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>)({parm#1}))<((forward<char const (&) [12]>)({parm#2}))) std::less<void>::operator()<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const (&) [12]>(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const (&) [12]) const>:
_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA12_KcEEDTltcl7forwardIT_Efp_Ecl7forwardIT0_Efp0_EEOSD_OSE_():
  4015fa:	55                   	push   %rbp
  4015fb:	48 89 e5             	mov    %rsp,%rbp
  4015fe:	53                   	push   %rbx
  4015ff:	48 83 ec 28          	sub    $0x28,%rsp
  401603:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401607:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40160b:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40160f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401613:	48 89 c7             	mov    %rax,%rdi
  401616:	e8 8b 00 00 00       	callq  4016a6 <char const (&std::forward<char const (&) [12]>(std::remove_reference<char const (&) [12]>::type&)) [12]>
  40161b:	48 89 c3             	mov    %rax,%rbx
  40161e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401622:	48 89 c7             	mov    %rax,%rdi
  401625:	e8 8a 00 00 00       	callq  4016b4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const& std::forward<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>(std::remove_reference<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>::type&)>
  40162a:	48 89 de             	mov    %rbx,%rsi
  40162d:	48 89 c7             	mov    %rax,%rdi
  401630:	e8 47 01 00 00       	callq  40177c <bool std::operator< <char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>
  401635:	48 83 c4 28          	add    $0x28,%rsp
  401639:	5b                   	pop    %rbx
  40163a:	5d                   	pop    %rbp
  40163b:	c3                   	retq   

000000000040163c <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_left(std::_Rb_tree_node_base const*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE7_S_leftEPKSt18_Rb_tree_node_base():
  40163c:	55                   	push   %rbp
  40163d:	48 89 e5             	mov    %rsp,%rbp
  401640:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401644:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401648:	48 8b 40 10          	mov    0x10(%rax),%rax
  40164c:	5d                   	pop    %rbp
  40164d:	c3                   	retq   

000000000040164e <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_right(std::_Rb_tree_node_base const*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base():
  40164e:	55                   	push   %rbp
  40164f:	48 89 e5             	mov    %rsp,%rbp
  401652:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401656:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40165a:	48 8b 40 18          	mov    0x18(%rax),%rax
  40165e:	5d                   	pop    %rbp
  40165f:	c3                   	retq   

0000000000401660 <std::_Rb_tree_const_iterator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_Rb_tree_const_iterator(std::_Rb_tree_node_base const*)>:
_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKSt18_Rb_tree_node_base():
  401660:	55                   	push   %rbp
  401661:	48 89 e5             	mov    %rsp,%rbp
  401664:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401668:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40166c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401670:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401674:	48 89 10             	mov    %rdx,(%rax)
  401677:	90                   	nop
  401678:	5d                   	pop    %rbp
  401679:	c3                   	retq   

000000000040167a <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_value(std::_Rb_tree_node_base const*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base():
  40167a:	55                   	push   %rbp
  40167b:	48 89 e5             	mov    %rsp,%rbp
  40167e:	48 83 ec 10          	sub    $0x10,%rsp
  401682:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401686:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40168a:	48 89 c7             	mov    %rax,%rdi
  40168d:	e8 12 01 00 00       	callq  4017a4 <std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_valptr() const>
  401692:	c9                   	leaveq 
  401693:	c3                   	retq   

0000000000401694 <std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::operator()(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const>:
_ZNKSt9_IdentityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_():
  401694:	55                   	push   %rbp
  401695:	48 89 e5             	mov    %rsp,%rbp
  401698:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40169c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4016a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4016a4:	5d                   	pop    %rbp
  4016a5:	c3                   	retq   

00000000004016a6 <char const (&std::forward<char const (&) [12]>(std::remove_reference<char const (&) [12]>::type&)) [12]>:
_ZSt7forwardIRA12_KcEOT_RNSt16remove_referenceIS3_E4typeE():
  4016a6:	55                   	push   %rbp
  4016a7:	48 89 e5             	mov    %rsp,%rbp
  4016aa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4016ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016b2:	5d                   	pop    %rbp
  4016b3:	c3                   	retq   

00000000004016b4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const& std::forward<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>(std::remove_reference<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&>::type&)>:
_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE():
  4016b4:	55                   	push   %rbp
  4016b5:	48 89 e5             	mov    %rsp,%rbp
  4016b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4016bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016c0:	5d                   	pop    %rbp
  4016c1:	c3                   	retq   

00000000004016c2 <bool std::operator< <char, std::char_traits<char>, std::allocator<char> >(char const*, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)>:
_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE():
  4016c2:	55                   	push   %rbp
  4016c3:	48 89 e5             	mov    %rsp,%rbp
  4016c6:	48 83 ec 10          	sub    $0x10,%rsp
  4016ca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4016ce:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4016d2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4016d6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4016da:	48 89 d6             	mov    %rdx,%rsi
  4016dd:	48 89 c7             	mov    %rax,%rdi
  4016e0:	e8 09 01 00 00       	callq  4017ee <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::compare(char const*) const>
  4016e5:	85 c0                	test   %eax,%eax
  4016e7:	0f 9f c0             	setg   %al
  4016ea:	c9                   	leaveq 
  4016eb:	c3                   	retq   

00000000004016ec <char const* std::addressof<char const>(char const&)>:
_ZSt9addressofIKcEPT_RS1_():
  4016ec:	55                   	push   %rbp
  4016ed:	48 89 e5             	mov    %rsp,%rbp
  4016f0:	48 83 ec 10          	sub    $0x10,%rsp
  4016f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4016f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016fc:	48 89 c7             	mov    %rax,%rdi
  4016ff:	e8 7a 01 00 00       	callq  40187e <char const* std::__addressof<char const>(char const&)>
  401704:	c9                   	leaveq 
  401705:	c3                   	retq   

0000000000401706 <__gnu_cxx::__aligned_membuf<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_ptr()>:
_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv():
  401706:	55                   	push   %rbp
  401707:	48 89 e5             	mov    %rsp,%rbp
  40170a:	48 83 ec 10          	sub    $0x10,%rsp
  40170e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401712:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401716:	48 89 c7             	mov    %rax,%rdi
  401719:	e8 6e 01 00 00       	callq  40188c <__gnu_cxx::__aligned_membuf<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_addr()>
  40171e:	c9                   	leaveq 
  40171f:	c3                   	retq   

0000000000401720 <void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::destroy<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >*)>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS7_EEvPT_():
  401720:	55                   	push   %rbp
  401721:	48 89 e5             	mov    %rsp,%rbp
  401724:	48 83 ec 10          	sub    $0x10,%rsp
  401728:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40172c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401730:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401734:	48 89 c7             	mov    %rax,%rdi
  401737:	e8 86 f7 ff ff       	callq  400ec2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  40173c:	90                   	nop
  40173d:	c9                   	leaveq 
  40173e:	c3                   	retq   
  40173f:	90                   	nop

0000000000401740 <__gnu_cxx::new_allocator<std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::deallocate(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >*, unsigned long)>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m():
  401740:	55                   	push   %rbp
  401741:	48 89 e5             	mov    %rsp,%rbp
  401744:	48 83 ec 20          	sub    $0x20,%rsp
  401748:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40174c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401750:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401754:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401758:	48 89 c7             	mov    %rax,%rdi
  40175b:	e8 30 f4 ff ff       	callq  400b90 <operator delete(void*)@plt>
  401760:	c9                   	leaveq 
  401761:	c3                   	retq   

0000000000401762 <std::_Rb_tree<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::_Identity<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<void>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::_S_value(std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > const*)>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E():
  401762:	55                   	push   %rbp
  401763:	48 89 e5             	mov    %rsp,%rbp
  401766:	48 83 ec 10          	sub    $0x10,%rsp
  40176a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40176e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401772:	48 89 c7             	mov    %rax,%rdi
  401775:	e8 2a 00 00 00       	callq  4017a4 <std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_valptr() const>
  40177a:	c9                   	leaveq 
  40177b:	c3                   	retq   

000000000040177c <bool std::operator< <char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>:
_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_():
  40177c:	55                   	push   %rbp
  40177d:	48 89 e5             	mov    %rsp,%rbp
  401780:	48 83 ec 10          	sub    $0x10,%rsp
  401784:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401788:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40178c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401790:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401794:	48 89 d6             	mov    %rdx,%rsi
  401797:	48 89 c7             	mov    %rax,%rdi
  40179a:	e8 4f 00 00 00       	callq  4017ee <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::compare(char const*) const>
  40179f:	c1 e8 1f             	shr    $0x1f,%eax
  4017a2:	c9                   	leaveq 
  4017a3:	c3                   	retq   

00000000004017a4 <std::_Rb_tree_node<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_valptr() const>:
_ZNKSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv():
  4017a4:	55                   	push   %rbp
  4017a5:	48 89 e5             	mov    %rsp,%rbp
  4017a8:	48 83 ec 10          	sub    $0x10,%rsp
  4017ac:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4017b0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017b4:	48 83 c0 20          	add    $0x20,%rax
  4017b8:	48 89 c7             	mov    %rax,%rdi
  4017bb:	e8 da 00 00 00       	callq  40189a <__gnu_cxx::__aligned_membuf<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_ptr() const>
  4017c0:	c9                   	leaveq 
  4017c1:	c3                   	retq   

00000000004017c2 <unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)>:
_ZSt3minImERKT_S2_S2_():
  4017c2:	55                   	push   %rbp
  4017c3:	48 89 e5             	mov    %rsp,%rbp
  4017c6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4017ca:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4017ce:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4017d2:	48 8b 10             	mov    (%rax),%rdx
  4017d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017d9:	48 8b 00             	mov    (%rax),%rax
  4017dc:	48 39 c2             	cmp    %rax,%rdx
  4017df:	73 06                	jae    4017e7 <unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)+0x25>
  4017e1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4017e5:	eb 04                	jmp    4017eb <unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)+0x29>
  4017e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4017eb:	5d                   	pop    %rbp
  4017ec:	c3                   	retq   
  4017ed:	90                   	nop

00000000004017ee <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::compare(char const*) const>:
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc():
  4017ee:	55                   	push   %rbp
  4017ef:	48 89 e5             	mov    %rsp,%rbp
  4017f2:	48 83 ec 30          	sub    $0x30,%rsp
  4017f6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4017fa:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4017fe:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401802:	48 89 c7             	mov    %rax,%rdi
  401805:	e8 ea f7 ff ff       	callq  400ff4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::size() const>
  40180a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40180e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401812:	48 89 c7             	mov    %rax,%rdi
  401815:	e8 55 f5 ff ff       	callq  400d6f <std::char_traits<char>::length(char const*)>
  40181a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  40181e:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  401822:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  401826:	48 89 d6             	mov    %rdx,%rsi
  401829:	48 89 c7             	mov    %rax,%rdi
  40182c:	e8 91 ff ff ff       	callq  4017c2 <unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)>
  401831:	48 8b 00             	mov    (%rax),%rax
  401834:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401838:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40183c:	48 89 c7             	mov    %rax,%rdi
  40183f:	e8 64 f7 ff ff       	callq  400fa8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  401844:	48 89 c1             	mov    %rax,%rcx
  401847:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40184b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40184f:	48 89 c6             	mov    %rax,%rsi
  401852:	48 89 cf             	mov    %rcx,%rdi
  401855:	e8 da f4 ff ff       	callq  400d34 <std::char_traits<char>::compare(char const*, char const*, unsigned long)>
  40185a:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40185d:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  401861:	75 16                	jne    401879 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::compare(char const*) const+0x8b>
  401863:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401867:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40186b:	48 89 d6             	mov    %rdx,%rsi
  40186e:	48 89 c7             	mov    %rax,%rdi
  401871:	e8 3e 00 00 00       	callq  4018b4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)>
  401876:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401879:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40187c:	c9                   	leaveq 
  40187d:	c3                   	retq   

000000000040187e <char const* std::__addressof<char const>(char const&)>:
_ZSt11__addressofIKcEPT_RS1_():
  40187e:	55                   	push   %rbp
  40187f:	48 89 e5             	mov    %rsp,%rbp
  401882:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401886:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40188a:	5d                   	pop    %rbp
  40188b:	c3                   	retq   

000000000040188c <__gnu_cxx::__aligned_membuf<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_addr()>:
_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv():
  40188c:	55                   	push   %rbp
  40188d:	48 89 e5             	mov    %rsp,%rbp
  401890:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401894:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401898:	5d                   	pop    %rbp
  401899:	c3                   	retq   

000000000040189a <__gnu_cxx::__aligned_membuf<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_ptr() const>:
_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv():
  40189a:	55                   	push   %rbp
  40189b:	48 89 e5             	mov    %rsp,%rbp
  40189e:	48 83 ec 10          	sub    $0x10,%rsp
  4018a2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4018a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018aa:	48 89 c7             	mov    %rax,%rdi
  4018ad:	e8 42 00 00 00       	callq  4018f4 <__gnu_cxx::__aligned_membuf<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_addr() const>
  4018b2:	c9                   	leaveq 
  4018b3:	c3                   	retq   

00000000004018b4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)>:
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_S_compareEmm():
  4018b4:	55                   	push   %rbp
  4018b5:	48 89 e5             	mov    %rsp,%rbp
  4018b8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4018bc:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4018c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4018c4:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
  4018c8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4018cc:	48 81 7d f8 ff ff ff 	cmpq   $0x7fffffff,-0x8(%rbp)
  4018d3:	7f 
  4018d4:	7e 07                	jle    4018dd <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)+0x29>
  4018d6:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
  4018db:	eb 15                	jmp    4018f2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)+0x3e>
  4018dd:	48 81 7d f8 00 00 00 	cmpq   $0xffffffff80000000,-0x8(%rbp)
  4018e4:	80 
  4018e5:	7d 07                	jge    4018ee <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)+0x3a>
  4018e7:	b8 00 00 00 80       	mov    $0x80000000,%eax
  4018ec:	eb 04                	jmp    4018f2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)+0x3e>
  4018ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018f2:	5d                   	pop    %rbp
  4018f3:	c3                   	retq   

00000000004018f4 <__gnu_cxx::__aligned_membuf<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_addr() const>:
_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv():
  4018f4:	55                   	push   %rbp
  4018f5:	48 89 e5             	mov    %rsp,%rbp
  4018f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4018fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401900:	5d                   	pop    %rbp
  401901:	c3                   	retq   
  401902:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401909:	1f 84 00 00 00 00 00 

0000000000401910 <__libc_csu_init>:
__libc_csu_init():
  401910:	41 57                	push   %r15
  401912:	41 56                	push   %r14
  401914:	41 89 ff             	mov    %edi,%r15d
  401917:	41 55                	push   %r13
  401919:	41 54                	push   %r12
  40191b:	4c 8d 25 a6 24 00 00 	lea    0x24a6(%rip),%r12        # 403dc8 <__frame_dummy_init_array_entry>
  401922:	55                   	push   %rbp
  401923:	48 8d 2d ae 24 00 00 	lea    0x24ae(%rip),%rbp        # 403dd8 <__init_array_end>
  40192a:	53                   	push   %rbx
  40192b:	49 89 f6             	mov    %rsi,%r14
  40192e:	49 89 d5             	mov    %rdx,%r13
  401931:	4c 29 e5             	sub    %r12,%rbp
  401934:	48 83 ec 08          	sub    $0x8,%rsp
  401938:	48 c1 fd 03          	sar    $0x3,%rbp
  40193c:	e8 c7 f1 ff ff       	callq  400b08 <_init>
  401941:	48 85 ed             	test   %rbp,%rbp
  401944:	74 20                	je     401966 <__libc_csu_init+0x56>
  401946:	31 db                	xor    %ebx,%ebx
  401948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40194f:	00 
  401950:	4c 89 ea             	mov    %r13,%rdx
  401953:	4c 89 f6             	mov    %r14,%rsi
  401956:	44 89 ff             	mov    %r15d,%edi
  401959:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40195d:	48 83 c3 01          	add    $0x1,%rbx
  401961:	48 39 dd             	cmp    %rbx,%rbp
  401964:	75 ea                	jne    401950 <__libc_csu_init+0x40>
  401966:	48 83 c4 08          	add    $0x8,%rsp
  40196a:	5b                   	pop    %rbx
  40196b:	5d                   	pop    %rbp
  40196c:	41 5c                	pop    %r12
  40196e:	41 5d                	pop    %r13
  401970:	41 5e                	pop    %r14
  401972:	41 5f                	pop    %r15
  401974:	c3                   	retq   
  401975:	90                   	nop
  401976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40197d:	00 00 00 

0000000000401980 <__libc_csu_fini>:
__libc_csu_fini():
  401980:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000401984 <_fini>:
_fini():
  401984:	48 83 ec 08          	sub    $0x8,%rsp
  401988:	48 83 c4 08          	add    $0x8,%rsp
  40198c:	c3                   	retq   
