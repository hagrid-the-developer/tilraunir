
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <scale(std::vector<double, std::allocator<double> >&, double const&)>:
   0:	48 8b 07             	mov    (%rdi),%rax
   3:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   7:	48 29 c2             	sub    %rax,%rdx
   a:	48 89 d1             	mov    %rdx,%rcx
   d:	48 c1 f9 03          	sar    $0x3,%rcx
  11:	48 85 c9             	test   %rcx,%rcx
  14:	74 20                	je     36 <scale(std::vector<double, std::allocator<double> >&, double const&)+0x36>
  16:	48 01 c2             	add    %rax,%rdx
  19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  20:	f2 0f 10 00          	movsd  (%rax),%xmm0
  24:	48 83 c0 08          	add    $0x8,%rax
  28:	f2 0f 5e 06          	divsd  (%rsi),%xmm0
  2c:	f2 0f 11 40 f8       	movsd  %xmm0,-0x8(%rax)
  31:	48 39 d0             	cmp    %rdx,%rax
  34:	75 ea                	jne    20 <scale(std::vector<double, std::allocator<double> >&, double const&)+0x20>
  36:	f3 c3                	repz retq 
  38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  3f:	00 

0000000000000040 <scale2(std::vector<double, std::allocator<double> >&, double)>:
  40:	48 8b 07             	mov    (%rdi),%rax
  43:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  47:	48 29 c2             	sub    %rax,%rdx
  4a:	48 89 d1             	mov    %rdx,%rcx
  4d:	48 c1 f9 03          	sar    $0x3,%rcx
  51:	48 85 c9             	test   %rcx,%rcx
  54:	74 20                	je     76 <scale2(std::vector<double, std::allocator<double> >&, double)+0x36>
  56:	48 01 c2             	add    %rax,%rdx
  59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  60:	f2 0f 10 08          	movsd  (%rax),%xmm1
  64:	48 83 c0 08          	add    $0x8,%rax
  68:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
  6c:	f2 0f 11 48 f8       	movsd  %xmm1,-0x8(%rax)
  71:	48 39 c2             	cmp    %rax,%rdx
  74:	75 ea                	jne    60 <scale2(std::vector<double, std::allocator<double> >&, double)+0x20>
  76:	f3 c3                	repz retq 
