
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <scale(std::vector<double, std::allocator<double> >&, double const&)>:
  # %rdi -- pointer to vector
  # %rsi -- pointer to double
   0:	48 8b 47 08          	mov    0x8(%rdi),%rax
   4:	48 8b 17             	mov    (%rdi),%rdx
   7:	48 89 c1             	mov    %rax,%rcx
   a:	48 29 d1             	sub    %rdx,%rcx
   d:	49 89 ca             	mov    %rcx,%r10
  10:	49 c1 fa 03          	sar    $0x3,%r10
  14:	4d 85 d2             	test   %r10,%r10
  17:	0f 84 e1 00 00 00    	je     fe <scale(std::vector<double, std::allocator<double> >&, double const&)+0xfe>
  1d:	48 8d 7e 08          	lea    0x8(%rsi),%rdi
  21:	48 39 fa             	cmp    %rdi,%rdx
  24:	40 0f 93 c7          	setae  %dil
  28:	48 39 c6             	cmp    %rax,%rsi
  2b:	0f 93 c0             	setae  %al
  2e:	40 08 c7             	or     %al,%dil
  31:	48 89 d0             	mov    %rdx,%rax
  34:	0f 84 a6 00 00 00    	je     e0 <scale(std::vector<double, std::allocator<double> >&, double const&)+0xe0>
  3a:	49 83 fa 09          	cmp    $0x9,%r10
  3e:	0f 86 9c 00 00 00    	jbe    e0 <scale(std::vector<double, std::allocator<double> >&, double const&)+0xe0>
  44:	48 c1 e8 03          	shr    $0x3,%rax
  48:	45 31 c0             	xor    %r8d,%r8d
  4b:	83 e0 01             	and    $0x1,%eax
  4e:	74 0f                	je     5f <scale(std::vector<double, std::allocator<double> >&, double const&)+0x5f>
  50:	f2 0f 10 02          	movsd  (%rdx),%xmm0
  54:	49 89 c0             	mov    %rax,%r8
  57:	f2 0f 5e 06          	divsd  (%rsi),%xmm0
  5b:	f2 0f 11 02          	movsd  %xmm0,(%rdx)
  5f:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 67 <scale(std::vector<double, std::allocator<double> >&, double const&)+0x67>
  66:	00 
  67:	4d 89 d3             	mov    %r10,%r11
  6a:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
  6e:	49 29 c3             	sub    %rax,%r11
  71:	31 c9                	xor    %ecx,%ecx
  73:	31 c0                	xor    %eax,%eax
  75:	f2 0f 5e 0e          	divsd  (%rsi),%xmm1
  79:	4d 89 d9             	mov    %r11,%r9
  7c:	49 d1 e9             	shr    %r9
  7f:	66 0f 14 c9          	unpcklpd %xmm1,%xmm1
  83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  88:	66 0f 28 04 07       	movapd (%rdi,%rax,1),%xmm0
  8d:	48 83 c1 01          	add    $0x1,%rcx
  91:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
  95:	0f 29 04 07          	movaps %xmm0,(%rdi,%rax,1)
  99:	48 83 c0 10          	add    $0x10,%rax
  9d:	49 39 c9             	cmp    %rcx,%r9
  a0:	77 e6                	ja     88 <scale(std::vector<double, std::allocator<double> >&, double const&)+0x88>
  a2:	4c 89 d8             	mov    %r11,%rax
  a5:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
  a9:	49 01 c0             	add    %rax,%r8
  ac:	49 39 c3             	cmp    %rax,%r11
  af:	74 4d                	je     fe <scale(std::vector<double, std::allocator<double> >&, double const&)+0xfe>
  b1:	4a 8d 04 c2          	lea    (%rdx,%r8,8),%rax
  b5:	49 83 c0 01          	add    $0x1,%r8
  b9:	4d 39 d0             	cmp    %r10,%r8
  bc:	f2 0f 10 00          	movsd  (%rax),%xmm0
  c0:	f2 0f 5e 06          	divsd  (%rsi),%xmm0
  c4:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  c8:	74 34                	je     fe <scale(std::vector<double, std::allocator<double> >&, double const&)+0xfe>
  ca:	4a 8d 04 c2          	lea    (%rdx,%r8,8),%rax
  ce:	f2 0f 10 00          	movsd  (%rax),%xmm0
  d2:	f2 0f 5e 06          	divsd  (%rsi),%xmm0
  d6:	f2 0f 11 00          	movsd  %xmm0,(%rax)
  da:	c3                   	retq   
  db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  e0:	48 01 c1             	add    %rax,%rcx
  e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  e8:	f2 0f 10 00          	movsd  (%rax),%xmm0
  ec:	48 83 c0 08          	add    $0x8,%rax
  f0:	f2 0f 5e 06          	divsd  (%rsi),%xmm0
  f4:	f2 0f 11 40 f8       	movsd  %xmm0,-0x8(%rax)
  f9:	48 39 c8             	cmp    %rcx,%rax
  fc:	75 ea                	jne    e8 <scale(std::vector<double, std::allocator<double> >&, double const&)+0xe8>
  fe:	f3 c3                	repz retq 

0000000000000100 <scale2(std::vector<double, std::allocator<double> >&, double)>:
 100:	4c 8b 07             	mov    (%rdi),%r8
 103:	48 8b 77 08          	mov    0x8(%rdi),%rsi
 107:	4c 29 c6             	sub    %r8,%rsi
 10a:	48 c1 fe 03          	sar    $0x3,%rsi
 10e:	48 85 f6             	test   %rsi,%rsi
 111:	0f 84 a8 00 00 00    	je     1bf <scale2(std::vector<double, std::allocator<double> >&, double)+0xbf>
 117:	4c 89 c0             	mov    %r8,%rax
 11a:	48 8d 56 ff          	lea    -0x1(%rsi),%rdx
 11e:	48 c1 e8 03          	shr    $0x3,%rax
 122:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 12a <scale2(std::vector<double, std::allocator<double> >&, double)+0x2a>
 129:	00 
 12a:	83 e0 01             	and    $0x1,%eax
 12d:	48 83 fa 01          	cmp    $0x1,%rdx
 131:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
 135:	0f 86 95 00 00 00    	jbe    1d0 <scale2(std::vector<double, std::allocator<double> >&, double)+0xd0>
 13b:	31 ff                	xor    %edi,%edi
 13d:	48 85 c0             	test   %rax,%rax
 140:	74 11                	je     153 <scale2(std::vector<double, std::allocator<double> >&, double)+0x53>
 142:	48 89 c7             	mov    %rax,%rdi
 145:	f2 41 0f 10 00       	movsd  (%r8),%xmm0
 14a:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 14e:	f2 41 0f 11 00       	movsd  %xmm0,(%r8)
 153:	66 0f 28 d1          	movapd %xmm1,%xmm2
 157:	49 89 f2             	mov    %rsi,%r10
 15a:	49 8d 0c c0          	lea    (%r8,%rax,8),%rcx
 15e:	49 29 c2             	sub    %rax,%r10
 161:	31 d2                	xor    %edx,%edx
 163:	31 c0                	xor    %eax,%eax
 165:	66 0f 14 d2          	unpcklpd %xmm2,%xmm2
 169:	4d 89 d1             	mov    %r10,%r9
 16c:	49 d1 e9             	shr    %r9
 16f:	90                   	nop
 170:	66 0f 28 04 01       	movapd (%rcx,%rax,1),%xmm0
 175:	48 83 c2 01          	add    $0x1,%rdx
 179:	66 0f 59 c2          	mulpd  %xmm2,%xmm0
 17d:	0f 29 04 01          	movaps %xmm0,(%rcx,%rax,1)
 181:	48 83 c0 10          	add    $0x10,%rax
 185:	4c 39 ca             	cmp    %r9,%rdx
 188:	72 e6                	jb     170 <scale2(std::vector<double, std::allocator<double> >&, double)+0x70>
 18a:	4c 89 d2             	mov    %r10,%rdx
 18d:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
 191:	49 39 d2             	cmp    %rdx,%r10
 194:	48 8d 04 17          	lea    (%rdi,%rdx,1),%rax
 198:	74 2e                	je     1c8 <scale2(std::vector<double, std::allocator<double> >&, double)+0xc8>
 19a:	49 8d 14 c0          	lea    (%r8,%rax,8),%rdx
 19e:	48 83 c0 01          	add    $0x1,%rax
 1a2:	48 39 f0             	cmp    %rsi,%rax
 1a5:	f2 0f 10 02          	movsd  (%rdx),%xmm0
 1a9:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
 1ad:	f2 0f 11 02          	movsd  %xmm0,(%rdx)
 1b1:	74 0c                	je     1bf <scale2(std::vector<double, std::allocator<double> >&, double)+0xbf>
 1b3:	49 8d 04 c0          	lea    (%r8,%rax,8),%rax
 1b7:	f2 0f 59 08          	mulsd  (%rax),%xmm1
 1bb:	f2 0f 11 08          	movsd  %xmm1,(%rax)
 1bf:	f3 c3                	repz retq 
 1c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 1c8:	f3 c3                	repz retq 
 1ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 1d0:	31 c0                	xor    %eax,%eax
 1d2:	eb c6                	jmp    19a <scale2(std::vector<double, std::allocator<double> >&, double)+0x9a>
