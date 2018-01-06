
algs.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_ZN7try_int4sortENS_3ArrEm>:
       0:	41 54                	push   %r12
       2:	41 55                	push   %r13
       4:	41 57                	push   %r15
       6:	53                   	push   %rbx
       7:	55                   	push   %rbp
       8:	48 83 ec 10          	sub    $0x10,%rsp
       c:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
      11:	48 8d 04 be          	lea    (%rsi,%rdi,4),%rax
      15:	48 3b f0             	cmp    %rax,%rsi
      18:	75 0d                	jne    27 <_ZN7try_int4sortENS_3ArrEm+0x27>
      1a:	48 83 c4 10          	add    $0x10,%rsp
      1e:	5d                   	pop    %rbp
      1f:	5b                   	pop    %rbx
      20:	41 5f                	pop    %r15
      22:	41 5d                	pop    %r13
      24:	41 5c                	pop    %r12
      26:	c3                   	retq   
      27:	48 89 c1             	mov    %rax,%rcx
      2a:	49 89 c0             	mov    %rax,%r8
      2d:	48 2b ce             	sub    %rsi,%rcx
      30:	48 c1 f9 02          	sar    $0x2,%rcx
      34:	f3 48 0f bd d1       	lzcnt  %rcx,%rdx
      39:	48 03 d2             	add    %rdx,%rdx
      3c:	48 f7 da             	neg    %rdx
      3f:	48 83 c2 7e          	add    $0x7e,%rdx
      43:	48 83 f9 10          	cmp    $0x10,%rcx
      47:	0f 8e ce 06 00 00    	jle    71b <_ZN7try_int4sortENS_3ArrEm+0x71b>
      4d:	48 89 c5             	mov    %rax,%rbp
      50:	49 89 d7             	mov    %rdx,%r15
      53:	49 89 f4             	mov    %rsi,%r12
      56:	4c 89 c1             	mov    %r8,%rcx
      59:	49 2b cc             	sub    %r12,%rcx
      5c:	48 c1 f9 02          	sar    $0x2,%rcx
      60:	4d 85 ff             	test   %r15,%r15
      63:	0f 84 15 03 00 00    	je     37e <_ZN7try_int4sortENS_3ArrEm+0x37e>
      69:	48 89 cb             	mov    %rcx,%rbx
      6c:	49 ff cf             	dec    %r15
      6f:	48 c1 eb 3f          	shr    $0x3f,%rbx
      73:	48 03 cb             	add    %rbx,%rcx
      76:	48 d1 f9             	sar    %rcx
      79:	44 8b 54 24 44       	mov    0x44(%rsp),%r10d
      7e:	41 8b 58 fc          	mov    -0x4(%r8),%ebx
      82:	8b 7c 8c 40          	mov    0x40(%rsp,%rcx,4),%edi
      86:	44 3b d7             	cmp    %edi,%r10d
      89:	7d 29                	jge    b4 <_ZN7try_int4sortENS_3ArrEm+0xb4>
      8b:	3b fb                	cmp    %ebx,%edi
      8d:	7c 2e                	jl     bd <_ZN7try_int4sortENS_3ArrEm+0xbd>
      8f:	44 3b d3             	cmp    %ebx,%r10d
      92:	7d 11                	jge    a5 <_ZN7try_int4sortENS_3ArrEm+0xa5>
      94:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
      98:	41 89 da             	mov    %ebx,%r10d
      9b:	89 5c 24 40          	mov    %ebx,0x40(%rsp)
      9f:	41 89 48 fc          	mov    %ecx,-0x4(%r8)
      a3:	eb 2b                	jmp    d0 <_ZN7try_int4sortENS_3ArrEm+0xd0>
      a5:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
      a9:	44 89 54 24 40       	mov    %r10d,0x40(%rsp)
      ae:	89 4c 24 44          	mov    %ecx,0x44(%rsp)
      b2:	eb 1c                	jmp    d0 <_ZN7try_int4sortENS_3ArrEm+0xd0>
      b4:	44 3b d3             	cmp    %ebx,%r10d
      b7:	7c ec                	jl     a5 <_ZN7try_int4sortENS_3ArrEm+0xa5>
      b9:	3b fb                	cmp    %ebx,%edi
      bb:	7c d7                	jl     94 <_ZN7try_int4sortENS_3ArrEm+0x94>
      bd:	8b 5c 24 40          	mov    0x40(%rsp),%ebx
      c1:	48 c1 e1 02          	shl    $0x2,%rcx
      c5:	89 7c 24 40          	mov    %edi,0x40(%rsp)
      c9:	41 89 fa             	mov    %edi,%r10d
      cc:	89 5c 0c 40          	mov    %ebx,0x40(%rsp,%rcx,1)
      d0:	4d 89 c1             	mov    %r8,%r9
      d3:	48 8d 5c 24 44       	lea    0x44(%rsp),%rbx
      d8:	eb 0f                	jmp    e9 <_ZN7try_int4sortENS_3ArrEm+0xe9>
      da:	44 89 1b             	mov    %r11d,(%rbx)
      dd:	48 83 c3 04          	add    $0x4,%rbx
      e1:	41 89 09             	mov    %ecx,(%r9)
      e4:	44 8b 54 24 40       	mov    0x40(%rsp),%r10d
      e9:	8b 0b                	mov    (%rbx),%ecx
      eb:	48 89 d8             	mov    %rbx,%rax
      ee:	41 3b ca             	cmp    %r10d,%ecx
      f1:	7d 70                	jge    163 <_ZN7try_int4sortENS_3ArrEm+0x163>
      f3:	45 33 db             	xor    %r11d,%r11d
      f6:	49 83 c3 20          	add    $0x20,%r11
      fa:	4a 8d 14 18          	lea    (%rax,%r11,1),%rdx
      fe:	8b 4a e4             	mov    -0x1c(%rdx),%ecx
     101:	4a 8d 5c 18 e4       	lea    -0x1c(%rax,%r11,1),%rbx
     106:	41 3b ca             	cmp    %r10d,%ecx
     109:	7d 58                	jge    163 <_ZN7try_int4sortENS_3ArrEm+0x163>
     10b:	8b 4a e8             	mov    -0x18(%rdx),%ecx
     10e:	4a 8d 5c 18 e8       	lea    -0x18(%rax,%r11,1),%rbx
     113:	41 3b ca             	cmp    %r10d,%ecx
     116:	7d 4b                	jge    163 <_ZN7try_int4sortENS_3ArrEm+0x163>
     118:	8b 4a ec             	mov    -0x14(%rdx),%ecx
     11b:	4a 8d 5c 18 ec       	lea    -0x14(%rax,%r11,1),%rbx
     120:	41 3b ca             	cmp    %r10d,%ecx
     123:	7d 3e                	jge    163 <_ZN7try_int4sortENS_3ArrEm+0x163>
     125:	8b 4a f0             	mov    -0x10(%rdx),%ecx
     128:	4a 8d 5c 18 f0       	lea    -0x10(%rax,%r11,1),%rbx
     12d:	41 3b ca             	cmp    %r10d,%ecx
     130:	7d 31                	jge    163 <_ZN7try_int4sortENS_3ArrEm+0x163>
     132:	8b 4a f4             	mov    -0xc(%rdx),%ecx
     135:	4a 8d 5c 18 f4       	lea    -0xc(%rax,%r11,1),%rbx
     13a:	41 3b ca             	cmp    %r10d,%ecx
     13d:	7d 24                	jge    163 <_ZN7try_int4sortENS_3ArrEm+0x163>
     13f:	8b 4a f8             	mov    -0x8(%rdx),%ecx
     142:	4a 8d 5c 18 f8       	lea    -0x8(%rax,%r11,1),%rbx
     147:	41 3b ca             	cmp    %r10d,%ecx
     14a:	7d 17                	jge    163 <_ZN7try_int4sortENS_3ArrEm+0x163>
     14c:	8b 4a fc             	mov    -0x4(%rdx),%ecx
     14f:	4a 8d 5c 18 fc       	lea    -0x4(%rax,%r11,1),%rbx
     154:	41 3b ca             	cmp    %r10d,%ecx
     157:	7d 0a                	jge    163 <_ZN7try_int4sortENS_3ArrEm+0x163>
     159:	8b 0a                	mov    (%rdx),%ecx
     15b:	48 89 d3             	mov    %rdx,%rbx
     15e:	41 3b ca             	cmp    %r10d,%ecx
     161:	7c 93                	jl     f6 <_ZN7try_int4sortENS_3ArrEm+0xf6>
     163:	49 83 c1 fc          	add    $0xfffffffffffffffc,%r9
     167:	4c 89 ca             	mov    %r9,%rdx
     16a:	45 8b 19             	mov    (%r9),%r11d
     16d:	45 3b d3             	cmp    %r11d,%r10d
     170:	7d 77                	jge    1e9 <_ZN7try_int4sortENS_3ArrEm+0x1e9>
     172:	33 c0                	xor    %eax,%eax
     174:	48 83 c0 e0          	add    $0xffffffffffffffe0,%rax
     178:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
     17c:	44 8b 5e 1c          	mov    0x1c(%rsi),%r11d
     180:	4c 8d 4c 02 1c       	lea    0x1c(%rdx,%rax,1),%r9
     185:	45 3b d3             	cmp    %r11d,%r10d
     188:	7d 5f                	jge    1e9 <_ZN7try_int4sortENS_3ArrEm+0x1e9>
     18a:	44 8b 5e 18          	mov    0x18(%rsi),%r11d
     18e:	4c 8d 4c 02 18       	lea    0x18(%rdx,%rax,1),%r9
     193:	45 3b d3             	cmp    %r11d,%r10d
     196:	7d 51                	jge    1e9 <_ZN7try_int4sortENS_3ArrEm+0x1e9>
     198:	44 8b 5e 14          	mov    0x14(%rsi),%r11d
     19c:	4c 8d 4c 02 14       	lea    0x14(%rdx,%rax,1),%r9
     1a1:	45 3b d3             	cmp    %r11d,%r10d
     1a4:	7d 43                	jge    1e9 <_ZN7try_int4sortENS_3ArrEm+0x1e9>
     1a6:	44 8b 5e 10          	mov    0x10(%rsi),%r11d
     1aa:	4c 8d 4c 02 10       	lea    0x10(%rdx,%rax,1),%r9
     1af:	45 3b d3             	cmp    %r11d,%r10d
     1b2:	7d 35                	jge    1e9 <_ZN7try_int4sortENS_3ArrEm+0x1e9>
     1b4:	44 8b 5e 0c          	mov    0xc(%rsi),%r11d
     1b8:	4c 8d 4c 02 0c       	lea    0xc(%rdx,%rax,1),%r9
     1bd:	45 3b d3             	cmp    %r11d,%r10d
     1c0:	7d 27                	jge    1e9 <_ZN7try_int4sortENS_3ArrEm+0x1e9>
     1c2:	44 8b 5e 08          	mov    0x8(%rsi),%r11d
     1c6:	4c 8d 4c 02 08       	lea    0x8(%rdx,%rax,1),%r9
     1cb:	45 3b d3             	cmp    %r11d,%r10d
     1ce:	7d 19                	jge    1e9 <_ZN7try_int4sortENS_3ArrEm+0x1e9>
     1d0:	44 8b 5e 04          	mov    0x4(%rsi),%r11d
     1d4:	4c 8d 4c 02 04       	lea    0x4(%rdx,%rax,1),%r9
     1d9:	45 3b d3             	cmp    %r11d,%r10d
     1dc:	7d 0b                	jge    1e9 <_ZN7try_int4sortENS_3ArrEm+0x1e9>
     1de:	44 8b 1e             	mov    (%rsi),%r11d
     1e1:	49 89 f1             	mov    %rsi,%r9
     1e4:	45 3b d3             	cmp    %r11d,%r10d
     1e7:	7c 8b                	jl     174 <_ZN7try_int4sortENS_3ArrEm+0x174>
     1e9:	49 3b d9             	cmp    %r9,%rbx
     1ec:	0f 82 e8 fe ff ff    	jb     da <_ZN7try_int4sortENS_3ArrEm+0xda>
     1f2:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
     1f6:	48 89 df             	mov    %rbx,%rdi
     1f9:	49 89 e1             	mov    %rsp,%r9
     1fc:	4c 89 c6             	mov    %r8,%rsi
     1ff:	8a 4c 24 10          	mov    0x10(%rsp),%cl
     203:	4c 89 fa             	mov    %r15,%rdx
     206:	41 88 09             	mov    %cl,(%r9)
     209:	e8 00 00 00 00       	callq  20e <_ZN7try_int4sortENS_3ArrEm+0x20e>
     20e:	48 83 c4 10          	add    $0x10,%rsp
     212:	49 89 d8             	mov    %rbx,%r8
     215:	49 2b dc             	sub    %r12,%rbx
     218:	48 c1 fb 02          	sar    $0x2,%rbx
     21c:	48 83 fb 10          	cmp    $0x10,%rbx
     220:	0f 8f 30 fe ff ff    	jg     56 <_ZN7try_int4sortENS_3ArrEm+0x56>
     226:	48 89 e8             	mov    %rbp,%rax
     229:	4c 89 e6             	mov    %r12,%rsi
     22c:	4c 8d 8c 24 80 00 00 	lea    0x80(%rsp),%r9
     233:	00 
     234:	49 3b f1             	cmp    %r9,%rsi
     237:	0f 84 ba 00 00 00    	je     2f7 <_ZN7try_int4sortENS_3ArrEm+0x2f7>
     23d:	33 c9                	xor    %ecx,%ecx
     23f:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
     244:	33 d2                	xor    %edx,%edx
     246:	4c 89 34 24          	mov    %r14,(%rsp)
     24a:	48 89 c3             	mov    %rax,%rbx
     24d:	48 89 d5             	mov    %rdx,%rbp
     250:	49 89 cc             	mov    %rcx,%r12
     253:	49 89 f7             	mov    %rsi,%r15
     256:	49 89 fe             	mov    %rdi,%r14
     259:	46 8b 6c 35 00       	mov    0x0(%rbp,%r14,1),%r13d
     25e:	44 3b 6c 24 40       	cmp    0x40(%rsp),%r13d
     263:	7d 2b                	jge    290 <_ZN7try_int4sortENS_3ArrEm+0x290>
     265:	48 8d 55 04          	lea    0x4(%rbp),%rdx
     269:	48 c1 fa 02          	sar    $0x2,%rdx
     26d:	48 85 d2             	test   %rdx,%rdx
     270:	74 17                	je     289 <_ZN7try_int4sortENS_3ArrEm+0x289>
     272:	48 c1 e2 02          	shl    $0x2,%rdx
     276:	4d 89 f0             	mov    %r14,%r8
     279:	4c 2b c2             	sub    %rdx,%r8
     27c:	4c 89 fe             	mov    %r15,%rsi
     27f:	4a 8d 7c 05 04       	lea    0x4(%rbp,%r8,1),%rdi
     284:	e8 00 00 00 00       	callq  289 <_ZN7try_int4sortENS_3ArrEm+0x289>
     289:	44 89 6c 24 40       	mov    %r13d,0x40(%rsp)
     28e:	eb 47                	jmp    2d7 <_ZN7try_int4sortENS_3ArrEm+0x2d7>
     290:	44 8b 54 2c 40       	mov    0x40(%rsp,%rbp,1),%r10d
     295:	4d 8d 1c 2e          	lea    (%r14,%rbp,1),%r11
     299:	45 3b ea             	cmp    %r10d,%r13d
     29c:	7d 36                	jge    2d4 <_ZN7try_int4sortENS_3ArrEm+0x2d4>
     29e:	45 33 c9             	xor    %r9d,%r9d
     2a1:	4d 8d 04 2e          	lea    (%r14,%rbp,1),%r8
     2a5:	49 ff c1             	inc    %r9
     2a8:	45 89 13             	mov    %r10d,(%r11)
     2ab:	4a 8d 04 cd 00 00 00 	lea    0x0(,%r9,8),%rax
     2b2:	00 
     2b3:	48 f7 d8             	neg    %rax
     2b6:	49 03 c0             	add    %r8,%rax
     2b9:	44 8b 10             	mov    (%rax),%r10d
     2bc:	4c 8d 58 04          	lea    0x4(%rax),%r11
     2c0:	45 3b ea             	cmp    %r10d,%r13d
     2c3:	7d 0f                	jge    2d4 <_ZN7try_int4sortENS_3ArrEm+0x2d4>
     2c5:	45 89 13             	mov    %r10d,(%r11)
     2c8:	49 89 c3             	mov    %rax,%r11
     2cb:	44 8b 50 fc          	mov    -0x4(%rax),%r10d
     2cf:	45 3b ea             	cmp    %r10d,%r13d
     2d2:	7c d1                	jl     2a5 <_ZN7try_int4sortENS_3ArrEm+0x2a5>
     2d4:	45 89 2b             	mov    %r13d,(%r11)
     2d7:	49 ff c4             	inc    %r12
     2da:	48 83 c5 04          	add    $0x4,%rbp
     2de:	49 83 fc 0f          	cmp    $0xf,%r12
     2e2:	0f 82 71 ff ff ff    	jb     259 <_ZN7try_int4sortENS_3ArrEm+0x259>
     2e8:	4c 8b 34 24          	mov    (%rsp),%r14
     2ec:	48 89 d8             	mov    %rbx,%rax
     2ef:	4c 8d 8c 24 80 00 00 	lea    0x80(%rsp),%r9
     2f6:	00 
     2f7:	45 33 c0             	xor    %r8d,%r8d
     2fa:	4c 3b c8             	cmp    %rax,%r9
     2fd:	0f 84 17 fd ff ff    	je     1a <_ZN7try_int4sortENS_3ArrEm+0x1a>
     303:	48 89 c2             	mov    %rax,%rdx
     306:	49 2b d1             	sub    %r9,%rdx
     309:	48 83 c2 03          	add    $0x3,%rdx
     30d:	48 d1 fa             	sar    %rdx
     310:	48 c1 ea 3e          	shr    $0x3e,%rdx
     314:	48 03 c2             	add    %rdx,%rax
     317:	49 2b c1             	sub    %r9,%rax
     31a:	48 83 c0 03          	add    $0x3,%rax
     31e:	48 c1 f8 02          	sar    $0x2,%rax
     322:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
     326:	4b 8d 3c 81          	lea    (%r9,%r8,4),%rdi
     32a:	46 8b 54 84 7c       	mov    0x7c(%rsp,%r8,4),%r10d
     32f:	41 3b f2             	cmp    %r10d,%esi
     332:	7d 35                	jge    369 <_ZN7try_int4sortENS_3ArrEm+0x369>
     334:	33 c9                	xor    %ecx,%ecx
     336:	4b 8d 14 81          	lea    (%r9,%r8,4),%rdx
     33a:	48 ff c1             	inc    %rcx
     33d:	44 89 17             	mov    %r10d,(%rdi)
     340:	4c 8d 1c cd 00 00 00 	lea    0x0(,%rcx,8),%r11
     347:	00 
     348:	49 f7 db             	neg    %r11
     34b:	4c 03 da             	add    %rdx,%r11
     34e:	45 8b 13             	mov    (%r11),%r10d
     351:	49 8d 7b 04          	lea    0x4(%r11),%rdi
     355:	41 3b f2             	cmp    %r10d,%esi
     358:	7d 0f                	jge    369 <_ZN7try_int4sortENS_3ArrEm+0x369>
     35a:	44 89 17             	mov    %r10d,(%rdi)
     35d:	4c 89 df             	mov    %r11,%rdi
     360:	45 8b 53 fc          	mov    -0x4(%r11),%r10d
     364:	41 3b f2             	cmp    %r10d,%esi
     367:	7c d1                	jl     33a <_ZN7try_int4sortENS_3ArrEm+0x33a>
     369:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     36f:	49 ff c0             	inc    %r8
     372:	89 37                	mov    %esi,(%rdi)
     374:	4c 3b c0             	cmp    %rax,%r8
     377:	72 a9                	jb     322 <_ZN7try_int4sortENS_3ArrEm+0x322>
     379:	e9 9c fc ff ff       	jmpq   1a <_ZN7try_int4sortENS_3ArrEm+0x1a>
     37e:	48 89 e8             	mov    %rbp,%rax
     381:	4c 89 e6             	mov    %r12,%rsi
     384:	48 83 f9 02          	cmp    $0x2,%rcx
     388:	7d 0f                	jge    399 <_ZN7try_int4sortENS_3ArrEm+0x399>
     38a:	48 83 f9 01          	cmp    $0x1,%rcx
     38e:	0f 8f 5a 02 00 00    	jg     5ee <_ZN7try_int4sortENS_3ArrEm+0x5ee>
     394:	e9 93 fe ff ff       	jmpq   22c <_ZN7try_int4sortENS_3ArrEm+0x22c>
     399:	48 8d 51 fe          	lea    -0x2(%rcx),%rdx
     39d:	48 c1 ea 3f          	shr    $0x3f,%rdx
     3a1:	45 33 c9             	xor    %r9d,%r9d
     3a4:	48 85 c9             	test   %rcx,%rcx
     3a7:	41 0f 9e c1          	setle  %r9b
     3ab:	48 8d 7c 11 fe       	lea    -0x2(%rcx,%rdx,1),%rdi
     3b0:	48 d1 ff             	sar    %rdi
     3b3:	49 89 fa             	mov    %rdi,%r10
     3b6:	4e 8d 4c 09 ff       	lea    -0x1(%rcx,%r9,1),%r9
     3bb:	48 83 e1 01          	and    $0x1,%rcx
     3bf:	49 d1 f9             	sar    %r9
     3c2:	48 8d 54 bc 40       	lea    0x40(%rsp,%rdi,4),%rdx
     3c7:	48 ff cf             	dec    %rdi
     3ca:	48 83 c2 fc          	add    $0xfffffffffffffffc,%rdx
     3ce:	44 8b 7a 04          	mov    0x4(%rdx),%r15d
     3d2:	48 8d 6f 01          	lea    0x1(%rdi),%rbp
     3d6:	49 89 ec             	mov    %rbp,%r12
     3d9:	48 89 eb             	mov    %rbp,%rbx
     3dc:	49 3b e9             	cmp    %r9,%rbp
     3df:	0f 8d 98 01 00 00    	jge    57d <_ZN7try_int4sortENS_3ArrEm+0x57d>
     3e5:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
     3ec:	00 
     3ed:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     3f2:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     3f6:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
     3fa:	7d 08                	jge    404 <_ZN7try_int4sortENS_3ArrEm+0x404>
     3fc:	48 ff cb             	dec    %rbx
     3ff:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     404:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     408:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
     40d:	49 89 dc             	mov    %rbx,%r12
     410:	49 3b d9             	cmp    %r9,%rbx
     413:	0f 8d 64 01 00 00    	jge    57d <_ZN7try_int4sortENS_3ArrEm+0x57d>
     419:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
     420:	00 
     421:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     426:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     42a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
     42e:	7d 08                	jge    438 <_ZN7try_int4sortENS_3ArrEm+0x438>
     430:	48 ff cb             	dec    %rbx
     433:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     438:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     43c:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
     441:	49 89 dc             	mov    %rbx,%r12
     444:	49 3b d9             	cmp    %r9,%rbx
     447:	0f 8d 30 01 00 00    	jge    57d <_ZN7try_int4sortENS_3ArrEm+0x57d>
     44d:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
     454:	00 
     455:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     45a:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     45e:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
     462:	7d 08                	jge    46c <_ZN7try_int4sortENS_3ArrEm+0x46c>
     464:	48 ff cb             	dec    %rbx
     467:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     46c:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     470:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
     475:	49 89 dc             	mov    %rbx,%r12
     478:	49 3b d9             	cmp    %r9,%rbx
     47b:	0f 8d fc 00 00 00    	jge    57d <_ZN7try_int4sortENS_3ArrEm+0x57d>
     481:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
     488:	00 
     489:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     48e:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     492:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
     496:	7d 08                	jge    4a0 <_ZN7try_int4sortENS_3ArrEm+0x4a0>
     498:	48 ff cb             	dec    %rbx
     49b:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     4a0:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     4a4:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
     4a9:	49 89 dc             	mov    %rbx,%r12
     4ac:	49 3b d9             	cmp    %r9,%rbx
     4af:	0f 8d c8 00 00 00    	jge    57d <_ZN7try_int4sortENS_3ArrEm+0x57d>
     4b5:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
     4bc:	00 
     4bd:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     4c2:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     4c6:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
     4ca:	7d 08                	jge    4d4 <_ZN7try_int4sortENS_3ArrEm+0x4d4>
     4cc:	48 ff cb             	dec    %rbx
     4cf:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     4d4:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     4d8:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
     4dd:	49 89 dc             	mov    %rbx,%r12
     4e0:	49 3b d9             	cmp    %r9,%rbx
     4e3:	0f 8d 94 00 00 00    	jge    57d <_ZN7try_int4sortENS_3ArrEm+0x57d>
     4e9:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
     4f0:	00 
     4f1:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     4f6:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     4fa:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
     4fe:	7d 08                	jge    508 <_ZN7try_int4sortENS_3ArrEm+0x508>
     500:	48 ff cb             	dec    %rbx
     503:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     508:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     50c:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
     511:	49 89 dc             	mov    %rbx,%r12
     514:	49 3b d9             	cmp    %r9,%rbx
     517:	7d 64                	jge    57d <_ZN7try_int4sortENS_3ArrEm+0x57d>
     519:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
     520:	00 
     521:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     526:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     52a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
     52e:	7d 08                	jge    538 <_ZN7try_int4sortENS_3ArrEm+0x538>
     530:	48 ff cb             	dec    %rbx
     533:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     538:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     53c:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
     541:	49 89 dc             	mov    %rbx,%r12
     544:	49 3b d9             	cmp    %r9,%rbx
     547:	7d 34                	jge    57d <_ZN7try_int4sortENS_3ArrEm+0x57d>
     549:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
     550:	00 
     551:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     556:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     55a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
     55e:	7d 08                	jge    568 <_ZN7try_int4sortENS_3ArrEm+0x568>
     560:	48 ff cb             	dec    %rbx
     563:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
     568:	45 8b 5d 00          	mov    0x0(%r13),%r11d
     56c:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
     571:	49 89 dc             	mov    %rbx,%r12
     574:	49 3b d9             	cmp    %r9,%rbx
     577:	0f 8c 68 fe ff ff    	jl     3e5 <_ZN7try_int4sortENS_3ArrEm+0x3e5>
     57d:	48 85 c9             	test   %rcx,%rcx
     580:	75 1b                	jne    59d <_ZN7try_int4sortENS_3ArrEm+0x59d>
     582:	49 3b da             	cmp    %r10,%rbx
     585:	75 16                	jne    59d <_ZN7try_int4sortENS_3ArrEm+0x59d>
     587:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
     58e:	00 
     58f:	44 8b 5c 9c 3c       	mov    0x3c(%rsp,%rbx,4),%r11d
     594:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
     599:	4c 8d 63 ff          	lea    -0x1(%rbx),%r12
     59d:	4d 8d 5c 24 ff       	lea    -0x1(%r12),%r11
     5a2:	49 c1 eb 3f          	shr    $0x3f,%r11
     5a6:	4f 8d 5c 1c ff       	lea    -0x1(%r12,%r11,1),%r11
     5ab:	49 d1 fb             	sar    %r11
     5ae:	4c 3b e5             	cmp    %rbp,%r12
     5b1:	7e 27                	jle    5da <_ZN7try_int4sortENS_3ArrEm+0x5da>
     5b3:	42 8b 5c 9c 40       	mov    0x40(%rsp,%r11,4),%ebx
     5b8:	41 3b df             	cmp    %r15d,%ebx
     5bb:	7d 1d                	jge    5da <_ZN7try_int4sortENS_3ArrEm+0x5da>
     5bd:	42 89 5c a4 40       	mov    %ebx,0x40(%rsp,%r12,4)
     5c2:	49 8d 5b ff          	lea    -0x1(%r11),%rbx
     5c6:	48 c1 eb 3f          	shr    $0x3f,%rbx
     5ca:	4d 89 dc             	mov    %r11,%r12
     5cd:	4d 8d 5c 1b ff       	lea    -0x1(%r11,%rbx,1),%r11
     5d2:	49 d1 fb             	sar    %r11
     5d5:	4c 3b e5             	cmp    %rbp,%r12
     5d8:	7f d9                	jg     5b3 <_ZN7try_int4sortENS_3ArrEm+0x5b3>
     5da:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     5df:	46 89 7c a4 40       	mov    %r15d,0x40(%rsp,%r12,4)
     5e4:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
     5e8:	0f 85 d9 fd ff ff    	jne    3c7 <_ZN7try_int4sortENS_3ArrEm+0x3c7>
     5ee:	8b 54 24 40          	mov    0x40(%rsp),%edx
     5f2:	33 c9                	xor    %ecx,%ecx
     5f4:	48 ff c1             	inc    %rcx
     5f7:	45 33 db             	xor    %r11d,%r11d
     5fa:	33 ff                	xor    %edi,%edi
     5fc:	45 33 c9             	xor    %r9d,%r9d
     5ff:	4c 8d 14 8d 00 00 00 	lea    0x0(,%rcx,4),%r10
     606:	00 
     607:	49 f7 da             	neg    %r10
     60a:	4d 03 d0             	add    %r8,%r10
     60d:	41 8b 1a             	mov    (%r10),%ebx
     610:	41 89 12             	mov    %edx,(%r10)
     613:	4c 8d 54 8c 40       	lea    0x40(%rsp,%rcx,4),%r10
     618:	49 f7 da             	neg    %r10
     61b:	4d 03 d0             	add    %r8,%r10
     61e:	49 c1 fa 02          	sar    $0x2,%r10
     622:	4d 85 d2             	test   %r10,%r10
     625:	40 0f 9e c7          	setle  %dil
     629:	49 8d 7c 3a ff       	lea    -0x1(%r10,%rdi,1),%rdi
     62e:	48 d1 ff             	sar    %rdi
     631:	48 85 ff             	test   %rdi,%rdi
     634:	7e 5c                	jle    692 <_ZN7try_int4sortENS_3ArrEm+0x692>
     636:	4e 8d 0c 4d 02 00 00 	lea    0x2(,%r9,2),%r9
     63d:	00 
     63e:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
     643:	41 8b 2f             	mov    (%r15),%ebp
     646:	41 3b 6f fc          	cmp    -0x4(%r15),%ebp
     64a:	7d 08                	jge    654 <_ZN7try_int4sortENS_3ArrEm+0x654>
     64c:	49 ff c9             	dec    %r9
     64f:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
     654:	41 8b 2f             	mov    (%r15),%ebp
     657:	42 89 6c 9c 40       	mov    %ebp,0x40(%rsp,%r11,4)
     65c:	4d 89 cb             	mov    %r9,%r11
     65f:	4c 3b cf             	cmp    %rdi,%r9
     662:	7d 2e                	jge    692 <_ZN7try_int4sortENS_3ArrEm+0x692>
     664:	4e 8d 0c 4d 02 00 00 	lea    0x2(,%r9,2),%r9
     66b:	00 
     66c:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
     671:	41 8b 2f             	mov    (%r15),%ebp
     674:	41 3b 6f fc          	cmp    -0x4(%r15),%ebp
     678:	7d 08                	jge    682 <_ZN7try_int4sortENS_3ArrEm+0x682>
     67a:	49 ff c9             	dec    %r9
     67d:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
     682:	41 8b 2f             	mov    (%r15),%ebp
     685:	42 89 6c 9c 40       	mov    %ebp,0x40(%rsp,%r11,4)
     68a:	4d 89 cb             	mov    %r9,%r11
     68d:	4c 3b cf             	cmp    %rdi,%r9
     690:	7c a4                	jl     636 <_ZN7try_int4sortENS_3ArrEm+0x636>
     692:	49 f7 c2 01 00 00 00 	test   $0x1,%r10
     699:	75 2b                	jne    6c6 <_ZN7try_int4sortENS_3ArrEm+0x6c6>
     69b:	49 8d 7a fe          	lea    -0x2(%r10),%rdi
     69f:	48 c1 ef 3f          	shr    $0x3f,%rdi
     6a3:	49 8d 7c 3a fe       	lea    -0x2(%r10,%rdi,1),%rdi
     6a8:	48 d1 ff             	sar    %rdi
     6ab:	4c 3b cf             	cmp    %rdi,%r9
     6ae:	75 16                	jne    6c6 <_ZN7try_int4sortENS_3ArrEm+0x6c6>
     6b0:	4e 8d 0c 4d 02 00 00 	lea    0x2(,%r9,2),%r9
     6b7:	00 
     6b8:	42 8b 7c 8c 3c       	mov    0x3c(%rsp,%r9,4),%edi
     6bd:	42 89 7c 9c 40       	mov    %edi,0x40(%rsp,%r11,4)
     6c2:	4d 8d 59 ff          	lea    -0x1(%r9),%r11
     6c6:	49 8d 7b ff          	lea    -0x1(%r11),%rdi
     6ca:	48 c1 ef 3f          	shr    $0x3f,%rdi
     6ce:	49 8d 7c 3b ff       	lea    -0x1(%r11,%rdi,1),%rdi
     6d3:	48 d1 ff             	sar    %rdi
     6d6:	4d 85 db             	test   %r11,%r11
     6d9:	7e 27                	jle    702 <_ZN7try_int4sortENS_3ArrEm+0x702>
     6db:	44 8b 4c bc 40       	mov    0x40(%rsp,%rdi,4),%r9d
     6e0:	44 3b cb             	cmp    %ebx,%r9d
     6e3:	7d 1d                	jge    702 <_ZN7try_int4sortENS_3ArrEm+0x702>
     6e5:	46 89 4c 9c 40       	mov    %r9d,0x40(%rsp,%r11,4)
     6ea:	4c 8d 4f ff          	lea    -0x1(%rdi),%r9
     6ee:	49 c1 e9 3f          	shr    $0x3f,%r9
     6f2:	49 89 fb             	mov    %rdi,%r11
     6f5:	4a 8d 7c 0f ff       	lea    -0x1(%rdi,%r9,1),%rdi
     6fa:	48 d1 ff             	sar    %rdi
     6fd:	4d 85 db             	test   %r11,%r11
     700:	7f d9                	jg     6db <_ZN7try_int4sortENS_3ArrEm+0x6db>
     702:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     707:	42 89 5c 9c 40       	mov    %ebx,0x40(%rsp,%r11,4)
     70c:	49 83 fa 01          	cmp    $0x1,%r10
     710:	0f 8f de fe ff ff    	jg     5f4 <_ZN7try_int4sortENS_3ArrEm+0x5f4>
     716:	e9 11 fb ff ff       	jmpq   22c <_ZN7try_int4sortENS_3ArrEm+0x22c>
     71b:	48 3b f0             	cmp    %rax,%rsi
     71e:	0f 84 f6 f8 ff ff    	je     1a <_ZN7try_int4sortENS_3ArrEm+0x1a>
     724:	33 c9                	xor    %ecx,%ecx
     726:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
     72b:	33 d2                	xor    %edx,%edx
     72d:	48 3b f8             	cmp    %rax,%rdi
     730:	0f 84 e4 f8 ff ff    	je     1a <_ZN7try_int4sortENS_3ArrEm+0x1a>
     736:	49 89 c0             	mov    %rax,%r8
     739:	48 89 d5             	mov    %rdx,%rbp
     73c:	4c 2b c7             	sub    %rdi,%r8
     73f:	49 89 cc             	mov    %rcx,%r12
     742:	49 83 c0 03          	add    $0x3,%r8
     746:	49 89 f7             	mov    %rsi,%r15
     749:	49 d1 f8             	sar    %r8
     74c:	49 c1 e8 3e          	shr    $0x3e,%r8
     750:	49 03 c0             	add    %r8,%rax
     753:	48 2b c7             	sub    %rdi,%rax
     756:	48 83 c0 03          	add    $0x3,%rax
     75a:	48 c1 f8 02          	sar    $0x2,%rax
     75e:	4c 89 34 24          	mov    %r14,(%rsp)
     762:	48 89 c3             	mov    %rax,%rbx
     765:	49 89 fe             	mov    %rdi,%r14
     768:	46 8b 6c 35 00       	mov    0x0(%rbp,%r14,1),%r13d
     76d:	44 3b 6c 24 40       	cmp    0x40(%rsp),%r13d
     772:	7d 2b                	jge    79f <_ZN7try_int4sortENS_3ArrEm+0x79f>
     774:	48 8d 55 04          	lea    0x4(%rbp),%rdx
     778:	48 c1 fa 02          	sar    $0x2,%rdx
     77c:	48 85 d2             	test   %rdx,%rdx
     77f:	74 17                	je     798 <_ZN7try_int4sortENS_3ArrEm+0x798>
     781:	48 c1 e2 02          	shl    $0x2,%rdx
     785:	4d 89 f0             	mov    %r14,%r8
     788:	4c 2b c2             	sub    %rdx,%r8
     78b:	4c 89 fe             	mov    %r15,%rsi
     78e:	4a 8d 7c 05 04       	lea    0x4(%rbp,%r8,1),%rdi
     793:	e8 00 00 00 00       	callq  798 <_ZN7try_int4sortENS_3ArrEm+0x798>
     798:	44 89 6c 24 40       	mov    %r13d,0x40(%rsp)
     79d:	eb 48                	jmp    7e7 <_ZN7try_int4sortENS_3ArrEm+0x7e7>
     79f:	44 8b 54 2c 40       	mov    0x40(%rsp,%rbp,1),%r10d
     7a4:	4d 8d 1c 2e          	lea    (%r14,%rbp,1),%r11
     7a8:	45 3b ea             	cmp    %r10d,%r13d
     7ab:	7d 36                	jge    7e3 <_ZN7try_int4sortENS_3ArrEm+0x7e3>
     7ad:	45 33 c9             	xor    %r9d,%r9d
     7b0:	4d 8d 04 2e          	lea    (%r14,%rbp,1),%r8
     7b4:	49 ff c1             	inc    %r9
     7b7:	45 89 13             	mov    %r10d,(%r11)
     7ba:	4a 8d 04 cd 00 00 00 	lea    0x0(,%r9,8),%rax
     7c1:	00 
     7c2:	48 f7 d8             	neg    %rax
     7c5:	49 03 c0             	add    %r8,%rax
     7c8:	44 8b 10             	mov    (%rax),%r10d
     7cb:	4c 8d 58 04          	lea    0x4(%rax),%r11
     7cf:	45 3b ea             	cmp    %r10d,%r13d
     7d2:	7d 0f                	jge    7e3 <_ZN7try_int4sortENS_3ArrEm+0x7e3>
     7d4:	45 89 13             	mov    %r10d,(%r11)
     7d7:	49 89 c3             	mov    %rax,%r11
     7da:	44 8b 50 fc          	mov    -0x4(%rax),%r10d
     7de:	45 3b ea             	cmp    %r10d,%r13d
     7e1:	7c d1                	jl     7b4 <_ZN7try_int4sortENS_3ArrEm+0x7b4>
     7e3:	90                   	nop
     7e4:	45 89 2b             	mov    %r13d,(%r11)
     7e7:	49 ff c4             	inc    %r12
     7ea:	48 83 c5 04          	add    $0x4,%rbp
     7ee:	4c 3b e3             	cmp    %rbx,%r12
     7f1:	0f 82 71 ff ff ff    	jb     768 <_ZN7try_int4sortENS_3ArrEm+0x768>
     7f7:	4c 8b 34 24          	mov    (%rsp),%r14
     7fb:	e9 1a f8 ff ff       	jmpq   1a <_ZN7try_int4sortENS_3ArrEm+0x1a>

0000000000000800 <_ZN7try_int4fillENS_3ArrEm>:
     800:	48 85 ff             	test   %rdi,%rdi
     803:	77 04                	ja     809 <_ZN7try_int4fillENS_3ArrEm+0x9>
     805:	c5 f8 77             	vzeroupper 
     808:	c3                   	retq   
     809:	48 83 ff 08          	cmp    $0x8,%rdi
     80d:	72 61                	jb     870 <_ZN7try_int4fillENS_3ArrEm+0x70>
     80f:	48 83 ff 5d          	cmp    $0x5d,%rdi
     813:	72 77                	jb     88c <_ZN7try_int4fillENS_3ArrEm+0x8c>
     815:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
     81a:	48 83 e1 1f          	and    $0x1f,%rcx
     81e:	74 0b                	je     82b <_ZN7try_int4fillENS_3ArrEm+0x2b>
     820:	48 f7 d9             	neg    %rcx
     823:	48 83 c1 20          	add    $0x20,%rcx
     827:	48 c1 e9 02          	shr    $0x2,%rcx
     82b:	48 8d 41 08          	lea    0x8(%rcx),%rax
     82f:	48 3b f8             	cmp    %rax,%rdi
     832:	72 3c                	jb     870 <_ZN7try_int4fillENS_3ArrEm+0x70>
     834:	48 89 fa             	mov    %rdi,%rdx
     837:	33 c0                	xor    %eax,%eax
     839:	48 2b d1             	sub    %rcx,%rdx
     83c:	48 83 e2 07          	and    $0x7,%rdx
     840:	48 f7 da             	neg    %rdx
     843:	48 03 d7             	add    %rdi,%rdx
     846:	48 85 c9             	test   %rcx,%rcx
     849:	76 10                	jbe    85b <_ZN7try_int4fillENS_3ArrEm+0x5b>
     84b:	c7 44 84 08 00 00 00 	movl   $0x0,0x8(%rsp,%rax,4)
     852:	00 
     853:	48 ff c0             	inc    %rax
     856:	48 3b c1             	cmp    %rcx,%rax
     859:	72 f0                	jb     84b <_ZN7try_int4fillENS_3ArrEm+0x4b>
     85b:	c5 fd ef c0          	vpxor  %ymm0,%ymm0,%ymm0
     85f:	c5 fe 7f 44 8c 08    	vmovdqu %ymm0,0x8(%rsp,%rcx,4)
     865:	48 83 c1 08          	add    $0x8,%rcx
     869:	48 3b ca             	cmp    %rdx,%rcx
     86c:	72 f1                	jb     85f <_ZN7try_int4fillENS_3ArrEm+0x5f>
     86e:	eb 02                	jmp    872 <_ZN7try_int4fillENS_3ArrEm+0x72>
     870:	33 d2                	xor    %edx,%edx
     872:	48 3b d7             	cmp    %rdi,%rdx
     875:	73 8e                	jae    805 <_ZN7try_int4fillENS_3ArrEm+0x5>
     877:	c7 44 94 08 00 00 00 	movl   $0x0,0x8(%rsp,%rdx,4)
     87e:	00 
     87f:	48 ff c2             	inc    %rdx
     882:	48 3b d7             	cmp    %rdi,%rdx
     885:	72 f0                	jb     877 <_ZN7try_int4fillENS_3ArrEm+0x77>
     887:	e9 79 ff ff ff       	jmpq   805 <_ZN7try_int4fillENS_3ArrEm+0x5>
     88c:	48 89 fa             	mov    %rdi,%rdx
     88f:	33 c9                	xor    %ecx,%ecx
     891:	48 83 e2 f8          	and    $0xfffffffffffffff8,%rdx
     895:	eb c4                	jmp    85b <_ZN7try_int4fillENS_3ArrEm+0x5b>
     897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     89e:	00 00 

00000000000008a0 <_ZN7try_int9transformENS_3ArrES0_m>:
     8a0:	48 c1 e7 02          	shl    $0x2,%rdi
     8a4:	48 c1 ff 02          	sar    $0x2,%rdi
     8a8:	48 85 ff             	test   %rdi,%rdi
     8ab:	0f 8e 8f 00 00 00    	jle    940 <_ZN7try_int9transformENS_3ArrES0_m+0xa0>
     8b1:	48 83 ff 08          	cmp    $0x8,%rdi
     8b5:	7c 70                	jl     927 <_ZN7try_int9transformENS_3ArrES0_m+0x87>
     8b7:	48 81 ff 39 02 00 00 	cmp    $0x239,%rdi
     8be:	0f 8c 80 00 00 00    	jl     944 <_ZN7try_int9transformENS_3ArrES0_m+0xa4>
     8c4:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
     8c9:	48 83 e1 1f          	and    $0x1f,%rcx
     8cd:	74 0b                	je     8da <_ZN7try_int9transformENS_3ArrES0_m+0x3a>
     8cf:	48 f7 d9             	neg    %rcx
     8d2:	48 83 c1 20          	add    $0x20,%rcx
     8d6:	48 c1 e9 02          	shr    $0x2,%rcx
     8da:	48 8d 41 08          	lea    0x8(%rcx),%rax
     8de:	48 3b f8             	cmp    %rax,%rdi
     8e1:	7c 44                	jl     927 <_ZN7try_int9transformENS_3ArrES0_m+0x87>
     8e3:	48 89 f8             	mov    %rdi,%rax
     8e6:	33 d2                	xor    %edx,%edx
     8e8:	48 2b c1             	sub    %rcx,%rax
     8eb:	48 83 e0 07          	and    $0x7,%rax
     8ef:	48 f7 d8             	neg    %rax
     8f2:	48 03 c7             	add    %rdi,%rax
     8f5:	48 85 c9             	test   %rcx,%rcx
     8f8:	76 12                	jbe    90c <_ZN7try_int9transformENS_3ArrES0_m+0x6c>
     8fa:	8b 74 94 08          	mov    0x8(%rsp,%rdx,4),%esi
     8fe:	03 f6                	add    %esi,%esi
     900:	89 74 94 08          	mov    %esi,0x8(%rsp,%rdx,4)
     904:	48 ff c2             	inc    %rdx
     907:	48 3b d1             	cmp    %rcx,%rdx
     90a:	72 ee                	jb     8fa <_ZN7try_int9transformENS_3ArrES0_m+0x5a>
     90c:	c5 fe 6f 44 8c 08    	vmovdqu 0x8(%rsp,%rcx,4),%ymm0
     912:	c5 fd fe c8          	vpaddd %ymm0,%ymm0,%ymm1
     916:	c5 fe 7f 4c 8c 08    	vmovdqu %ymm1,0x8(%rsp,%rcx,4)
     91c:	48 83 c1 08          	add    $0x8,%rcx
     920:	48 3b c8             	cmp    %rax,%rcx
     923:	72 e7                	jb     90c <_ZN7try_int9transformENS_3ArrES0_m+0x6c>
     925:	eb 02                	jmp    929 <_ZN7try_int9transformENS_3ArrES0_m+0x89>
     927:	33 c0                	xor    %eax,%eax
     929:	48 3b c7             	cmp    %rdi,%rax
     92c:	73 12                	jae    940 <_ZN7try_int9transformENS_3ArrES0_m+0xa0>
     92e:	8b 54 84 08          	mov    0x8(%rsp,%rax,4),%edx
     932:	03 d2                	add    %edx,%edx
     934:	89 54 84 08          	mov    %edx,0x8(%rsp,%rax,4)
     938:	48 ff c0             	inc    %rax
     93b:	48 3b c7             	cmp    %rdi,%rax
     93e:	72 ee                	jb     92e <_ZN7try_int9transformENS_3ArrES0_m+0x8e>
     940:	c5 f8 77             	vzeroupper 
     943:	c3                   	retq   
     944:	48 89 f8             	mov    %rdi,%rax
     947:	33 c9                	xor    %ecx,%ecx
     949:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     94d:	eb bd                	jmp    90c <_ZN7try_int9transformENS_3ArrES0_m+0x6c>
     94f:	90                   	nop

0000000000000950 <_ZN7try_int11transform32ENS_3ArrES0_m>:
     950:	48 c1 e7 05          	shl    $0x5,%rdi
     954:	48 c1 ff 02          	sar    $0x2,%rdi
     958:	48 85 ff             	test   %rdi,%rdi
     95b:	0f 8e 8f 00 00 00    	jle    9f0 <_ZN7try_int11transform32ENS_3ArrES0_m+0xa0>
     961:	48 83 ff 08          	cmp    $0x8,%rdi
     965:	7c 70                	jl     9d7 <_ZN7try_int11transform32ENS_3ArrES0_m+0x87>
     967:	48 81 ff 39 02 00 00 	cmp    $0x239,%rdi
     96e:	0f 8c 80 00 00 00    	jl     9f4 <_ZN7try_int11transform32ENS_3ArrES0_m+0xa4>
     974:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
     979:	48 83 e1 1f          	and    $0x1f,%rcx
     97d:	74 0b                	je     98a <_ZN7try_int11transform32ENS_3ArrES0_m+0x3a>
     97f:	48 f7 d9             	neg    %rcx
     982:	48 83 c1 20          	add    $0x20,%rcx
     986:	48 c1 e9 02          	shr    $0x2,%rcx
     98a:	48 8d 41 08          	lea    0x8(%rcx),%rax
     98e:	48 3b f8             	cmp    %rax,%rdi
     991:	7c 44                	jl     9d7 <_ZN7try_int11transform32ENS_3ArrES0_m+0x87>
     993:	48 89 f8             	mov    %rdi,%rax
     996:	33 d2                	xor    %edx,%edx
     998:	48 2b c1             	sub    %rcx,%rax
     99b:	48 83 e0 07          	and    $0x7,%rax
     99f:	48 f7 d8             	neg    %rax
     9a2:	48 03 c7             	add    %rdi,%rax
     9a5:	48 85 c9             	test   %rcx,%rcx
     9a8:	76 12                	jbe    9bc <_ZN7try_int11transform32ENS_3ArrES0_m+0x6c>
     9aa:	8b 74 94 08          	mov    0x8(%rsp,%rdx,4),%esi
     9ae:	03 f6                	add    %esi,%esi
     9b0:	89 74 94 08          	mov    %esi,0x8(%rsp,%rdx,4)
     9b4:	48 ff c2             	inc    %rdx
     9b7:	48 3b d1             	cmp    %rcx,%rdx
     9ba:	72 ee                	jb     9aa <_ZN7try_int11transform32ENS_3ArrES0_m+0x5a>
     9bc:	c5 fe 6f 44 8c 08    	vmovdqu 0x8(%rsp,%rcx,4),%ymm0
     9c2:	c5 fd fe c8          	vpaddd %ymm0,%ymm0,%ymm1
     9c6:	c5 fe 7f 4c 8c 08    	vmovdqu %ymm1,0x8(%rsp,%rcx,4)
     9cc:	48 83 c1 08          	add    $0x8,%rcx
     9d0:	48 3b c8             	cmp    %rax,%rcx
     9d3:	72 e7                	jb     9bc <_ZN7try_int11transform32ENS_3ArrES0_m+0x6c>
     9d5:	eb 02                	jmp    9d9 <_ZN7try_int11transform32ENS_3ArrES0_m+0x89>
     9d7:	33 c0                	xor    %eax,%eax
     9d9:	48 3b c7             	cmp    %rdi,%rax
     9dc:	73 12                	jae    9f0 <_ZN7try_int11transform32ENS_3ArrES0_m+0xa0>
     9de:	8b 54 84 08          	mov    0x8(%rsp,%rax,4),%edx
     9e2:	03 d2                	add    %edx,%edx
     9e4:	89 54 84 08          	mov    %edx,0x8(%rsp,%rax,4)
     9e8:	48 ff c0             	inc    %rax
     9eb:	48 3b c7             	cmp    %rdi,%rax
     9ee:	72 ee                	jb     9de <_ZN7try_int11transform32ENS_3ArrES0_m+0x8e>
     9f0:	c5 f8 77             	vzeroupper 
     9f3:	c3                   	retq   
     9f4:	48 89 f8             	mov    %rdi,%rax
     9f7:	33 c9                	xor    %ecx,%ecx
     9f9:	eb c1                	jmp    9bc <_ZN7try_int11transform32ENS_3ArrES0_m+0x6c>
     9fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a00 <_ZN9try_float4sortENS_3ArrEm>:
     a00:	41 54                	push   %r12
     a02:	41 55                	push   %r13
     a04:	41 56                	push   %r14
     a06:	41 57                	push   %r15
     a08:	48 83 ec 18          	sub    $0x18,%rsp
     a0c:	4c 8d 54 24 40       	lea    0x40(%rsp),%r10
     a11:	4d 8d 0c ba          	lea    (%r10,%rdi,4),%r9
     a15:	4d 3b d1             	cmp    %r9,%r10
     a18:	75 0d                	jne    a27 <_ZN9try_float4sortENS_3ArrEm+0x27>
     a1a:	48 83 c4 18          	add    $0x18,%rsp
     a1e:	41 5f                	pop    %r15
     a20:	41 5e                	pop    %r14
     a22:	41 5d                	pop    %r13
     a24:	41 5c                	pop    %r12
     a26:	c3                   	retq   
     a27:	4c 89 c8             	mov    %r9,%rax
     a2a:	4c 89 ce             	mov    %r9,%rsi
     a2d:	49 2b c2             	sub    %r10,%rax
     a30:	48 c1 f8 02          	sar    $0x2,%rax
     a34:	f3 48 0f bd d0       	lzcnt  %rax,%rdx
     a39:	48 03 d2             	add    %rdx,%rdx
     a3c:	48 f7 da             	neg    %rdx
     a3f:	48 83 c2 7e          	add    $0x7e,%rdx
     a43:	48 83 f8 10          	cmp    $0x10,%rax
     a47:	0f 8e 82 07 00 00    	jle    11cf <_ZN9try_float4sortENS_3ArrEm+0x7cf>
     a4d:	49 89 d7             	mov    %rdx,%r15
     a50:	4d 89 cd             	mov    %r9,%r13
     a53:	4d 89 d6             	mov    %r10,%r14
     a56:	48 89 f0             	mov    %rsi,%rax
     a59:	49 2b c6             	sub    %r14,%rax
     a5c:	48 c1 f8 02          	sar    $0x2,%rax
     a60:	4d 85 ff             	test   %r15,%r15
     a63:	0f 84 a7 03 00 00    	je     e10 <_ZN9try_float4sortENS_3ArrEm+0x410>
     a69:	48 89 c1             	mov    %rax,%rcx
     a6c:	49 ff cf             	dec    %r15
     a6f:	48 c1 e9 3f          	shr    $0x3f,%rcx
     a73:	48 03 c1             	add    %rcx,%rax
     a76:	48 d1 f8             	sar    %rax
     a79:	c5 fa 10 44 24 44    	vmovss 0x44(%rsp),%xmm0
     a7f:	c5 fa 10 4e fc       	vmovss -0x4(%rsi),%xmm1
     a84:	c5 fa 10 54 84 40    	vmovss 0x40(%rsp,%rax,4),%xmm2
     a8a:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
     a8e:	76 33                	jbe    ac3 <_ZN9try_float4sortENS_3ArrEm+0xc3>
     a90:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
     a94:	77 39                	ja     acf <_ZN9try_float4sortENS_3ArrEm+0xcf>
     a96:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
     a9a:	76 13                	jbe    aaf <_ZN9try_float4sortENS_3ArrEm+0xaf>
     a9c:	8b 44 24 40          	mov    0x40(%rsp),%eax
     aa0:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
     aa4:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
     aaa:	89 46 fc             	mov    %eax,-0x4(%rsi)
     aad:	eb 32                	jmp    ae1 <_ZN9try_float4sortENS_3ArrEm+0xe1>
     aaf:	8b 44 24 40          	mov    0x40(%rsp),%eax
     ab3:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
     ab7:	c5 fa 11 44 24 40    	vmovss %xmm0,0x40(%rsp)
     abd:	89 44 24 44          	mov    %eax,0x44(%rsp)
     ac1:	eb 1e                	jmp    ae1 <_ZN9try_float4sortENS_3ArrEm+0xe1>
     ac3:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
     ac7:	77 e6                	ja     aaf <_ZN9try_float4sortENS_3ArrEm+0xaf>
     ac9:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
     acd:	77 cd                	ja     a9c <_ZN9try_float4sortENS_3ArrEm+0x9c>
     acf:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
     ad3:	48 c1 e0 02          	shl    $0x2,%rax
     ad7:	c5 fa 11 54 24 40    	vmovss %xmm2,0x40(%rsp)
     add:	89 4c 04 40          	mov    %ecx,0x40(%rsp,%rax,1)
     ae1:	48 89 f0             	mov    %rsi,%rax
     ae4:	4c 8d 64 24 44       	lea    0x44(%rsp),%r12
     ae9:	eb 14                	jmp    aff <_ZN9try_float4sortENS_3ArrEm+0xff>
     aeb:	c4 c1 7a 11 04 24    	vmovss %xmm0,(%r12)
     af1:	49 83 c4 04          	add    $0x4,%r12
     af5:	c5 fa 11 08          	vmovss %xmm1,(%rax)
     af9:	c5 fa 10 54 24 40    	vmovss 0x40(%rsp),%xmm2
     aff:	c4 c1 7a 10 0c 24    	vmovss (%r12),%xmm1
     b05:	4d 89 e0             	mov    %r12,%r8
     b08:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b0c:	0f 86 93 00 00 00    	jbe    ba5 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b12:	33 c9                	xor    %ecx,%ecx
     b14:	48 83 c1 20          	add    $0x20,%rcx
     b18:	4d 8d 1c 08          	lea    (%r8,%rcx,1),%r11
     b1c:	c4 c1 7a 10 4b e4    	vmovss -0x1c(%r11),%xmm1
     b22:	4d 8d 64 08 e4       	lea    -0x1c(%r8,%rcx,1),%r12
     b27:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b2b:	76 78                	jbe    ba5 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b2d:	c4 c1 7a 10 4b e8    	vmovss -0x18(%r11),%xmm1
     b33:	4d 8d 64 08 e8       	lea    -0x18(%r8,%rcx,1),%r12
     b38:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b3c:	76 67                	jbe    ba5 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b3e:	c4 c1 7a 10 4b ec    	vmovss -0x14(%r11),%xmm1
     b44:	4d 8d 64 08 ec       	lea    -0x14(%r8,%rcx,1),%r12
     b49:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b4d:	76 56                	jbe    ba5 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b4f:	c4 c1 7a 10 4b f0    	vmovss -0x10(%r11),%xmm1
     b55:	4d 8d 64 08 f0       	lea    -0x10(%r8,%rcx,1),%r12
     b5a:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b5e:	76 45                	jbe    ba5 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b60:	c4 c1 7a 10 4b f4    	vmovss -0xc(%r11),%xmm1
     b66:	4d 8d 64 08 f4       	lea    -0xc(%r8,%rcx,1),%r12
     b6b:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b6f:	76 34                	jbe    ba5 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b71:	c4 c1 7a 10 4b f8    	vmovss -0x8(%r11),%xmm1
     b77:	4d 8d 64 08 f8       	lea    -0x8(%r8,%rcx,1),%r12
     b7c:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b80:	76 23                	jbe    ba5 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b82:	c4 c1 7a 10 4b fc    	vmovss -0x4(%r11),%xmm1
     b88:	4d 8d 64 08 fc       	lea    -0x4(%r8,%rcx,1),%r12
     b8d:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b91:	76 12                	jbe    ba5 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b93:	c4 c1 7a 10 0b       	vmovss (%r11),%xmm1
     b98:	4d 89 dc             	mov    %r11,%r12
     b9b:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b9f:	0f 87 6f ff ff ff    	ja     b14 <_ZN9try_float4sortENS_3ArrEm+0x114>
     ba5:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
     ba9:	49 89 c0             	mov    %rax,%r8
     bac:	c5 fa 10 00          	vmovss (%rax),%xmm0
     bb0:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     bb4:	0f 86 93 00 00 00    	jbe    c4d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     bba:	33 c9                	xor    %ecx,%ecx
     bbc:	48 83 c1 e0          	add    $0xffffffffffffffe0,%rcx
     bc0:	4d 8d 1c 08          	lea    (%r8,%rcx,1),%r11
     bc4:	c4 c1 7a 10 43 1c    	vmovss 0x1c(%r11),%xmm0
     bca:	49 8d 44 08 1c       	lea    0x1c(%r8,%rcx,1),%rax
     bcf:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     bd3:	76 78                	jbe    c4d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     bd5:	c4 c1 7a 10 43 18    	vmovss 0x18(%r11),%xmm0
     bdb:	49 8d 44 08 18       	lea    0x18(%r8,%rcx,1),%rax
     be0:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     be4:	76 67                	jbe    c4d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     be6:	c4 c1 7a 10 43 14    	vmovss 0x14(%r11),%xmm0
     bec:	49 8d 44 08 14       	lea    0x14(%r8,%rcx,1),%rax
     bf1:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     bf5:	76 56                	jbe    c4d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     bf7:	c4 c1 7a 10 43 10    	vmovss 0x10(%r11),%xmm0
     bfd:	49 8d 44 08 10       	lea    0x10(%r8,%rcx,1),%rax
     c02:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     c06:	76 45                	jbe    c4d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     c08:	c4 c1 7a 10 43 0c    	vmovss 0xc(%r11),%xmm0
     c0e:	49 8d 44 08 0c       	lea    0xc(%r8,%rcx,1),%rax
     c13:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     c17:	76 34                	jbe    c4d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     c19:	c4 c1 7a 10 43 08    	vmovss 0x8(%r11),%xmm0
     c1f:	49 8d 44 08 08       	lea    0x8(%r8,%rcx,1),%rax
     c24:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     c28:	76 23                	jbe    c4d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     c2a:	c4 c1 7a 10 43 04    	vmovss 0x4(%r11),%xmm0
     c30:	49 8d 44 08 04       	lea    0x4(%r8,%rcx,1),%rax
     c35:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     c39:	76 12                	jbe    c4d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     c3b:	c4 c1 7a 10 03       	vmovss (%r11),%xmm0
     c40:	4c 89 d8             	mov    %r11,%rax
     c43:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     c47:	0f 87 6f ff ff ff    	ja     bbc <_ZN9try_float4sortENS_3ArrEm+0x1bc>
     c4d:	4c 3b e0             	cmp    %rax,%r12
     c50:	0f 82 95 fe ff ff    	jb     aeb <_ZN9try_float4sortENS_3ArrEm+0xeb>
     c56:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
     c5a:	4c 89 e7             	mov    %r12,%rdi
     c5d:	48 89 e1             	mov    %rsp,%rcx
     c60:	4c 89 fa             	mov    %r15,%rdx
     c63:	8a 44 24 10          	mov    0x10(%rsp),%al
     c67:	88 01                	mov    %al,(%rcx)
     c69:	e8 00 00 00 00       	callq  c6e <_ZN9try_float4sortENS_3ArrEm+0x26e>
     c6e:	48 83 c4 10          	add    $0x10,%rsp
     c72:	4c 89 e6             	mov    %r12,%rsi
     c75:	4d 2b e6             	sub    %r14,%r12
     c78:	49 c1 fc 02          	sar    $0x2,%r12
     c7c:	49 83 fc 10          	cmp    $0x10,%r12
     c80:	0f 8f d0 fd ff ff    	jg     a56 <_ZN9try_float4sortENS_3ArrEm+0x56>
     c86:	4d 89 e9             	mov    %r13,%r9
     c89:	4d 89 f2             	mov    %r14,%r10
     c8c:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
     c93:	00 
     c94:	4c 3b d0             	cmp    %rax,%r10
     c97:	0f 84 e2 00 00 00    	je     d7f <_ZN9try_float4sortENS_3ArrEm+0x37f>
     c9d:	33 c9                	xor    %ecx,%ecx
     c9f:	48 8d 74 24 44       	lea    0x44(%rsp),%rsi
     ca4:	33 d2                	xor    %edx,%edx
     ca6:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
     cab:	49 89 c5             	mov    %rax,%r13
     cae:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
     cb3:	49 89 d7             	mov    %rdx,%r15
     cb6:	48 89 cd             	mov    %rcx,%rbp
     cb9:	49 89 f4             	mov    %rsi,%r12
     cbc:	4c 89 cb             	mov    %r9,%rbx
     cbf:	4d 89 d6             	mov    %r10,%r14
     cc2:	c4 81 7a 10 0c 27    	vmovss (%r15,%r12,1),%xmm1
     cc8:	c5 fa 10 44 24 40    	vmovss 0x40(%rsp),%xmm0
     cce:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     cd2:	76 36                	jbe    d0a <_ZN9try_float4sortENS_3ArrEm+0x30a>
     cd4:	49 8d 57 04          	lea    0x4(%r15),%rdx
     cd8:	48 c1 fa 02          	sar    $0x2,%rdx
     cdc:	48 85 d2             	test   %rdx,%rdx
     cdf:	74 21                	je     d02 <_ZN9try_float4sortENS_3ArrEm+0x302>
     ce1:	48 c1 e2 02          	shl    $0x2,%rdx
     ce5:	4d 89 e0             	mov    %r12,%r8
     ce8:	4c 2b c2             	sub    %rdx,%r8
     ceb:	4c 89 f6             	mov    %r14,%rsi
     cee:	c5 fa 11 0c 24       	vmovss %xmm1,(%rsp)
     cf3:	4b 8d 7c 07 04       	lea    0x4(%r15,%r8,1),%rdi
     cf8:	e8 00 00 00 00       	callq  cfd <_ZN9try_float4sortENS_3ArrEm+0x2fd>
     cfd:	c5 fa 10 0c 24       	vmovss (%rsp),%xmm1
     d02:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
     d08:	eb 54                	jmp    d5e <_ZN9try_float4sortENS_3ArrEm+0x35e>
     d0a:	c4 a1 7a 10 44 3c 40 	vmovss 0x40(%rsp,%r15,1),%xmm0
     d11:	4f 8d 1c 3c          	lea    (%r12,%r15,1),%r11
     d15:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     d19:	76 3e                	jbe    d59 <_ZN9try_float4sortENS_3ArrEm+0x359>
     d1b:	45 33 c0             	xor    %r8d,%r8d
     d1e:	4b 8d 3c 3c          	lea    (%r12,%r15,1),%rdi
     d22:	49 ff c0             	inc    %r8
     d25:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
     d2a:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
     d31:	00 
     d32:	48 f7 d8             	neg    %rax
     d35:	48 03 c7             	add    %rdi,%rax
     d38:	c5 fa 10 00          	vmovss (%rax),%xmm0
     d3c:	4c 8d 58 04          	lea    0x4(%rax),%r11
     d40:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     d44:	76 13                	jbe    d59 <_ZN9try_float4sortENS_3ArrEm+0x359>
     d46:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
     d4b:	49 89 c3             	mov    %rax,%r11
     d4e:	c5 fa 10 40 fc       	vmovss -0x4(%rax),%xmm0
     d53:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     d57:	77 c9                	ja     d22 <_ZN9try_float4sortENS_3ArrEm+0x322>
     d59:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
     d5e:	48 ff c5             	inc    %rbp
     d61:	49 83 c7 04          	add    $0x4,%r15
     d65:	48 83 fd 0f          	cmp    $0xf,%rbp
     d69:	0f 82 53 ff ff ff    	jb     cc2 <_ZN9try_float4sortENS_3ArrEm+0x2c2>
     d6f:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
     d74:	49 89 d9             	mov    %rbx,%r9
     d77:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
     d7c:	4c 89 e8             	mov    %r13,%rax
     d7f:	33 d2                	xor    %edx,%edx
     d81:	49 3b c1             	cmp    %r9,%rax
     d84:	0f 84 90 fc ff ff    	je     a1a <_ZN9try_float4sortENS_3ArrEm+0x1a>
     d8a:	4c 89 c9             	mov    %r9,%rcx
     d8d:	48 2b c8             	sub    %rax,%rcx
     d90:	48 83 c1 03          	add    $0x3,%rcx
     d94:	48 d1 f9             	sar    %rcx
     d97:	48 c1 e9 3e          	shr    $0x3e,%rcx
     d9b:	4c 03 c9             	add    %rcx,%r9
     d9e:	4c 2b c8             	sub    %rax,%r9
     da1:	49 83 c1 03          	add    $0x3,%r9
     da5:	49 c1 f9 02          	sar    $0x2,%r9
     da9:	c5 fa 10 0c 90       	vmovss (%rax,%rdx,4),%xmm1
     dae:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
     db2:	c5 fa 10 44 94 7c    	vmovss 0x7c(%rsp,%rdx,4),%xmm0
     db8:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     dbc:	76 3d                	jbe    dfb <_ZN9try_float4sortENS_3ArrEm+0x3fb>
     dbe:	33 f6                	xor    %esi,%esi
     dc0:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
     dc4:	48 ff c6             	inc    %rsi
     dc7:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
     dcb:	4c 8d 04 f5 00 00 00 	lea    0x0(,%rsi,8),%r8
     dd2:	00 
     dd3:	49 f7 d8             	neg    %r8
     dd6:	4c 03 c1             	add    %rcx,%r8
     dd9:	c4 c1 7a 10 00       	vmovss (%r8),%xmm0
     dde:	49 8d 78 04          	lea    0x4(%r8),%rdi
     de2:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     de6:	76 13                	jbe    dfb <_ZN9try_float4sortENS_3ArrEm+0x3fb>
     de8:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
     dec:	4c 89 c7             	mov    %r8,%rdi
     def:	c4 c1 7a 10 40 fc    	vmovss -0x4(%r8),%xmm0
     df5:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     df9:	77 c9                	ja     dc4 <_ZN9try_float4sortENS_3ArrEm+0x3c4>
     dfb:	0f 1f 40 00          	nopl   0x0(%rax)
     dff:	48 ff c2             	inc    %rdx
     e02:	c5 fa 11 0f          	vmovss %xmm1,(%rdi)
     e06:	49 3b d1             	cmp    %r9,%rdx
     e09:	72 9e                	jb     da9 <_ZN9try_float4sortENS_3ArrEm+0x3a9>
     e0b:	e9 0a fc ff ff       	jmpq   a1a <_ZN9try_float4sortENS_3ArrEm+0x1a>
     e10:	4d 89 e9             	mov    %r13,%r9
     e13:	4d 89 f2             	mov    %r14,%r10
     e16:	48 83 f8 02          	cmp    $0x2,%rax
     e1a:	7d 0f                	jge    e2b <_ZN9try_float4sortENS_3ArrEm+0x42b>
     e1c:	48 83 f8 01          	cmp    $0x1,%rax
     e20:	0f 8f 6d 02 00 00    	jg     1093 <_ZN9try_float4sortENS_3ArrEm+0x693>
     e26:	e9 61 fe ff ff       	jmpq   c8c <_ZN9try_float4sortENS_3ArrEm+0x28c>
     e2b:	48 8d 78 fe          	lea    -0x2(%rax),%rdi
     e2f:	48 c1 ef 3f          	shr    $0x3f,%rdi
     e33:	33 d2                	xor    %edx,%edx
     e35:	48 85 c0             	test   %rax,%rax
     e38:	0f 9e c2             	setle  %dl
     e3b:	4c 8d 44 38 fe       	lea    -0x2(%rax,%rdi,1),%r8
     e40:	49 d1 f8             	sar    %r8
     e43:	48 8d 4c 10 ff       	lea    -0x1(%rax,%rdx,1),%rcx
     e48:	48 83 e0 01          	and    $0x1,%rax
     e4c:	48 d1 f9             	sar    %rcx
     e4f:	4a 8d 7c 84 40       	lea    0x40(%rsp,%r8,4),%rdi
     e54:	4c 89 c2             	mov    %r8,%rdx
     e57:	49 ff c8             	dec    %r8
     e5a:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
     e5e:	c5 fa 10 47 04       	vmovss 0x4(%rdi),%xmm0
     e63:	4d 8d 60 01          	lea    0x1(%r8),%r12
     e67:	4d 89 e5             	mov    %r12,%r13
     e6a:	4d 89 e3             	mov    %r12,%r11
     e6d:	4c 3b e1             	cmp    %rcx,%r12
     e70:	0f 8d a8 01 00 00    	jge    101e <_ZN9try_float4sortENS_3ArrEm+0x61e>
     e76:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     e7d:	00 
     e7e:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     e83:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     e89:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     e8e:	76 08                	jbe    e98 <_ZN9try_float4sortENS_3ArrEm+0x498>
     e90:	49 ff cb             	dec    %r11
     e93:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     e98:	45 8b 36             	mov    (%r14),%r14d
     e9b:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     ea0:	4d 89 dd             	mov    %r11,%r13
     ea3:	4c 3b d9             	cmp    %rcx,%r11
     ea6:	0f 8d 72 01 00 00    	jge    101e <_ZN9try_float4sortENS_3ArrEm+0x61e>
     eac:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     eb3:	00 
     eb4:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     eb9:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     ebf:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     ec4:	76 08                	jbe    ece <_ZN9try_float4sortENS_3ArrEm+0x4ce>
     ec6:	49 ff cb             	dec    %r11
     ec9:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     ece:	45 8b 36             	mov    (%r14),%r14d
     ed1:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     ed6:	4d 89 dd             	mov    %r11,%r13
     ed9:	4c 3b d9             	cmp    %rcx,%r11
     edc:	0f 8d 3c 01 00 00    	jge    101e <_ZN9try_float4sortENS_3ArrEm+0x61e>
     ee2:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     ee9:	00 
     eea:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     eef:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     ef5:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     efa:	76 08                	jbe    f04 <_ZN9try_float4sortENS_3ArrEm+0x504>
     efc:	49 ff cb             	dec    %r11
     eff:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f04:	45 8b 36             	mov    (%r14),%r14d
     f07:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     f0c:	4d 89 dd             	mov    %r11,%r13
     f0f:	4c 3b d9             	cmp    %rcx,%r11
     f12:	0f 8d 06 01 00 00    	jge    101e <_ZN9try_float4sortENS_3ArrEm+0x61e>
     f18:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     f1f:	00 
     f20:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f25:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     f2b:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     f30:	76 08                	jbe    f3a <_ZN9try_float4sortENS_3ArrEm+0x53a>
     f32:	49 ff cb             	dec    %r11
     f35:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f3a:	45 8b 36             	mov    (%r14),%r14d
     f3d:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     f42:	4d 89 dd             	mov    %r11,%r13
     f45:	4c 3b d9             	cmp    %rcx,%r11
     f48:	0f 8d d0 00 00 00    	jge    101e <_ZN9try_float4sortENS_3ArrEm+0x61e>
     f4e:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     f55:	00 
     f56:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f5b:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     f61:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     f66:	76 08                	jbe    f70 <_ZN9try_float4sortENS_3ArrEm+0x570>
     f68:	49 ff cb             	dec    %r11
     f6b:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f70:	45 8b 36             	mov    (%r14),%r14d
     f73:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     f78:	4d 89 dd             	mov    %r11,%r13
     f7b:	4c 3b d9             	cmp    %rcx,%r11
     f7e:	0f 8d 9a 00 00 00    	jge    101e <_ZN9try_float4sortENS_3ArrEm+0x61e>
     f84:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     f8b:	00 
     f8c:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f91:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     f97:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     f9c:	76 08                	jbe    fa6 <_ZN9try_float4sortENS_3ArrEm+0x5a6>
     f9e:	49 ff cb             	dec    %r11
     fa1:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     fa6:	45 8b 36             	mov    (%r14),%r14d
     fa9:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     fae:	4d 89 dd             	mov    %r11,%r13
     fb1:	4c 3b d9             	cmp    %rcx,%r11
     fb4:	7d 68                	jge    101e <_ZN9try_float4sortENS_3ArrEm+0x61e>
     fb6:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     fbd:	00 
     fbe:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     fc3:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     fc9:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     fce:	76 08                	jbe    fd8 <_ZN9try_float4sortENS_3ArrEm+0x5d8>
     fd0:	49 ff cb             	dec    %r11
     fd3:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     fd8:	45 8b 36             	mov    (%r14),%r14d
     fdb:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     fe0:	4d 89 dd             	mov    %r11,%r13
     fe3:	4c 3b d9             	cmp    %rcx,%r11
     fe6:	7d 36                	jge    101e <_ZN9try_float4sortENS_3ArrEm+0x61e>
     fe8:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     fef:	00 
     ff0:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     ff5:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     ffb:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    1000:	76 08                	jbe    100a <_ZN9try_float4sortENS_3ArrEm+0x60a>
    1002:	49 ff cb             	dec    %r11
    1005:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    100a:	45 8b 36             	mov    (%r14),%r14d
    100d:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    1012:	4d 89 dd             	mov    %r11,%r13
    1015:	4c 3b d9             	cmp    %rcx,%r11
    1018:	0f 8c 58 fe ff ff    	jl     e76 <_ZN9try_float4sortENS_3ArrEm+0x476>
    101e:	48 85 c0             	test   %rax,%rax
    1021:	75 1b                	jne    103e <_ZN9try_float4sortENS_3ArrEm+0x63e>
    1023:	4c 3b da             	cmp    %rdx,%r11
    1026:	75 16                	jne    103e <_ZN9try_float4sortENS_3ArrEm+0x63e>
    1028:	4e 8d 34 5d 02 00 00 	lea    0x2(,%r11,2),%r14
    102f:	00 
    1030:	46 8b 5c b4 3c       	mov    0x3c(%rsp,%r14,4),%r11d
    1035:	46 89 5c ac 40       	mov    %r11d,0x40(%rsp,%r13,4)
    103a:	4d 8d 6e ff          	lea    -0x1(%r14),%r13
    103e:	4d 8d 5d ff          	lea    -0x1(%r13),%r11
    1042:	49 c1 eb 3f          	shr    $0x3f,%r11
    1046:	4f 8d 5c 1d ff       	lea    -0x1(%r13,%r11,1),%r11
    104b:	49 d1 fb             	sar    %r11
    104e:	4d 3b ec             	cmp    %r12,%r13
    1051:	7e 2c                	jle    107f <_ZN9try_float4sortENS_3ArrEm+0x67f>
    1053:	c4 a1 7a 10 4c 9c 40 	vmovss 0x40(%rsp,%r11,4),%xmm1
    105a:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    105e:	76 1f                	jbe    107f <_ZN9try_float4sortENS_3ArrEm+0x67f>
    1060:	c4 a1 7a 11 4c ac 40 	vmovss %xmm1,0x40(%rsp,%r13,4)
    1067:	4d 8d 73 ff          	lea    -0x1(%r11),%r14
    106b:	49 c1 ee 3f          	shr    $0x3f,%r14
    106f:	4d 89 dd             	mov    %r11,%r13
    1072:	4f 8d 5c 33 ff       	lea    -0x1(%r11,%r14,1),%r11
    1077:	49 d1 fb             	sar    %r11
    107a:	4d 3b ec             	cmp    %r12,%r13
    107d:	7f d4                	jg     1053 <_ZN9try_float4sortENS_3ArrEm+0x653>
    107f:	0f 1f 00             	nopl   (%rax)
    1082:	c4 a1 7a 11 44 ac 40 	vmovss %xmm0,0x40(%rsp,%r13,4)
    1089:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
    108d:	0f 85 c4 fd ff ff    	jne    e57 <_ZN9try_float4sortENS_3ArrEm+0x457>
    1093:	44 8b 5c 24 40       	mov    0x40(%rsp),%r11d
    1098:	45 33 c0             	xor    %r8d,%r8d
    109b:	49 ff c0             	inc    %r8
    109e:	33 ff                	xor    %edi,%edi
    10a0:	33 c0                	xor    %eax,%eax
    10a2:	33 d2                	xor    %edx,%edx
    10a4:	4a 8d 0c 85 00 00 00 	lea    0x0(,%r8,4),%rcx
    10ab:	00 
    10ac:	48 f7 d9             	neg    %rcx
    10af:	48 03 ce             	add    %rsi,%rcx
    10b2:	c5 fa 10 01          	vmovss (%rcx),%xmm0
    10b6:	44 89 19             	mov    %r11d,(%rcx)
    10b9:	4a 8d 4c 84 40       	lea    0x40(%rsp,%r8,4),%rcx
    10be:	48 f7 d9             	neg    %rcx
    10c1:	48 03 ce             	add    %rsi,%rcx
    10c4:	48 c1 f9 02          	sar    $0x2,%rcx
    10c8:	48 85 c9             	test   %rcx,%rcx
    10cb:	0f 9e c0             	setle  %al
    10ce:	48 8d 44 01 ff       	lea    -0x1(%rcx,%rax,1),%rax
    10d3:	48 d1 f8             	sar    %rax
    10d6:	48 85 c0             	test   %rax,%rax
    10d9:	7e 6a                	jle    1145 <_ZN9try_float4sortENS_3ArrEm+0x745>
    10db:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    10e2:	00 
    10e3:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    10e8:	c4 c1 7a 10 4c 24 fc 	vmovss -0x4(%r12),%xmm1
    10ef:	c4 c1 78 2f 0c 24    	vcomiss (%r12),%xmm1
    10f5:	76 08                	jbe    10ff <_ZN9try_float4sortENS_3ArrEm+0x6ff>
    10f7:	48 ff ca             	dec    %rdx
    10fa:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    10ff:	45 8b 24 24          	mov    (%r12),%r12d
    1103:	44 89 64 bc 40       	mov    %r12d,0x40(%rsp,%rdi,4)
    1108:	48 89 d7             	mov    %rdx,%rdi
    110b:	48 3b d0             	cmp    %rax,%rdx
    110e:	7d 35                	jge    1145 <_ZN9try_float4sortENS_3ArrEm+0x745>
    1110:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    1117:	00 
    1118:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    111d:	c4 c1 7a 10 4c 24 fc 	vmovss -0x4(%r12),%xmm1
    1124:	c4 c1 78 2f 0c 24    	vcomiss (%r12),%xmm1
    112a:	76 08                	jbe    1134 <_ZN9try_float4sortENS_3ArrEm+0x734>
    112c:	48 ff ca             	dec    %rdx
    112f:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    1134:	45 8b 24 24          	mov    (%r12),%r12d
    1138:	44 89 64 bc 40       	mov    %r12d,0x40(%rsp,%rdi,4)
    113d:	48 89 d7             	mov    %rdx,%rdi
    1140:	48 3b d0             	cmp    %rax,%rdx
    1143:	7c 96                	jl     10db <_ZN9try_float4sortENS_3ArrEm+0x6db>
    1145:	48 f7 c1 01 00 00 00 	test   $0x1,%rcx
    114c:	75 29                	jne    1177 <_ZN9try_float4sortENS_3ArrEm+0x777>
    114e:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
    1152:	48 c1 e8 3f          	shr    $0x3f,%rax
    1156:	4c 8d 64 01 fe       	lea    -0x2(%rcx,%rax,1),%r12
    115b:	49 d1 fc             	sar    %r12
    115e:	49 3b d4             	cmp    %r12,%rdx
    1161:	75 14                	jne    1177 <_ZN9try_float4sortENS_3ArrEm+0x777>
    1163:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    116a:	00 
    116b:	8b 44 94 3c          	mov    0x3c(%rsp,%rdx,4),%eax
    116f:	89 44 bc 40          	mov    %eax,0x40(%rsp,%rdi,4)
    1173:	48 8d 7a ff          	lea    -0x1(%rdx),%rdi
    1177:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    117b:	48 c1 e8 3f          	shr    $0x3f,%rax
    117f:	48 8d 44 07 ff       	lea    -0x1(%rdi,%rax,1),%rax
    1184:	48 d1 f8             	sar    %rax
    1187:	48 85 ff             	test   %rdi,%rdi
    118a:	7e 2a                	jle    11b6 <_ZN9try_float4sortENS_3ArrEm+0x7b6>
    118c:	c5 fa 10 4c 84 40    	vmovss 0x40(%rsp,%rax,4),%xmm1
    1192:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    1196:	76 1e                	jbe    11b6 <_ZN9try_float4sortENS_3ArrEm+0x7b6>
    1198:	c5 fa 11 4c bc 40    	vmovss %xmm1,0x40(%rsp,%rdi,4)
    119e:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    11a2:	48 c1 ea 3f          	shr    $0x3f,%rdx
    11a6:	48 89 c7             	mov    %rax,%rdi
    11a9:	48 8d 44 10 ff       	lea    -0x1(%rax,%rdx,1),%rax
    11ae:	48 d1 f8             	sar    %rax
    11b1:	48 85 ff             	test   %rdi,%rdi
    11b4:	7f d6                	jg     118c <_ZN9try_float4sortENS_3ArrEm+0x78c>
    11b6:	0f 1f 40 00          	nopl   0x0(%rax)
    11ba:	c5 fa 11 44 bc 40    	vmovss %xmm0,0x40(%rsp,%rdi,4)
    11c0:	48 83 f9 01          	cmp    $0x1,%rcx
    11c4:	0f 8f d1 fe ff ff    	jg     109b <_ZN9try_float4sortENS_3ArrEm+0x69b>
    11ca:	e9 bd fa ff ff       	jmpq   c8c <_ZN9try_float4sortENS_3ArrEm+0x28c>
    11cf:	4d 3b d1             	cmp    %r9,%r10
    11d2:	0f 84 42 f8 ff ff    	je     a1a <_ZN9try_float4sortENS_3ArrEm+0x1a>
    11d8:	33 d2                	xor    %edx,%edx
    11da:	48 8d 4c 24 44       	lea    0x44(%rsp),%rcx
    11df:	33 c0                	xor    %eax,%eax
    11e1:	49 3b c9             	cmp    %r9,%rcx
    11e4:	0f 84 30 f8 ff ff    	je     a1a <_ZN9try_float4sortENS_3ArrEm+0x1a>
    11ea:	4c 89 ce             	mov    %r9,%rsi
    11ed:	49 89 c4             	mov    %rax,%r12
    11f0:	48 2b f1             	sub    %rcx,%rsi
    11f3:	49 89 d5             	mov    %rdx,%r13
    11f6:	48 83 c6 03          	add    $0x3,%rsi
    11fa:	49 89 ce             	mov    %rcx,%r14
    11fd:	48 d1 fe             	sar    %rsi
    1200:	4d 89 d7             	mov    %r10,%r15
    1203:	48 c1 ee 3e          	shr    $0x3e,%rsi
    1207:	4c 03 ce             	add    %rsi,%r9
    120a:	4c 2b c9             	sub    %rcx,%r9
    120d:	49 83 c1 03          	add    $0x3,%r9
    1211:	49 c1 f9 02          	sar    $0x2,%r9
    1215:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    121a:	4c 89 cb             	mov    %r9,%rbx
    121d:	c4 81 7a 10 0c 34    	vmovss (%r12,%r14,1),%xmm1
    1223:	c5 fa 10 44 24 40    	vmovss 0x40(%rsp),%xmm0
    1229:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    122d:	76 37                	jbe    1266 <_ZN9try_float4sortENS_3ArrEm+0x866>
    122f:	49 8d 54 24 04       	lea    0x4(%r12),%rdx
    1234:	48 c1 fa 02          	sar    $0x2,%rdx
    1238:	48 85 d2             	test   %rdx,%rdx
    123b:	74 21                	je     125e <_ZN9try_float4sortENS_3ArrEm+0x85e>
    123d:	48 c1 e2 02          	shl    $0x2,%rdx
    1241:	4d 89 f0             	mov    %r14,%r8
    1244:	4c 2b c2             	sub    %rdx,%r8
    1247:	4c 89 fe             	mov    %r15,%rsi
    124a:	c5 fa 11 0c 24       	vmovss %xmm1,(%rsp)
    124f:	4b 8d 7c 04 04       	lea    0x4(%r12,%r8,1),%rdi
    1254:	e8 00 00 00 00       	callq  1259 <_ZN9try_float4sortENS_3ArrEm+0x859>
    1259:	c5 fa 10 0c 24       	vmovss (%rsp),%xmm1
    125e:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
    1264:	eb 54                	jmp    12ba <_ZN9try_float4sortENS_3ArrEm+0x8ba>
    1266:	c4 a1 7a 10 44 24 40 	vmovss 0x40(%rsp,%r12,1),%xmm0
    126d:	4f 8d 1c 26          	lea    (%r14,%r12,1),%r11
    1271:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    1275:	76 3e                	jbe    12b5 <_ZN9try_float4sortENS_3ArrEm+0x8b5>
    1277:	45 33 c0             	xor    %r8d,%r8d
    127a:	4b 8d 3c 26          	lea    (%r14,%r12,1),%rdi
    127e:	49 ff c0             	inc    %r8
    1281:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    1286:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
    128d:	00 
    128e:	48 f7 d8             	neg    %rax
    1291:	48 03 c7             	add    %rdi,%rax
    1294:	c5 fa 10 00          	vmovss (%rax),%xmm0
    1298:	4c 8d 58 04          	lea    0x4(%rax),%r11
    129c:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    12a0:	76 13                	jbe    12b5 <_ZN9try_float4sortENS_3ArrEm+0x8b5>
    12a2:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    12a7:	49 89 c3             	mov    %rax,%r11
    12aa:	c5 fa 10 40 fc       	vmovss -0x4(%rax),%xmm0
    12af:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    12b3:	77 c9                	ja     127e <_ZN9try_float4sortENS_3ArrEm+0x87e>
    12b5:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    12ba:	49 ff c5             	inc    %r13
    12bd:	49 83 c4 04          	add    $0x4,%r12
    12c1:	4c 3b eb             	cmp    %rbx,%r13
    12c4:	0f 82 53 ff ff ff    	jb     121d <_ZN9try_float4sortENS_3ArrEm+0x81d>
    12ca:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    12cf:	e9 46 f7 ff ff       	jmpq   a1a <_ZN9try_float4sortENS_3ArrEm+0x1a>
    12d4:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    12d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012e0 <_ZN9try_float4fillENS_3ArrEm>:
    12e0:	48 85 ff             	test   %rdi,%rdi
    12e3:	77 04                	ja     12e9 <_ZN9try_float4fillENS_3ArrEm+0x9>
    12e5:	c5 f8 77             	vzeroupper 
    12e8:	c3                   	retq   
    12e9:	48 83 ff 10          	cmp    $0x10,%rdi
    12ed:	72 69                	jb     1358 <_ZN9try_float4fillENS_3ArrEm+0x78>
    12ef:	48 83 ff 1d          	cmp    $0x1d,%rdi
    12f3:	0f 82 86 00 00 00    	jb     137f <_ZN9try_float4fillENS_3ArrEm+0x9f>
    12f9:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    12fe:	48 83 e6 1f          	and    $0x1f,%rsi
    1302:	74 0b                	je     130f <_ZN9try_float4fillENS_3ArrEm+0x2f>
    1304:	48 f7 de             	neg    %rsi
    1307:	48 83 c6 20          	add    $0x20,%rsi
    130b:	48 c1 ee 02          	shr    $0x2,%rsi
    130f:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1313:	48 3b f8             	cmp    %rax,%rdi
    1316:	72 40                	jb     1358 <_ZN9try_float4fillENS_3ArrEm+0x78>
    1318:	48 89 f9             	mov    %rdi,%rcx
    131b:	33 d2                	xor    %edx,%edx
    131d:	48 2b ce             	sub    %rsi,%rcx
    1320:	48 83 e1 0f          	and    $0xf,%rcx
    1324:	48 f7 d9             	neg    %rcx
    1327:	48 03 cf             	add    %rdi,%rcx
    132a:	48 85 f6             	test   %rsi,%rsi
    132d:	76 0e                	jbe    133d <_ZN9try_float4fillENS_3ArrEm+0x5d>
    132f:	33 c0                	xor    %eax,%eax
    1331:	89 44 94 08          	mov    %eax,0x8(%rsp,%rdx,4)
    1335:	48 ff c2             	inc    %rdx
    1338:	48 3b d6             	cmp    %rsi,%rdx
    133b:	72 f4                	jb     1331 <_ZN9try_float4fillENS_3ArrEm+0x51>
    133d:	c5 fc 57 c0          	vxorps %ymm0,%ymm0,%ymm0
    1341:	c5 fc 11 44 b4 08    	vmovups %ymm0,0x8(%rsp,%rsi,4)
    1347:	c5 fc 11 44 b4 28    	vmovups %ymm0,0x28(%rsp,%rsi,4)
    134d:	48 83 c6 10          	add    $0x10,%rsi
    1351:	48 3b f1             	cmp    %rcx,%rsi
    1354:	72 eb                	jb     1341 <_ZN9try_float4fillENS_3ArrEm+0x61>
    1356:	eb 02                	jmp    135a <_ZN9try_float4fillENS_3ArrEm+0x7a>
    1358:	33 c9                	xor    %ecx,%ecx
    135a:	33 f6                	xor    %esi,%esi
    135c:	48 8d 41 01          	lea    0x1(%rcx),%rax
    1360:	48 3b c7             	cmp    %rdi,%rax
    1363:	77 80                	ja     12e5 <_ZN9try_float4fillENS_3ArrEm+0x5>
    1365:	33 d2                	xor    %edx,%edx
    1367:	48 8d 44 8c 08       	lea    0x8(%rsp,%rcx,4),%rax
    136c:	48 2b f9             	sub    %rcx,%rdi
    136f:	89 14 b0             	mov    %edx,(%rax,%rsi,4)
    1372:	48 ff c6             	inc    %rsi
    1375:	48 3b f7             	cmp    %rdi,%rsi
    1378:	72 f5                	jb     136f <_ZN9try_float4fillENS_3ArrEm+0x8f>
    137a:	e9 66 ff ff ff       	jmpq   12e5 <_ZN9try_float4fillENS_3ArrEm+0x5>
    137f:	48 89 f9             	mov    %rdi,%rcx
    1382:	33 f6                	xor    %esi,%esi
    1384:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
    1388:	eb b3                	jmp    133d <_ZN9try_float4fillENS_3ArrEm+0x5d>
    138a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001390 <_ZN9try_float9transformENS_3ArrES0_m>:
    1390:	48 c1 e7 02          	shl    $0x2,%rdi
    1394:	48 c1 ff 02          	sar    $0x2,%rdi
    1398:	48 85 ff             	test   %rdi,%rdi
    139b:	0f 8e bc 00 00 00    	jle    145d <_ZN9try_float9transformENS_3ArrES0_m+0xcd>
    13a1:	48 83 ff 08          	cmp    $0x8,%rdi
    13a5:	0f 8c 81 00 00 00    	jl     142c <_ZN9try_float9transformENS_3ArrES0_m+0x9c>
    13ab:	48 81 ff 39 04 00 00 	cmp    $0x439,%rdi
    13b2:	0f 8c a9 00 00 00    	jl     1461 <_ZN9try_float9transformENS_3ArrES0_m+0xd1>
    13b8:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    13bd:	48 83 e1 1f          	and    $0x1f,%rcx
    13c1:	74 0b                	je     13ce <_ZN9try_float9transformENS_3ArrES0_m+0x3e>
    13c3:	48 f7 d9             	neg    %rcx
    13c6:	48 83 c1 20          	add    $0x20,%rcx
    13ca:	48 c1 e9 02          	shr    $0x2,%rcx
    13ce:	48 8d 41 08          	lea    0x8(%rcx),%rax
    13d2:	48 3b f8             	cmp    %rax,%rdi
    13d5:	7c 55                	jl     142c <_ZN9try_float9transformENS_3ArrES0_m+0x9c>
    13d7:	48 89 f8             	mov    %rdi,%rax
    13da:	33 d2                	xor    %edx,%edx
    13dc:	48 2b c1             	sub    %rcx,%rax
    13df:	48 83 e0 07          	and    $0x7,%rax
    13e3:	48 f7 d8             	neg    %rax
    13e6:	48 03 c7             	add    %rdi,%rax
    13e9:	48 85 c9             	test   %rcx,%rcx
    13ec:	76 1e                	jbe    140c <_ZN9try_float9transformENS_3ArrES0_m+0x7c>
    13ee:	c5 fa 2c 74 94 08    	vcvttss2si 0x8(%rsp,%rdx,4),%esi
    13f4:	03 f6                	add    %esi,%esi
    13f6:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    13fa:	c5 fa 2a c6          	vcvtsi2ss %esi,%xmm0,%xmm0
    13fe:	c5 fa 11 44 94 08    	vmovss %xmm0,0x8(%rsp,%rdx,4)
    1404:	48 ff c2             	inc    %rdx
    1407:	48 3b d1             	cmp    %rcx,%rdx
    140a:	72 e2                	jb     13ee <_ZN9try_float9transformENS_3ArrES0_m+0x5e>
    140c:	c5 fe 5b 44 8c 08    	vcvttps2dq 0x8(%rsp,%rcx,4),%ymm0
    1412:	c5 f5 72 f0 01       	vpslld $0x1,%ymm0,%ymm1
    1417:	c5 fc 5b d1          	vcvtdq2ps %ymm1,%ymm2
    141b:	c5 fc 11 54 8c 08    	vmovups %ymm2,0x8(%rsp,%rcx,4)
    1421:	48 83 c1 08          	add    $0x8,%rcx
    1425:	48 3b c8             	cmp    %rax,%rcx
    1428:	72 e2                	jb     140c <_ZN9try_float9transformENS_3ArrES0_m+0x7c>
    142a:	eb 02                	jmp    142e <_ZN9try_float9transformENS_3ArrES0_m+0x9e>
    142c:	33 c0                	xor    %eax,%eax
    142e:	33 c9                	xor    %ecx,%ecx
    1430:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1434:	48 3b d7             	cmp    %rdi,%rdx
    1437:	77 24                	ja     145d <_ZN9try_float9transformENS_3ArrES0_m+0xcd>
    1439:	48 2b f8             	sub    %rax,%rdi
    143c:	48 8d 54 84 08       	lea    0x8(%rsp,%rax,4),%rdx
    1441:	c5 fa 2c 04 8a       	vcvttss2si (%rdx,%rcx,4),%eax
    1446:	03 c0                	add    %eax,%eax
    1448:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    144c:	c5 fa 2a c0          	vcvtsi2ss %eax,%xmm0,%xmm0
    1450:	c5 fa 11 04 8a       	vmovss %xmm0,(%rdx,%rcx,4)
    1455:	48 ff c1             	inc    %rcx
    1458:	48 3b cf             	cmp    %rdi,%rcx
    145b:	72 e4                	jb     1441 <_ZN9try_float9transformENS_3ArrES0_m+0xb1>
    145d:	c5 f8 77             	vzeroupper 
    1460:	c3                   	retq   
    1461:	48 89 f8             	mov    %rdi,%rax
    1464:	33 c9                	xor    %ecx,%ecx
    1466:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    146a:	eb a0                	jmp    140c <_ZN9try_float9transformENS_3ArrES0_m+0x7c>
    146c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001470 <_ZN9try_float11transform32ENS_3ArrES0_m>:
    1470:	48 c1 e7 05          	shl    $0x5,%rdi
    1474:	48 c1 ff 02          	sar    $0x2,%rdi
    1478:	48 85 ff             	test   %rdi,%rdi
    147b:	0f 8e bc 00 00 00    	jle    153d <_ZN9try_float11transform32ENS_3ArrES0_m+0xcd>
    1481:	48 83 ff 08          	cmp    $0x8,%rdi
    1485:	0f 8c 81 00 00 00    	jl     150c <_ZN9try_float11transform32ENS_3ArrES0_m+0x9c>
    148b:	48 81 ff 39 04 00 00 	cmp    $0x439,%rdi
    1492:	0f 8c a9 00 00 00    	jl     1541 <_ZN9try_float11transform32ENS_3ArrES0_m+0xd1>
    1498:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    149d:	48 83 e1 1f          	and    $0x1f,%rcx
    14a1:	74 0b                	je     14ae <_ZN9try_float11transform32ENS_3ArrES0_m+0x3e>
    14a3:	48 f7 d9             	neg    %rcx
    14a6:	48 83 c1 20          	add    $0x20,%rcx
    14aa:	48 c1 e9 02          	shr    $0x2,%rcx
    14ae:	48 8d 41 08          	lea    0x8(%rcx),%rax
    14b2:	48 3b f8             	cmp    %rax,%rdi
    14b5:	7c 55                	jl     150c <_ZN9try_float11transform32ENS_3ArrES0_m+0x9c>
    14b7:	48 89 f8             	mov    %rdi,%rax
    14ba:	33 d2                	xor    %edx,%edx
    14bc:	48 2b c1             	sub    %rcx,%rax
    14bf:	48 83 e0 07          	and    $0x7,%rax
    14c3:	48 f7 d8             	neg    %rax
    14c6:	48 03 c7             	add    %rdi,%rax
    14c9:	48 85 c9             	test   %rcx,%rcx
    14cc:	76 1e                	jbe    14ec <_ZN9try_float11transform32ENS_3ArrES0_m+0x7c>
    14ce:	c5 fa 2c 74 94 08    	vcvttss2si 0x8(%rsp,%rdx,4),%esi
    14d4:	03 f6                	add    %esi,%esi
    14d6:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    14da:	c5 fa 2a c6          	vcvtsi2ss %esi,%xmm0,%xmm0
    14de:	c5 fa 11 44 94 08    	vmovss %xmm0,0x8(%rsp,%rdx,4)
    14e4:	48 ff c2             	inc    %rdx
    14e7:	48 3b d1             	cmp    %rcx,%rdx
    14ea:	72 e2                	jb     14ce <_ZN9try_float11transform32ENS_3ArrES0_m+0x5e>
    14ec:	c5 fe 5b 44 8c 08    	vcvttps2dq 0x8(%rsp,%rcx,4),%ymm0
    14f2:	c5 f5 72 f0 01       	vpslld $0x1,%ymm0,%ymm1
    14f7:	c5 fc 5b d1          	vcvtdq2ps %ymm1,%ymm2
    14fb:	c5 fc 11 54 8c 08    	vmovups %ymm2,0x8(%rsp,%rcx,4)
    1501:	48 83 c1 08          	add    $0x8,%rcx
    1505:	48 3b c8             	cmp    %rax,%rcx
    1508:	72 e2                	jb     14ec <_ZN9try_float11transform32ENS_3ArrES0_m+0x7c>
    150a:	eb 02                	jmp    150e <_ZN9try_float11transform32ENS_3ArrES0_m+0x9e>
    150c:	33 c0                	xor    %eax,%eax
    150e:	33 c9                	xor    %ecx,%ecx
    1510:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1514:	48 3b d7             	cmp    %rdi,%rdx
    1517:	77 24                	ja     153d <_ZN9try_float11transform32ENS_3ArrES0_m+0xcd>
    1519:	48 2b f8             	sub    %rax,%rdi
    151c:	48 8d 54 84 08       	lea    0x8(%rsp,%rax,4),%rdx
    1521:	c5 fa 2c 04 8a       	vcvttss2si (%rdx,%rcx,4),%eax
    1526:	03 c0                	add    %eax,%eax
    1528:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    152c:	c5 fa 2a c0          	vcvtsi2ss %eax,%xmm0,%xmm0
    1530:	c5 fa 11 04 8a       	vmovss %xmm0,(%rdx,%rcx,4)
    1535:	48 ff c1             	inc    %rcx
    1538:	48 3b cf             	cmp    %rdi,%rcx
    153b:	72 e4                	jb     1521 <_ZN9try_float11transform32ENS_3ArrES0_m+0xb1>
    153d:	c5 f8 77             	vzeroupper 
    1540:	c3                   	retq   
    1541:	48 89 f8             	mov    %rdi,%rax
    1544:	33 c9                	xor    %ecx,%ecx
    1546:	eb a4                	jmp    14ec <_ZN9try_float11transform32ENS_3ArrES0_m+0x7c>
    1548:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    154f:	00 

0000000000001550 <_ZN11try_int_seq4sortENS_3ArrEm>:
    1550:	41 54                	push   %r12
    1552:	41 55                	push   %r13
    1554:	41 57                	push   %r15
    1556:	53                   	push   %rbx
    1557:	55                   	push   %rbp
    1558:	48 83 ec 10          	sub    $0x10,%rsp
    155c:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
    1561:	48 8d 04 be          	lea    (%rsi,%rdi,4),%rax
    1565:	48 3b f0             	cmp    %rax,%rsi
    1568:	75 0d                	jne    1577 <_ZN11try_int_seq4sortENS_3ArrEm+0x27>
    156a:	48 83 c4 10          	add    $0x10,%rsp
    156e:	5d                   	pop    %rbp
    156f:	5b                   	pop    %rbx
    1570:	41 5f                	pop    %r15
    1572:	41 5d                	pop    %r13
    1574:	41 5c                	pop    %r12
    1576:	c3                   	retq   
    1577:	48 89 c1             	mov    %rax,%rcx
    157a:	49 89 c0             	mov    %rax,%r8
    157d:	48 2b ce             	sub    %rsi,%rcx
    1580:	48 c1 f9 02          	sar    $0x2,%rcx
    1584:	f3 48 0f bd d1       	lzcnt  %rcx,%rdx
    1589:	48 03 d2             	add    %rdx,%rdx
    158c:	48 f7 da             	neg    %rdx
    158f:	48 83 c2 7e          	add    $0x7e,%rdx
    1593:	48 83 f9 10          	cmp    $0x10,%rcx
    1597:	0f 8e be 06 00 00    	jle    1c5b <_ZN11try_int_seq4sortENS_3ArrEm+0x70b>
    159d:	48 89 c5             	mov    %rax,%rbp
    15a0:	49 89 d7             	mov    %rdx,%r15
    15a3:	49 89 f4             	mov    %rsi,%r12
    15a6:	4c 89 c1             	mov    %r8,%rcx
    15a9:	49 2b cc             	sub    %r12,%rcx
    15ac:	48 c1 f9 02          	sar    $0x2,%rcx
    15b0:	4d 85 ff             	test   %r15,%r15
    15b3:	0f 84 05 03 00 00    	je     18be <_ZN11try_int_seq4sortENS_3ArrEm+0x36e>
    15b9:	48 89 cb             	mov    %rcx,%rbx
    15bc:	49 ff cf             	dec    %r15
    15bf:	48 c1 eb 3f          	shr    $0x3f,%rbx
    15c3:	48 03 cb             	add    %rbx,%rcx
    15c6:	48 d1 f9             	sar    %rcx
    15c9:	44 8b 54 24 44       	mov    0x44(%rsp),%r10d
    15ce:	41 8b 58 fc          	mov    -0x4(%r8),%ebx
    15d2:	8b 7c 8c 40          	mov    0x40(%rsp,%rcx,4),%edi
    15d6:	44 3b d7             	cmp    %edi,%r10d
    15d9:	7d 2f                	jge    160a <_ZN11try_int_seq4sortENS_3ArrEm+0xba>
    15db:	3b fb                	cmp    %ebx,%edi
    15dd:	7c 16                	jl     15f5 <_ZN11try_int_seq4sortENS_3ArrEm+0xa5>
    15df:	44 3b d3             	cmp    %ebx,%r10d
    15e2:	7d 31                	jge    1615 <_ZN11try_int_seq4sortENS_3ArrEm+0xc5>
    15e4:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    15e8:	41 89 da             	mov    %ebx,%r10d
    15eb:	89 5c 24 40          	mov    %ebx,0x40(%rsp)
    15ef:	41 89 48 fc          	mov    %ecx,-0x4(%r8)
    15f3:	eb 2d                	jmp    1622 <_ZN11try_int_seq4sortENS_3ArrEm+0xd2>
    15f5:	8b 5c 24 40          	mov    0x40(%rsp),%ebx
    15f9:	48 c1 e1 02          	shl    $0x2,%rcx
    15fd:	89 7c 24 40          	mov    %edi,0x40(%rsp)
    1601:	41 89 fa             	mov    %edi,%r10d
    1604:	89 5c 0c 40          	mov    %ebx,0x40(%rsp,%rcx,1)
    1608:	eb 18                	jmp    1622 <_ZN11try_int_seq4sortENS_3ArrEm+0xd2>
    160a:	44 3b d3             	cmp    %ebx,%r10d
    160d:	7c 06                	jl     1615 <_ZN11try_int_seq4sortENS_3ArrEm+0xc5>
    160f:	3b fb                	cmp    %ebx,%edi
    1611:	7c d1                	jl     15e4 <_ZN11try_int_seq4sortENS_3ArrEm+0x94>
    1613:	eb e0                	jmp    15f5 <_ZN11try_int_seq4sortENS_3ArrEm+0xa5>
    1615:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    1619:	44 89 54 24 40       	mov    %r10d,0x40(%rsp)
    161e:	89 4c 24 44          	mov    %ecx,0x44(%rsp)
    1622:	4d 89 c1             	mov    %r8,%r9
    1625:	48 8d 5c 24 44       	lea    0x44(%rsp),%rbx
    162a:	eb 0f                	jmp    163b <_ZN11try_int_seq4sortENS_3ArrEm+0xeb>
    162c:	44 89 1b             	mov    %r11d,(%rbx)
    162f:	48 83 c3 04          	add    $0x4,%rbx
    1633:	41 89 09             	mov    %ecx,(%r9)
    1636:	44 8b 54 24 40       	mov    0x40(%rsp),%r10d
    163b:	8b 0b                	mov    (%rbx),%ecx
    163d:	48 89 d8             	mov    %rbx,%rax
    1640:	41 3b ca             	cmp    %r10d,%ecx
    1643:	7d 70                	jge    16b5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    1645:	45 33 db             	xor    %r11d,%r11d
    1648:	49 83 c3 20          	add    $0x20,%r11
    164c:	4a 8d 14 18          	lea    (%rax,%r11,1),%rdx
    1650:	8b 4a e4             	mov    -0x1c(%rdx),%ecx
    1653:	4a 8d 5c 18 e4       	lea    -0x1c(%rax,%r11,1),%rbx
    1658:	41 3b ca             	cmp    %r10d,%ecx
    165b:	7d 58                	jge    16b5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    165d:	8b 4a e8             	mov    -0x18(%rdx),%ecx
    1660:	4a 8d 5c 18 e8       	lea    -0x18(%rax,%r11,1),%rbx
    1665:	41 3b ca             	cmp    %r10d,%ecx
    1668:	7d 4b                	jge    16b5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    166a:	8b 4a ec             	mov    -0x14(%rdx),%ecx
    166d:	4a 8d 5c 18 ec       	lea    -0x14(%rax,%r11,1),%rbx
    1672:	41 3b ca             	cmp    %r10d,%ecx
    1675:	7d 3e                	jge    16b5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    1677:	8b 4a f0             	mov    -0x10(%rdx),%ecx
    167a:	4a 8d 5c 18 f0       	lea    -0x10(%rax,%r11,1),%rbx
    167f:	41 3b ca             	cmp    %r10d,%ecx
    1682:	7d 31                	jge    16b5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    1684:	8b 4a f4             	mov    -0xc(%rdx),%ecx
    1687:	4a 8d 5c 18 f4       	lea    -0xc(%rax,%r11,1),%rbx
    168c:	41 3b ca             	cmp    %r10d,%ecx
    168f:	7d 24                	jge    16b5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    1691:	8b 4a f8             	mov    -0x8(%rdx),%ecx
    1694:	4a 8d 5c 18 f8       	lea    -0x8(%rax,%r11,1),%rbx
    1699:	41 3b ca             	cmp    %r10d,%ecx
    169c:	7d 17                	jge    16b5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    169e:	8b 4a fc             	mov    -0x4(%rdx),%ecx
    16a1:	4a 8d 5c 18 fc       	lea    -0x4(%rax,%r11,1),%rbx
    16a6:	41 3b ca             	cmp    %r10d,%ecx
    16a9:	7d 0a                	jge    16b5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    16ab:	8b 0a                	mov    (%rdx),%ecx
    16ad:	48 89 d3             	mov    %rdx,%rbx
    16b0:	41 3b ca             	cmp    %r10d,%ecx
    16b3:	7c 93                	jl     1648 <_ZN11try_int_seq4sortENS_3ArrEm+0xf8>
    16b5:	49 83 c1 fc          	add    $0xfffffffffffffffc,%r9
    16b9:	4c 89 ca             	mov    %r9,%rdx
    16bc:	45 8b 19             	mov    (%r9),%r11d
    16bf:	45 3b d3             	cmp    %r11d,%r10d
    16c2:	7d 77                	jge    173b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    16c4:	33 c0                	xor    %eax,%eax
    16c6:	48 83 c0 e0          	add    $0xffffffffffffffe0,%rax
    16ca:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
    16ce:	44 8b 5e 1c          	mov    0x1c(%rsi),%r11d
    16d2:	4c 8d 4c 02 1c       	lea    0x1c(%rdx,%rax,1),%r9
    16d7:	45 3b d3             	cmp    %r11d,%r10d
    16da:	7d 5f                	jge    173b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    16dc:	44 8b 5e 18          	mov    0x18(%rsi),%r11d
    16e0:	4c 8d 4c 02 18       	lea    0x18(%rdx,%rax,1),%r9
    16e5:	45 3b d3             	cmp    %r11d,%r10d
    16e8:	7d 51                	jge    173b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    16ea:	44 8b 5e 14          	mov    0x14(%rsi),%r11d
    16ee:	4c 8d 4c 02 14       	lea    0x14(%rdx,%rax,1),%r9
    16f3:	45 3b d3             	cmp    %r11d,%r10d
    16f6:	7d 43                	jge    173b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    16f8:	44 8b 5e 10          	mov    0x10(%rsi),%r11d
    16fc:	4c 8d 4c 02 10       	lea    0x10(%rdx,%rax,1),%r9
    1701:	45 3b d3             	cmp    %r11d,%r10d
    1704:	7d 35                	jge    173b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    1706:	44 8b 5e 0c          	mov    0xc(%rsi),%r11d
    170a:	4c 8d 4c 02 0c       	lea    0xc(%rdx,%rax,1),%r9
    170f:	45 3b d3             	cmp    %r11d,%r10d
    1712:	7d 27                	jge    173b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    1714:	44 8b 5e 08          	mov    0x8(%rsi),%r11d
    1718:	4c 8d 4c 02 08       	lea    0x8(%rdx,%rax,1),%r9
    171d:	45 3b d3             	cmp    %r11d,%r10d
    1720:	7d 19                	jge    173b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    1722:	44 8b 5e 04          	mov    0x4(%rsi),%r11d
    1726:	4c 8d 4c 02 04       	lea    0x4(%rdx,%rax,1),%r9
    172b:	45 3b d3             	cmp    %r11d,%r10d
    172e:	7d 0b                	jge    173b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    1730:	44 8b 1e             	mov    (%rsi),%r11d
    1733:	49 89 f1             	mov    %rsi,%r9
    1736:	45 3b d3             	cmp    %r11d,%r10d
    1739:	7c 8b                	jl     16c6 <_ZN11try_int_seq4sortENS_3ArrEm+0x176>
    173b:	49 3b d9             	cmp    %r9,%rbx
    173e:	0f 82 e8 fe ff ff    	jb     162c <_ZN11try_int_seq4sortENS_3ArrEm+0xdc>
    1744:	48 89 df             	mov    %rbx,%rdi
    1747:	4c 89 c6             	mov    %r8,%rsi
    174a:	4c 89 fa             	mov    %r15,%rdx
    174d:	e8 00 00 00 00       	callq  1752 <_ZN11try_int_seq4sortENS_3ArrEm+0x202>
    1752:	49 89 d8             	mov    %rbx,%r8
    1755:	49 2b dc             	sub    %r12,%rbx
    1758:	48 c1 fb 02          	sar    $0x2,%rbx
    175c:	48 83 fb 10          	cmp    $0x10,%rbx
    1760:	0f 8f 40 fe ff ff    	jg     15a6 <_ZN11try_int_seq4sortENS_3ArrEm+0x56>
    1766:	48 89 e8             	mov    %rbp,%rax
    1769:	4c 89 e6             	mov    %r12,%rsi
    176c:	4c 8d 8c 24 80 00 00 	lea    0x80(%rsp),%r9
    1773:	00 
    1774:	49 3b f1             	cmp    %r9,%rsi
    1777:	0f 84 ba 00 00 00    	je     1837 <_ZN11try_int_seq4sortENS_3ArrEm+0x2e7>
    177d:	33 c9                	xor    %ecx,%ecx
    177f:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    1784:	33 d2                	xor    %edx,%edx
    1786:	4c 89 34 24          	mov    %r14,(%rsp)
    178a:	48 89 c3             	mov    %rax,%rbx
    178d:	48 89 d5             	mov    %rdx,%rbp
    1790:	49 89 cc             	mov    %rcx,%r12
    1793:	49 89 f7             	mov    %rsi,%r15
    1796:	49 89 fe             	mov    %rdi,%r14
    1799:	46 8b 6c 35 00       	mov    0x0(%rbp,%r14,1),%r13d
    179e:	44 3b 6c 24 40       	cmp    0x40(%rsp),%r13d
    17a3:	7d 2b                	jge    17d0 <_ZN11try_int_seq4sortENS_3ArrEm+0x280>
    17a5:	48 8d 55 04          	lea    0x4(%rbp),%rdx
    17a9:	48 c1 fa 02          	sar    $0x2,%rdx
    17ad:	48 85 d2             	test   %rdx,%rdx
    17b0:	74 17                	je     17c9 <_ZN11try_int_seq4sortENS_3ArrEm+0x279>
    17b2:	48 c1 e2 02          	shl    $0x2,%rdx
    17b6:	4d 89 f0             	mov    %r14,%r8
    17b9:	4c 2b c2             	sub    %rdx,%r8
    17bc:	4c 89 fe             	mov    %r15,%rsi
    17bf:	4a 8d 7c 05 04       	lea    0x4(%rbp,%r8,1),%rdi
    17c4:	e8 00 00 00 00       	callq  17c9 <_ZN11try_int_seq4sortENS_3ArrEm+0x279>
    17c9:	44 89 6c 24 40       	mov    %r13d,0x40(%rsp)
    17ce:	eb 47                	jmp    1817 <_ZN11try_int_seq4sortENS_3ArrEm+0x2c7>
    17d0:	44 8b 54 2c 40       	mov    0x40(%rsp,%rbp,1),%r10d
    17d5:	4d 8d 1c 2e          	lea    (%r14,%rbp,1),%r11
    17d9:	45 3b ea             	cmp    %r10d,%r13d
    17dc:	7d 36                	jge    1814 <_ZN11try_int_seq4sortENS_3ArrEm+0x2c4>
    17de:	45 33 c9             	xor    %r9d,%r9d
    17e1:	4d 8d 04 2e          	lea    (%r14,%rbp,1),%r8
    17e5:	49 ff c1             	inc    %r9
    17e8:	45 89 13             	mov    %r10d,(%r11)
    17eb:	4a 8d 04 cd 00 00 00 	lea    0x0(,%r9,8),%rax
    17f2:	00 
    17f3:	48 f7 d8             	neg    %rax
    17f6:	49 03 c0             	add    %r8,%rax
    17f9:	44 8b 10             	mov    (%rax),%r10d
    17fc:	4c 8d 58 04          	lea    0x4(%rax),%r11
    1800:	45 3b ea             	cmp    %r10d,%r13d
    1803:	7d 0f                	jge    1814 <_ZN11try_int_seq4sortENS_3ArrEm+0x2c4>
    1805:	45 89 13             	mov    %r10d,(%r11)
    1808:	49 89 c3             	mov    %rax,%r11
    180b:	44 8b 50 fc          	mov    -0x4(%rax),%r10d
    180f:	45 3b ea             	cmp    %r10d,%r13d
    1812:	7c d1                	jl     17e5 <_ZN11try_int_seq4sortENS_3ArrEm+0x295>
    1814:	45 89 2b             	mov    %r13d,(%r11)
    1817:	49 ff c4             	inc    %r12
    181a:	48 83 c5 04          	add    $0x4,%rbp
    181e:	49 83 fc 0f          	cmp    $0xf,%r12
    1822:	0f 82 71 ff ff ff    	jb     1799 <_ZN11try_int_seq4sortENS_3ArrEm+0x249>
    1828:	4c 8b 34 24          	mov    (%rsp),%r14
    182c:	48 89 d8             	mov    %rbx,%rax
    182f:	4c 8d 8c 24 80 00 00 	lea    0x80(%rsp),%r9
    1836:	00 
    1837:	45 33 c0             	xor    %r8d,%r8d
    183a:	4c 3b c8             	cmp    %rax,%r9
    183d:	0f 84 27 fd ff ff    	je     156a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>
    1843:	48 89 c2             	mov    %rax,%rdx
    1846:	49 2b d1             	sub    %r9,%rdx
    1849:	48 83 c2 03          	add    $0x3,%rdx
    184d:	48 d1 fa             	sar    %rdx
    1850:	48 c1 ea 3e          	shr    $0x3e,%rdx
    1854:	48 03 c2             	add    %rdx,%rax
    1857:	49 2b c1             	sub    %r9,%rax
    185a:	48 83 c0 03          	add    $0x3,%rax
    185e:	48 c1 f8 02          	sar    $0x2,%rax
    1862:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
    1866:	4b 8d 3c 81          	lea    (%r9,%r8,4),%rdi
    186a:	46 8b 54 84 7c       	mov    0x7c(%rsp,%r8,4),%r10d
    186f:	41 3b f2             	cmp    %r10d,%esi
    1872:	7d 35                	jge    18a9 <_ZN11try_int_seq4sortENS_3ArrEm+0x359>
    1874:	33 c9                	xor    %ecx,%ecx
    1876:	4b 8d 14 81          	lea    (%r9,%r8,4),%rdx
    187a:	48 ff c1             	inc    %rcx
    187d:	44 89 17             	mov    %r10d,(%rdi)
    1880:	4c 8d 1c cd 00 00 00 	lea    0x0(,%rcx,8),%r11
    1887:	00 
    1888:	49 f7 db             	neg    %r11
    188b:	4c 03 da             	add    %rdx,%r11
    188e:	45 8b 13             	mov    (%r11),%r10d
    1891:	49 8d 7b 04          	lea    0x4(%r11),%rdi
    1895:	41 3b f2             	cmp    %r10d,%esi
    1898:	7d 0f                	jge    18a9 <_ZN11try_int_seq4sortENS_3ArrEm+0x359>
    189a:	44 89 17             	mov    %r10d,(%rdi)
    189d:	4c 89 df             	mov    %r11,%rdi
    18a0:	45 8b 53 fc          	mov    -0x4(%r11),%r10d
    18a4:	41 3b f2             	cmp    %r10d,%esi
    18a7:	7c d1                	jl     187a <_ZN11try_int_seq4sortENS_3ArrEm+0x32a>
    18a9:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    18af:	49 ff c0             	inc    %r8
    18b2:	89 37                	mov    %esi,(%rdi)
    18b4:	4c 3b c0             	cmp    %rax,%r8
    18b7:	72 a9                	jb     1862 <_ZN11try_int_seq4sortENS_3ArrEm+0x312>
    18b9:	e9 ac fc ff ff       	jmpq   156a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>
    18be:	48 89 e8             	mov    %rbp,%rax
    18c1:	4c 89 e6             	mov    %r12,%rsi
    18c4:	48 83 f9 02          	cmp    $0x2,%rcx
    18c8:	7d 0f                	jge    18d9 <_ZN11try_int_seq4sortENS_3ArrEm+0x389>
    18ca:	48 83 f9 01          	cmp    $0x1,%rcx
    18ce:	0f 8f 5a 02 00 00    	jg     1b2e <_ZN11try_int_seq4sortENS_3ArrEm+0x5de>
    18d4:	e9 93 fe ff ff       	jmpq   176c <_ZN11try_int_seq4sortENS_3ArrEm+0x21c>
    18d9:	48 8d 51 fe          	lea    -0x2(%rcx),%rdx
    18dd:	48 c1 ea 3f          	shr    $0x3f,%rdx
    18e1:	45 33 c9             	xor    %r9d,%r9d
    18e4:	48 85 c9             	test   %rcx,%rcx
    18e7:	41 0f 9e c1          	setle  %r9b
    18eb:	48 8d 7c 11 fe       	lea    -0x2(%rcx,%rdx,1),%rdi
    18f0:	48 d1 ff             	sar    %rdi
    18f3:	49 89 fa             	mov    %rdi,%r10
    18f6:	4e 8d 4c 09 ff       	lea    -0x1(%rcx,%r9,1),%r9
    18fb:	48 83 e1 01          	and    $0x1,%rcx
    18ff:	49 d1 f9             	sar    %r9
    1902:	48 8d 54 bc 40       	lea    0x40(%rsp,%rdi,4),%rdx
    1907:	48 ff cf             	dec    %rdi
    190a:	48 83 c2 fc          	add    $0xfffffffffffffffc,%rdx
    190e:	44 8b 7a 04          	mov    0x4(%rdx),%r15d
    1912:	48 8d 6f 01          	lea    0x1(%rdi),%rbp
    1916:	49 89 ec             	mov    %rbp,%r12
    1919:	48 89 eb             	mov    %rbp,%rbx
    191c:	49 3b e9             	cmp    %r9,%rbp
    191f:	0f 8d 98 01 00 00    	jge    1abd <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1925:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    192c:	00 
    192d:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1932:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1936:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    193a:	7d 08                	jge    1944 <_ZN11try_int_seq4sortENS_3ArrEm+0x3f4>
    193c:	48 ff cb             	dec    %rbx
    193f:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1944:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1948:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    194d:	49 89 dc             	mov    %rbx,%r12
    1950:	49 3b d9             	cmp    %r9,%rbx
    1953:	0f 8d 64 01 00 00    	jge    1abd <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1959:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1960:	00 
    1961:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1966:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    196a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    196e:	7d 08                	jge    1978 <_ZN11try_int_seq4sortENS_3ArrEm+0x428>
    1970:	48 ff cb             	dec    %rbx
    1973:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1978:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    197c:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1981:	49 89 dc             	mov    %rbx,%r12
    1984:	49 3b d9             	cmp    %r9,%rbx
    1987:	0f 8d 30 01 00 00    	jge    1abd <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    198d:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1994:	00 
    1995:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    199a:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    199e:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    19a2:	7d 08                	jge    19ac <_ZN11try_int_seq4sortENS_3ArrEm+0x45c>
    19a4:	48 ff cb             	dec    %rbx
    19a7:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    19ac:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    19b0:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    19b5:	49 89 dc             	mov    %rbx,%r12
    19b8:	49 3b d9             	cmp    %r9,%rbx
    19bb:	0f 8d fc 00 00 00    	jge    1abd <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    19c1:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    19c8:	00 
    19c9:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    19ce:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    19d2:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    19d6:	7d 08                	jge    19e0 <_ZN11try_int_seq4sortENS_3ArrEm+0x490>
    19d8:	48 ff cb             	dec    %rbx
    19db:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    19e0:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    19e4:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    19e9:	49 89 dc             	mov    %rbx,%r12
    19ec:	49 3b d9             	cmp    %r9,%rbx
    19ef:	0f 8d c8 00 00 00    	jge    1abd <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    19f5:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    19fc:	00 
    19fd:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a02:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a06:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    1a0a:	7d 08                	jge    1a14 <_ZN11try_int_seq4sortENS_3ArrEm+0x4c4>
    1a0c:	48 ff cb             	dec    %rbx
    1a0f:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a14:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a18:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1a1d:	49 89 dc             	mov    %rbx,%r12
    1a20:	49 3b d9             	cmp    %r9,%rbx
    1a23:	0f 8d 94 00 00 00    	jge    1abd <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1a29:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1a30:	00 
    1a31:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a36:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a3a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    1a3e:	7d 08                	jge    1a48 <_ZN11try_int_seq4sortENS_3ArrEm+0x4f8>
    1a40:	48 ff cb             	dec    %rbx
    1a43:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a48:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a4c:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1a51:	49 89 dc             	mov    %rbx,%r12
    1a54:	49 3b d9             	cmp    %r9,%rbx
    1a57:	7d 64                	jge    1abd <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1a59:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1a60:	00 
    1a61:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a66:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a6a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    1a6e:	7d 08                	jge    1a78 <_ZN11try_int_seq4sortENS_3ArrEm+0x528>
    1a70:	48 ff cb             	dec    %rbx
    1a73:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a78:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a7c:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1a81:	49 89 dc             	mov    %rbx,%r12
    1a84:	49 3b d9             	cmp    %r9,%rbx
    1a87:	7d 34                	jge    1abd <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1a89:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1a90:	00 
    1a91:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a96:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a9a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    1a9e:	7d 08                	jge    1aa8 <_ZN11try_int_seq4sortENS_3ArrEm+0x558>
    1aa0:	48 ff cb             	dec    %rbx
    1aa3:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1aa8:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1aac:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1ab1:	49 89 dc             	mov    %rbx,%r12
    1ab4:	49 3b d9             	cmp    %r9,%rbx
    1ab7:	0f 8c 68 fe ff ff    	jl     1925 <_ZN11try_int_seq4sortENS_3ArrEm+0x3d5>
    1abd:	48 85 c9             	test   %rcx,%rcx
    1ac0:	75 1b                	jne    1add <_ZN11try_int_seq4sortENS_3ArrEm+0x58d>
    1ac2:	49 3b da             	cmp    %r10,%rbx
    1ac5:	75 16                	jne    1add <_ZN11try_int_seq4sortENS_3ArrEm+0x58d>
    1ac7:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1ace:	00 
    1acf:	44 8b 5c 9c 3c       	mov    0x3c(%rsp,%rbx,4),%r11d
    1ad4:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1ad9:	4c 8d 63 ff          	lea    -0x1(%rbx),%r12
    1add:	4d 8d 5c 24 ff       	lea    -0x1(%r12),%r11
    1ae2:	49 c1 eb 3f          	shr    $0x3f,%r11
    1ae6:	4f 8d 5c 1c ff       	lea    -0x1(%r12,%r11,1),%r11
    1aeb:	49 d1 fb             	sar    %r11
    1aee:	4c 3b e5             	cmp    %rbp,%r12
    1af1:	7e 27                	jle    1b1a <_ZN11try_int_seq4sortENS_3ArrEm+0x5ca>
    1af3:	42 8b 5c 9c 40       	mov    0x40(%rsp,%r11,4),%ebx
    1af8:	41 3b df             	cmp    %r15d,%ebx
    1afb:	7d 1d                	jge    1b1a <_ZN11try_int_seq4sortENS_3ArrEm+0x5ca>
    1afd:	42 89 5c a4 40       	mov    %ebx,0x40(%rsp,%r12,4)
    1b02:	49 8d 5b ff          	lea    -0x1(%r11),%rbx
    1b06:	48 c1 eb 3f          	shr    $0x3f,%rbx
    1b0a:	4d 89 dc             	mov    %r11,%r12
    1b0d:	4d 8d 5c 1b ff       	lea    -0x1(%r11,%rbx,1),%r11
    1b12:	49 d1 fb             	sar    %r11
    1b15:	4c 3b e5             	cmp    %rbp,%r12
    1b18:	7f d9                	jg     1af3 <_ZN11try_int_seq4sortENS_3ArrEm+0x5a3>
    1b1a:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1b1f:	46 89 7c a4 40       	mov    %r15d,0x40(%rsp,%r12,4)
    1b24:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
    1b28:	0f 85 d9 fd ff ff    	jne    1907 <_ZN11try_int_seq4sortENS_3ArrEm+0x3b7>
    1b2e:	8b 54 24 40          	mov    0x40(%rsp),%edx
    1b32:	33 c9                	xor    %ecx,%ecx
    1b34:	48 ff c1             	inc    %rcx
    1b37:	45 33 db             	xor    %r11d,%r11d
    1b3a:	33 ff                	xor    %edi,%edi
    1b3c:	45 33 c9             	xor    %r9d,%r9d
    1b3f:	4c 8d 14 8d 00 00 00 	lea    0x0(,%rcx,4),%r10
    1b46:	00 
    1b47:	49 f7 da             	neg    %r10
    1b4a:	4d 03 d0             	add    %r8,%r10
    1b4d:	41 8b 1a             	mov    (%r10),%ebx
    1b50:	41 89 12             	mov    %edx,(%r10)
    1b53:	4c 8d 54 8c 40       	lea    0x40(%rsp,%rcx,4),%r10
    1b58:	49 f7 da             	neg    %r10
    1b5b:	4d 03 d0             	add    %r8,%r10
    1b5e:	49 c1 fa 02          	sar    $0x2,%r10
    1b62:	4d 85 d2             	test   %r10,%r10
    1b65:	40 0f 9e c7          	setle  %dil
    1b69:	49 8d 7c 3a ff       	lea    -0x1(%r10,%rdi,1),%rdi
    1b6e:	48 d1 ff             	sar    %rdi
    1b71:	48 85 ff             	test   %rdi,%rdi
    1b74:	7e 5c                	jle    1bd2 <_ZN11try_int_seq4sortENS_3ArrEm+0x682>
    1b76:	4e 8d 0c 4d 02 00 00 	lea    0x2(,%r9,2),%r9
    1b7d:	00 
    1b7e:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
    1b83:	41 8b 2f             	mov    (%r15),%ebp
    1b86:	41 3b 6f fc          	cmp    -0x4(%r15),%ebp
    1b8a:	7d 08                	jge    1b94 <_ZN11try_int_seq4sortENS_3ArrEm+0x644>
    1b8c:	49 ff c9             	dec    %r9
    1b8f:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
    1b94:	41 8b 2f             	mov    (%r15),%ebp
    1b97:	42 89 6c 9c 40       	mov    %ebp,0x40(%rsp,%r11,4)
    1b9c:	4d 89 cb             	mov    %r9,%r11
    1b9f:	4c 3b cf             	cmp    %rdi,%r9
    1ba2:	7d 2e                	jge    1bd2 <_ZN11try_int_seq4sortENS_3ArrEm+0x682>
    1ba4:	4e 8d 0c 4d 02 00 00 	lea    0x2(,%r9,2),%r9
    1bab:	00 
    1bac:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
    1bb1:	41 8b 2f             	mov    (%r15),%ebp
    1bb4:	41 3b 6f fc          	cmp    -0x4(%r15),%ebp
    1bb8:	7d 08                	jge    1bc2 <_ZN11try_int_seq4sortENS_3ArrEm+0x672>
    1bba:	49 ff c9             	dec    %r9
    1bbd:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
    1bc2:	41 8b 2f             	mov    (%r15),%ebp
    1bc5:	42 89 6c 9c 40       	mov    %ebp,0x40(%rsp,%r11,4)
    1bca:	4d 89 cb             	mov    %r9,%r11
    1bcd:	4c 3b cf             	cmp    %rdi,%r9
    1bd0:	7c a4                	jl     1b76 <_ZN11try_int_seq4sortENS_3ArrEm+0x626>
    1bd2:	49 f7 c2 01 00 00 00 	test   $0x1,%r10
    1bd9:	75 2b                	jne    1c06 <_ZN11try_int_seq4sortENS_3ArrEm+0x6b6>
    1bdb:	49 8d 7a fe          	lea    -0x2(%r10),%rdi
    1bdf:	48 c1 ef 3f          	shr    $0x3f,%rdi
    1be3:	49 8d 7c 3a fe       	lea    -0x2(%r10,%rdi,1),%rdi
    1be8:	48 d1 ff             	sar    %rdi
    1beb:	4c 3b cf             	cmp    %rdi,%r9
    1bee:	75 16                	jne    1c06 <_ZN11try_int_seq4sortENS_3ArrEm+0x6b6>
    1bf0:	4e 8d 0c 4d 02 00 00 	lea    0x2(,%r9,2),%r9
    1bf7:	00 
    1bf8:	42 8b 7c 8c 3c       	mov    0x3c(%rsp,%r9,4),%edi
    1bfd:	42 89 7c 9c 40       	mov    %edi,0x40(%rsp,%r11,4)
    1c02:	4d 8d 59 ff          	lea    -0x1(%r9),%r11
    1c06:	49 8d 7b ff          	lea    -0x1(%r11),%rdi
    1c0a:	48 c1 ef 3f          	shr    $0x3f,%rdi
    1c0e:	49 8d 7c 3b ff       	lea    -0x1(%r11,%rdi,1),%rdi
    1c13:	48 d1 ff             	sar    %rdi
    1c16:	4d 85 db             	test   %r11,%r11
    1c19:	7e 27                	jle    1c42 <_ZN11try_int_seq4sortENS_3ArrEm+0x6f2>
    1c1b:	44 8b 4c bc 40       	mov    0x40(%rsp,%rdi,4),%r9d
    1c20:	44 3b cb             	cmp    %ebx,%r9d
    1c23:	7d 1d                	jge    1c42 <_ZN11try_int_seq4sortENS_3ArrEm+0x6f2>
    1c25:	46 89 4c 9c 40       	mov    %r9d,0x40(%rsp,%r11,4)
    1c2a:	4c 8d 4f ff          	lea    -0x1(%rdi),%r9
    1c2e:	49 c1 e9 3f          	shr    $0x3f,%r9
    1c32:	49 89 fb             	mov    %rdi,%r11
    1c35:	4a 8d 7c 0f ff       	lea    -0x1(%rdi,%r9,1),%rdi
    1c3a:	48 d1 ff             	sar    %rdi
    1c3d:	4d 85 db             	test   %r11,%r11
    1c40:	7f d9                	jg     1c1b <_ZN11try_int_seq4sortENS_3ArrEm+0x6cb>
    1c42:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1c47:	42 89 5c 9c 40       	mov    %ebx,0x40(%rsp,%r11,4)
    1c4c:	49 83 fa 01          	cmp    $0x1,%r10
    1c50:	0f 8f de fe ff ff    	jg     1b34 <_ZN11try_int_seq4sortENS_3ArrEm+0x5e4>
    1c56:	e9 11 fb ff ff       	jmpq   176c <_ZN11try_int_seq4sortENS_3ArrEm+0x21c>
    1c5b:	48 3b f0             	cmp    %rax,%rsi
    1c5e:	0f 84 06 f9 ff ff    	je     156a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>
    1c64:	33 c9                	xor    %ecx,%ecx
    1c66:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    1c6b:	33 d2                	xor    %edx,%edx
    1c6d:	48 3b f8             	cmp    %rax,%rdi
    1c70:	0f 84 f4 f8 ff ff    	je     156a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>
    1c76:	49 89 c0             	mov    %rax,%r8
    1c79:	48 89 d5             	mov    %rdx,%rbp
    1c7c:	4c 2b c7             	sub    %rdi,%r8
    1c7f:	49 89 cc             	mov    %rcx,%r12
    1c82:	49 83 c0 03          	add    $0x3,%r8
    1c86:	49 89 f7             	mov    %rsi,%r15
    1c89:	49 d1 f8             	sar    %r8
    1c8c:	49 c1 e8 3e          	shr    $0x3e,%r8
    1c90:	49 03 c0             	add    %r8,%rax
    1c93:	48 2b c7             	sub    %rdi,%rax
    1c96:	48 83 c0 03          	add    $0x3,%rax
    1c9a:	48 c1 f8 02          	sar    $0x2,%rax
    1c9e:	4c 89 34 24          	mov    %r14,(%rsp)
    1ca2:	48 89 c3             	mov    %rax,%rbx
    1ca5:	49 89 fe             	mov    %rdi,%r14
    1ca8:	46 8b 6c 35 00       	mov    0x0(%rbp,%r14,1),%r13d
    1cad:	44 3b 6c 24 40       	cmp    0x40(%rsp),%r13d
    1cb2:	7d 2b                	jge    1cdf <_ZN11try_int_seq4sortENS_3ArrEm+0x78f>
    1cb4:	48 8d 55 04          	lea    0x4(%rbp),%rdx
    1cb8:	48 c1 fa 02          	sar    $0x2,%rdx
    1cbc:	48 85 d2             	test   %rdx,%rdx
    1cbf:	74 17                	je     1cd8 <_ZN11try_int_seq4sortENS_3ArrEm+0x788>
    1cc1:	48 c1 e2 02          	shl    $0x2,%rdx
    1cc5:	4d 89 f0             	mov    %r14,%r8
    1cc8:	4c 2b c2             	sub    %rdx,%r8
    1ccb:	4c 89 fe             	mov    %r15,%rsi
    1cce:	4a 8d 7c 05 04       	lea    0x4(%rbp,%r8,1),%rdi
    1cd3:	e8 00 00 00 00       	callq  1cd8 <_ZN11try_int_seq4sortENS_3ArrEm+0x788>
    1cd8:	44 89 6c 24 40       	mov    %r13d,0x40(%rsp)
    1cdd:	eb 48                	jmp    1d27 <_ZN11try_int_seq4sortENS_3ArrEm+0x7d7>
    1cdf:	44 8b 54 2c 40       	mov    0x40(%rsp,%rbp,1),%r10d
    1ce4:	4d 8d 1c 2e          	lea    (%r14,%rbp,1),%r11
    1ce8:	45 3b ea             	cmp    %r10d,%r13d
    1ceb:	7d 36                	jge    1d23 <_ZN11try_int_seq4sortENS_3ArrEm+0x7d3>
    1ced:	45 33 c9             	xor    %r9d,%r9d
    1cf0:	4d 8d 04 2e          	lea    (%r14,%rbp,1),%r8
    1cf4:	49 ff c1             	inc    %r9
    1cf7:	45 89 13             	mov    %r10d,(%r11)
    1cfa:	4a 8d 04 cd 00 00 00 	lea    0x0(,%r9,8),%rax
    1d01:	00 
    1d02:	48 f7 d8             	neg    %rax
    1d05:	49 03 c0             	add    %r8,%rax
    1d08:	44 8b 10             	mov    (%rax),%r10d
    1d0b:	4c 8d 58 04          	lea    0x4(%rax),%r11
    1d0f:	45 3b ea             	cmp    %r10d,%r13d
    1d12:	7d 0f                	jge    1d23 <_ZN11try_int_seq4sortENS_3ArrEm+0x7d3>
    1d14:	45 89 13             	mov    %r10d,(%r11)
    1d17:	49 89 c3             	mov    %rax,%r11
    1d1a:	44 8b 50 fc          	mov    -0x4(%rax),%r10d
    1d1e:	45 3b ea             	cmp    %r10d,%r13d
    1d21:	7c d1                	jl     1cf4 <_ZN11try_int_seq4sortENS_3ArrEm+0x7a4>
    1d23:	90                   	nop
    1d24:	45 89 2b             	mov    %r13d,(%r11)
    1d27:	49 ff c4             	inc    %r12
    1d2a:	48 83 c5 04          	add    $0x4,%rbp
    1d2e:	4c 3b e3             	cmp    %rbx,%r12
    1d31:	0f 82 71 ff ff ff    	jb     1ca8 <_ZN11try_int_seq4sortENS_3ArrEm+0x758>
    1d37:	4c 8b 34 24          	mov    (%rsp),%r14
    1d3b:	e9 2a f8 ff ff       	jmpq   156a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>

0000000000001d40 <_ZN11try_int_seq4fillENS_3ArrEm>:
    1d40:	55                   	push   %rbp
    1d41:	48 89 e5             	mov    %rsp,%rbp
    1d44:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    1d48:	48 89 fa             	mov    %rdi,%rdx
    1d4b:	48 85 d2             	test   %rdx,%rdx
    1d4e:	76 15                	jbe    1d65 <_ZN11try_int_seq4fillENS_3ArrEm+0x25>
    1d50:	48 83 fa 18          	cmp    $0x18,%rdx
    1d54:	7e 17                	jle    1d6d <_ZN11try_int_seq4fillENS_3ArrEm+0x2d>
    1d56:	48 c1 e2 02          	shl    $0x2,%rdx
    1d5a:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    1d5e:	33 f6                	xor    %esi,%esi
    1d60:	e8 00 00 00 00       	callq  1d65 <_ZN11try_int_seq4fillENS_3ArrEm+0x25>
    1d65:	c5 f8 77             	vzeroupper 
    1d68:	48 89 ec             	mov    %rbp,%rsp
    1d6b:	5d                   	pop    %rbp
    1d6c:	c3                   	retq   
    1d6d:	48 83 fa 08          	cmp    $0x8,%rdx
    1d71:	7c 33                	jl     1da6 <_ZN11try_int_seq4fillENS_3ArrEm+0x66>
    1d73:	48 89 d0             	mov    %rdx,%rax
    1d76:	33 c9                	xor    %ecx,%ecx
    1d78:	c5 fd ef c0          	vpxor  %ymm0,%ymm0,%ymm0
    1d7c:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    1d80:	c5 fe 7f 44 8d 10    	vmovdqu %ymm0,0x10(%rbp,%rcx,4)
    1d86:	48 83 c1 08          	add    $0x8,%rcx
    1d8a:	48 3b c8             	cmp    %rax,%rcx
    1d8d:	72 f1                	jb     1d80 <_ZN11try_int_seq4fillENS_3ArrEm+0x40>
    1d8f:	48 3b c2             	cmp    %rdx,%rax
    1d92:	73 d1                	jae    1d65 <_ZN11try_int_seq4fillENS_3ArrEm+0x25>
    1d94:	c7 44 85 10 00 00 00 	movl   $0x0,0x10(%rbp,%rax,4)
    1d9b:	00 
    1d9c:	48 ff c0             	inc    %rax
    1d9f:	48 3b c2             	cmp    %rdx,%rax
    1da2:	72 f0                	jb     1d94 <_ZN11try_int_seq4fillENS_3ArrEm+0x54>
    1da4:	eb bf                	jmp    1d65 <_ZN11try_int_seq4fillENS_3ArrEm+0x25>
    1da6:	33 c0                	xor    %eax,%eax
    1da8:	eb e5                	jmp    1d8f <_ZN11try_int_seq4fillENS_3ArrEm+0x4f>
    1daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001db0 <_ZN11try_int_seq9transformENS_3ArrES0_m>:
    1db0:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1db5:	48 8d 34 ba          	lea    (%rdx,%rdi,4),%rsi
    1db9:	48 3b d6             	cmp    %rsi,%rdx
    1dbc:	0f 84 a5 00 00 00    	je     1e67 <_ZN11try_int_seq9transformENS_3ArrES0_m+0xb7>
    1dc2:	48 89 f0             	mov    %rsi,%rax
    1dc5:	48 2b c2             	sub    %rdx,%rax
    1dc8:	48 83 c0 03          	add    $0x3,%rax
    1dcc:	48 d1 f8             	sar    %rax
    1dcf:	48 c1 e8 3e          	shr    $0x3e,%rax
    1dd3:	48 03 f0             	add    %rax,%rsi
    1dd6:	48 2b f2             	sub    %rdx,%rsi
    1dd9:	48 83 c6 03          	add    $0x3,%rsi
    1ddd:	48 c1 fe 02          	sar    $0x2,%rsi
    1de1:	48 83 fe 08          	cmp    $0x8,%rsi
    1de5:	7c 67                	jl     1e4e <_ZN11try_int_seq9transformENS_3ArrES0_m+0x9e>
    1de7:	48 81 fe f9 00 00 00 	cmp    $0xf9,%rsi
    1dee:	7c 7b                	jl     1e6b <_ZN11try_int_seq9transformENS_3ArrES0_m+0xbb>
    1df0:	48 83 e2 1f          	and    $0x1f,%rdx
    1df4:	74 0b                	je     1e01 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x51>
    1df6:	48 f7 da             	neg    %rdx
    1df9:	48 83 c2 20          	add    $0x20,%rdx
    1dfd:	48 c1 ea 02          	shr    $0x2,%rdx
    1e01:	48 8d 42 08          	lea    0x8(%rdx),%rax
    1e05:	48 3b f0             	cmp    %rax,%rsi
    1e08:	7c 44                	jl     1e4e <_ZN11try_int_seq9transformENS_3ArrES0_m+0x9e>
    1e0a:	48 89 f1             	mov    %rsi,%rcx
    1e0d:	33 c0                	xor    %eax,%eax
    1e0f:	48 2b ca             	sub    %rdx,%rcx
    1e12:	48 83 e1 07          	and    $0x7,%rcx
    1e16:	48 f7 d9             	neg    %rcx
    1e19:	48 03 ce             	add    %rsi,%rcx
    1e1c:	48 85 d2             	test   %rdx,%rdx
    1e1f:	76 12                	jbe    1e33 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x83>
    1e21:	8b 7c 84 08          	mov    0x8(%rsp,%rax,4),%edi
    1e25:	03 ff                	add    %edi,%edi
    1e27:	89 7c 84 08          	mov    %edi,0x8(%rsp,%rax,4)
    1e2b:	48 ff c0             	inc    %rax
    1e2e:	48 3b c2             	cmp    %rdx,%rax
    1e31:	72 ee                	jb     1e21 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x71>
    1e33:	c5 fe 6f 44 94 08    	vmovdqu 0x8(%rsp,%rdx,4),%ymm0
    1e39:	c5 fd fe c8          	vpaddd %ymm0,%ymm0,%ymm1
    1e3d:	c5 fe 7f 4c 94 08    	vmovdqu %ymm1,0x8(%rsp,%rdx,4)
    1e43:	48 83 c2 08          	add    $0x8,%rdx
    1e47:	48 3b d1             	cmp    %rcx,%rdx
    1e4a:	72 e7                	jb     1e33 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x83>
    1e4c:	eb 02                	jmp    1e50 <_ZN11try_int_seq9transformENS_3ArrES0_m+0xa0>
    1e4e:	33 c9                	xor    %ecx,%ecx
    1e50:	48 3b ce             	cmp    %rsi,%rcx
    1e53:	73 12                	jae    1e67 <_ZN11try_int_seq9transformENS_3ArrES0_m+0xb7>
    1e55:	8b 44 8c 08          	mov    0x8(%rsp,%rcx,4),%eax
    1e59:	03 c0                	add    %eax,%eax
    1e5b:	89 44 8c 08          	mov    %eax,0x8(%rsp,%rcx,4)
    1e5f:	48 ff c1             	inc    %rcx
    1e62:	48 3b ce             	cmp    %rsi,%rcx
    1e65:	72 ee                	jb     1e55 <_ZN11try_int_seq9transformENS_3ArrES0_m+0xa5>
    1e67:	c5 f8 77             	vzeroupper 
    1e6a:	c3                   	retq   
    1e6b:	48 89 f1             	mov    %rsi,%rcx
    1e6e:	33 d2                	xor    %edx,%edx
    1e70:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    1e74:	eb bd                	jmp    1e33 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x83>
    1e76:	0f 1f 00             	nopl   (%rax)
    1e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001e80 <_ZN11try_int_seq11transform32ENS_3ArrES0_m>:
    1e80:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1e85:	48 c1 e7 05          	shl    $0x5,%rdi
    1e89:	48 03 fa             	add    %rdx,%rdi
    1e8c:	48 3b d7             	cmp    %rdi,%rdx
    1e8f:	0f 84 a5 00 00 00    	je     1f3a <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xba>
    1e95:	48 89 f8             	mov    %rdi,%rax
    1e98:	48 2b c2             	sub    %rdx,%rax
    1e9b:	48 83 c0 03          	add    $0x3,%rax
    1e9f:	48 d1 f8             	sar    %rax
    1ea2:	48 c1 e8 3e          	shr    $0x3e,%rax
    1ea6:	48 03 f8             	add    %rax,%rdi
    1ea9:	48 2b fa             	sub    %rdx,%rdi
    1eac:	48 83 c7 03          	add    $0x3,%rdi
    1eb0:	48 c1 ff 02          	sar    $0x2,%rdi
    1eb4:	48 83 ff 08          	cmp    $0x8,%rdi
    1eb8:	7c 67                	jl     1f21 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xa1>
    1eba:	48 81 ff f9 00 00 00 	cmp    $0xf9,%rdi
    1ec1:	7c 7b                	jl     1f3e <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xbe>
    1ec3:	48 83 e2 1f          	and    $0x1f,%rdx
    1ec7:	74 0b                	je     1ed4 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x54>
    1ec9:	48 f7 da             	neg    %rdx
    1ecc:	48 83 c2 20          	add    $0x20,%rdx
    1ed0:	48 c1 ea 02          	shr    $0x2,%rdx
    1ed4:	48 8d 42 08          	lea    0x8(%rdx),%rax
    1ed8:	48 3b f8             	cmp    %rax,%rdi
    1edb:	7c 44                	jl     1f21 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xa1>
    1edd:	48 89 f9             	mov    %rdi,%rcx
    1ee0:	33 c0                	xor    %eax,%eax
    1ee2:	48 2b ca             	sub    %rdx,%rcx
    1ee5:	48 83 e1 07          	and    $0x7,%rcx
    1ee9:	48 f7 d9             	neg    %rcx
    1eec:	48 03 cf             	add    %rdi,%rcx
    1eef:	48 85 d2             	test   %rdx,%rdx
    1ef2:	76 12                	jbe    1f06 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x86>
    1ef4:	8b 74 84 08          	mov    0x8(%rsp,%rax,4),%esi
    1ef8:	03 f6                	add    %esi,%esi
    1efa:	89 74 84 08          	mov    %esi,0x8(%rsp,%rax,4)
    1efe:	48 ff c0             	inc    %rax
    1f01:	48 3b c2             	cmp    %rdx,%rax
    1f04:	72 ee                	jb     1ef4 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x74>
    1f06:	c5 fe 6f 44 94 08    	vmovdqu 0x8(%rsp,%rdx,4),%ymm0
    1f0c:	c5 fd fe c8          	vpaddd %ymm0,%ymm0,%ymm1
    1f10:	c5 fe 7f 4c 94 08    	vmovdqu %ymm1,0x8(%rsp,%rdx,4)
    1f16:	48 83 c2 08          	add    $0x8,%rdx
    1f1a:	48 3b d1             	cmp    %rcx,%rdx
    1f1d:	72 e7                	jb     1f06 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x86>
    1f1f:	eb 02                	jmp    1f23 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xa3>
    1f21:	33 c9                	xor    %ecx,%ecx
    1f23:	48 3b cf             	cmp    %rdi,%rcx
    1f26:	73 12                	jae    1f3a <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xba>
    1f28:	8b 44 8c 08          	mov    0x8(%rsp,%rcx,4),%eax
    1f2c:	03 c0                	add    %eax,%eax
    1f2e:	89 44 8c 08          	mov    %eax,0x8(%rsp,%rcx,4)
    1f32:	48 ff c1             	inc    %rcx
    1f35:	48 3b cf             	cmp    %rdi,%rcx
    1f38:	72 ee                	jb     1f28 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xa8>
    1f3a:	c5 f8 77             	vzeroupper 
    1f3d:	c3                   	retq   
    1f3e:	48 89 f9             	mov    %rdi,%rcx
    1f41:	33 d2                	xor    %edx,%edx
    1f43:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    1f47:	eb bd                	jmp    1f06 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x86>
    1f49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001f50 <_ZN13try_float_seq4sortENS_3ArrEm>:
    1f50:	41 54                	push   %r12
    1f52:	41 55                	push   %r13
    1f54:	41 56                	push   %r14
    1f56:	41 57                	push   %r15
    1f58:	48 83 ec 18          	sub    $0x18,%rsp
    1f5c:	4c 8d 54 24 40       	lea    0x40(%rsp),%r10
    1f61:	4d 8d 0c ba          	lea    (%r10,%rdi,4),%r9
    1f65:	4d 3b d1             	cmp    %r9,%r10
    1f68:	75 0d                	jne    1f77 <_ZN13try_float_seq4sortENS_3ArrEm+0x27>
    1f6a:	48 83 c4 18          	add    $0x18,%rsp
    1f6e:	41 5f                	pop    %r15
    1f70:	41 5e                	pop    %r14
    1f72:	41 5d                	pop    %r13
    1f74:	41 5c                	pop    %r12
    1f76:	c3                   	retq   
    1f77:	4c 89 c8             	mov    %r9,%rax
    1f7a:	4c 89 ce             	mov    %r9,%rsi
    1f7d:	49 2b c2             	sub    %r10,%rax
    1f80:	48 c1 f8 02          	sar    $0x2,%rax
    1f84:	f3 48 0f bd d0       	lzcnt  %rax,%rdx
    1f89:	48 03 d2             	add    %rdx,%rdx
    1f8c:	48 f7 da             	neg    %rdx
    1f8f:	48 83 c2 7e          	add    $0x7e,%rdx
    1f93:	48 83 f8 10          	cmp    $0x10,%rax
    1f97:	0f 8e 73 07 00 00    	jle    2710 <_ZN13try_float_seq4sortENS_3ArrEm+0x7c0>
    1f9d:	49 89 d7             	mov    %rdx,%r15
    1fa0:	4d 89 cd             	mov    %r9,%r13
    1fa3:	4d 89 d6             	mov    %r10,%r14
    1fa6:	48 89 f0             	mov    %rsi,%rax
    1fa9:	49 2b c6             	sub    %r14,%rax
    1fac:	48 c1 f8 02          	sar    $0x2,%rax
    1fb0:	4d 85 ff             	test   %r15,%r15
    1fb3:	0f 84 98 03 00 00    	je     2351 <_ZN13try_float_seq4sortENS_3ArrEm+0x401>
    1fb9:	48 89 c1             	mov    %rax,%rcx
    1fbc:	49 ff cf             	dec    %r15
    1fbf:	48 c1 e9 3f          	shr    $0x3f,%rcx
    1fc3:	48 03 c1             	add    %rcx,%rax
    1fc6:	48 d1 f8             	sar    %rax
    1fc9:	c5 fa 10 44 24 44    	vmovss 0x44(%rsp),%xmm0
    1fcf:	c5 fa 10 4e fc       	vmovss -0x4(%rsi),%xmm1
    1fd4:	c5 fa 10 54 84 40    	vmovss 0x40(%rsp,%rax,4),%xmm2
    1fda:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
    1fde:	76 33                	jbe    2013 <_ZN13try_float_seq4sortENS_3ArrEm+0xc3>
    1fe0:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
    1fe4:	77 19                	ja     1fff <_ZN13try_float_seq4sortENS_3ArrEm+0xaf>
    1fe6:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
    1fea:	76 35                	jbe    2021 <_ZN13try_float_seq4sortENS_3ArrEm+0xd1>
    1fec:	8b 44 24 40          	mov    0x40(%rsp),%eax
    1ff0:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
    1ff4:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
    1ffa:	89 46 fc             	mov    %eax,-0x4(%rsi)
    1ffd:	eb 34                	jmp    2033 <_ZN13try_float_seq4sortENS_3ArrEm+0xe3>
    1fff:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    2003:	48 c1 e0 02          	shl    $0x2,%rax
    2007:	c5 fa 11 54 24 40    	vmovss %xmm2,0x40(%rsp)
    200d:	89 4c 04 40          	mov    %ecx,0x40(%rsp,%rax,1)
    2011:	eb 20                	jmp    2033 <_ZN13try_float_seq4sortENS_3ArrEm+0xe3>
    2013:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
    2017:	77 08                	ja     2021 <_ZN13try_float_seq4sortENS_3ArrEm+0xd1>
    2019:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
    201d:	77 cd                	ja     1fec <_ZN13try_float_seq4sortENS_3ArrEm+0x9c>
    201f:	eb de                	jmp    1fff <_ZN13try_float_seq4sortENS_3ArrEm+0xaf>
    2021:	8b 44 24 40          	mov    0x40(%rsp),%eax
    2025:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
    2029:	c5 fa 11 44 24 40    	vmovss %xmm0,0x40(%rsp)
    202f:	89 44 24 44          	mov    %eax,0x44(%rsp)
    2033:	48 89 f0             	mov    %rsi,%rax
    2036:	4c 8d 64 24 44       	lea    0x44(%rsp),%r12
    203b:	eb 14                	jmp    2051 <_ZN13try_float_seq4sortENS_3ArrEm+0x101>
    203d:	c4 c1 7a 11 04 24    	vmovss %xmm0,(%r12)
    2043:	49 83 c4 04          	add    $0x4,%r12
    2047:	c5 fa 11 08          	vmovss %xmm1,(%rax)
    204b:	c5 fa 10 54 24 40    	vmovss 0x40(%rsp),%xmm2
    2051:	c4 c1 7a 10 0c 24    	vmovss (%r12),%xmm1
    2057:	4d 89 e0             	mov    %r12,%r8
    205a:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    205e:	0f 86 93 00 00 00    	jbe    20f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    2064:	33 c9                	xor    %ecx,%ecx
    2066:	48 83 c1 20          	add    $0x20,%rcx
    206a:	4d 8d 1c 08          	lea    (%r8,%rcx,1),%r11
    206e:	c4 c1 7a 10 4b e4    	vmovss -0x1c(%r11),%xmm1
    2074:	4d 8d 64 08 e4       	lea    -0x1c(%r8,%rcx,1),%r12
    2079:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    207d:	76 78                	jbe    20f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    207f:	c4 c1 7a 10 4b e8    	vmovss -0x18(%r11),%xmm1
    2085:	4d 8d 64 08 e8       	lea    -0x18(%r8,%rcx,1),%r12
    208a:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    208e:	76 67                	jbe    20f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    2090:	c4 c1 7a 10 4b ec    	vmovss -0x14(%r11),%xmm1
    2096:	4d 8d 64 08 ec       	lea    -0x14(%r8,%rcx,1),%r12
    209b:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    209f:	76 56                	jbe    20f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20a1:	c4 c1 7a 10 4b f0    	vmovss -0x10(%r11),%xmm1
    20a7:	4d 8d 64 08 f0       	lea    -0x10(%r8,%rcx,1),%r12
    20ac:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20b0:	76 45                	jbe    20f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20b2:	c4 c1 7a 10 4b f4    	vmovss -0xc(%r11),%xmm1
    20b8:	4d 8d 64 08 f4       	lea    -0xc(%r8,%rcx,1),%r12
    20bd:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20c1:	76 34                	jbe    20f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20c3:	c4 c1 7a 10 4b f8    	vmovss -0x8(%r11),%xmm1
    20c9:	4d 8d 64 08 f8       	lea    -0x8(%r8,%rcx,1),%r12
    20ce:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20d2:	76 23                	jbe    20f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20d4:	c4 c1 7a 10 4b fc    	vmovss -0x4(%r11),%xmm1
    20da:	4d 8d 64 08 fc       	lea    -0x4(%r8,%rcx,1),%r12
    20df:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20e3:	76 12                	jbe    20f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20e5:	c4 c1 7a 10 0b       	vmovss (%r11),%xmm1
    20ea:	4d 89 dc             	mov    %r11,%r12
    20ed:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20f1:	0f 87 6f ff ff ff    	ja     2066 <_ZN13try_float_seq4sortENS_3ArrEm+0x116>
    20f7:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    20fb:	49 89 c0             	mov    %rax,%r8
    20fe:	c5 fa 10 00          	vmovss (%rax),%xmm0
    2102:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2106:	0f 86 93 00 00 00    	jbe    219f <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    210c:	33 c9                	xor    %ecx,%ecx
    210e:	48 83 c1 e0          	add    $0xffffffffffffffe0,%rcx
    2112:	4d 8d 1c 08          	lea    (%r8,%rcx,1),%r11
    2116:	c4 c1 7a 10 43 1c    	vmovss 0x1c(%r11),%xmm0
    211c:	49 8d 44 08 1c       	lea    0x1c(%r8,%rcx,1),%rax
    2121:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2125:	76 78                	jbe    219f <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    2127:	c4 c1 7a 10 43 18    	vmovss 0x18(%r11),%xmm0
    212d:	49 8d 44 08 18       	lea    0x18(%r8,%rcx,1),%rax
    2132:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2136:	76 67                	jbe    219f <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    2138:	c4 c1 7a 10 43 14    	vmovss 0x14(%r11),%xmm0
    213e:	49 8d 44 08 14       	lea    0x14(%r8,%rcx,1),%rax
    2143:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2147:	76 56                	jbe    219f <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    2149:	c4 c1 7a 10 43 10    	vmovss 0x10(%r11),%xmm0
    214f:	49 8d 44 08 10       	lea    0x10(%r8,%rcx,1),%rax
    2154:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2158:	76 45                	jbe    219f <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    215a:	c4 c1 7a 10 43 0c    	vmovss 0xc(%r11),%xmm0
    2160:	49 8d 44 08 0c       	lea    0xc(%r8,%rcx,1),%rax
    2165:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2169:	76 34                	jbe    219f <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    216b:	c4 c1 7a 10 43 08    	vmovss 0x8(%r11),%xmm0
    2171:	49 8d 44 08 08       	lea    0x8(%r8,%rcx,1),%rax
    2176:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    217a:	76 23                	jbe    219f <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    217c:	c4 c1 7a 10 43 04    	vmovss 0x4(%r11),%xmm0
    2182:	49 8d 44 08 04       	lea    0x4(%r8,%rcx,1),%rax
    2187:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    218b:	76 12                	jbe    219f <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    218d:	c4 c1 7a 10 03       	vmovss (%r11),%xmm0
    2192:	4c 89 d8             	mov    %r11,%rax
    2195:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2199:	0f 87 6f ff ff ff    	ja     210e <_ZN13try_float_seq4sortENS_3ArrEm+0x1be>
    219f:	4c 3b e0             	cmp    %rax,%r12
    21a2:	0f 82 95 fe ff ff    	jb     203d <_ZN13try_float_seq4sortENS_3ArrEm+0xed>
    21a8:	4c 89 e7             	mov    %r12,%rdi
    21ab:	4c 89 fa             	mov    %r15,%rdx
    21ae:	e8 00 00 00 00       	callq  21b3 <_ZN13try_float_seq4sortENS_3ArrEm+0x263>
    21b3:	4c 89 e6             	mov    %r12,%rsi
    21b6:	4d 2b e6             	sub    %r14,%r12
    21b9:	49 c1 fc 02          	sar    $0x2,%r12
    21bd:	49 83 fc 10          	cmp    $0x10,%r12
    21c1:	0f 8f df fd ff ff    	jg     1fa6 <_ZN13try_float_seq4sortENS_3ArrEm+0x56>
    21c7:	4d 89 e9             	mov    %r13,%r9
    21ca:	4d 89 f2             	mov    %r14,%r10
    21cd:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
    21d4:	00 
    21d5:	4c 3b d0             	cmp    %rax,%r10
    21d8:	0f 84 e2 00 00 00    	je     22c0 <_ZN13try_float_seq4sortENS_3ArrEm+0x370>
    21de:	33 c9                	xor    %ecx,%ecx
    21e0:	48 8d 74 24 44       	lea    0x44(%rsp),%rsi
    21e5:	33 d2                	xor    %edx,%edx
    21e7:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    21ec:	49 89 c5             	mov    %rax,%r13
    21ef:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
    21f4:	49 89 d7             	mov    %rdx,%r15
    21f7:	48 89 cd             	mov    %rcx,%rbp
    21fa:	49 89 f4             	mov    %rsi,%r12
    21fd:	4c 89 cb             	mov    %r9,%rbx
    2200:	4d 89 d6             	mov    %r10,%r14
    2203:	c4 81 7a 10 0c 27    	vmovss (%r15,%r12,1),%xmm1
    2209:	c5 fa 10 44 24 40    	vmovss 0x40(%rsp),%xmm0
    220f:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    2213:	76 36                	jbe    224b <_ZN13try_float_seq4sortENS_3ArrEm+0x2fb>
    2215:	49 8d 57 04          	lea    0x4(%r15),%rdx
    2219:	48 c1 fa 02          	sar    $0x2,%rdx
    221d:	48 85 d2             	test   %rdx,%rdx
    2220:	74 21                	je     2243 <_ZN13try_float_seq4sortENS_3ArrEm+0x2f3>
    2222:	48 c1 e2 02          	shl    $0x2,%rdx
    2226:	4d 89 e0             	mov    %r12,%r8
    2229:	4c 2b c2             	sub    %rdx,%r8
    222c:	4c 89 f6             	mov    %r14,%rsi
    222f:	c5 fa 11 0c 24       	vmovss %xmm1,(%rsp)
    2234:	4b 8d 7c 07 04       	lea    0x4(%r15,%r8,1),%rdi
    2239:	e8 00 00 00 00       	callq  223e <_ZN13try_float_seq4sortENS_3ArrEm+0x2ee>
    223e:	c5 fa 10 0c 24       	vmovss (%rsp),%xmm1
    2243:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
    2249:	eb 54                	jmp    229f <_ZN13try_float_seq4sortENS_3ArrEm+0x34f>
    224b:	c4 a1 7a 10 44 3c 40 	vmovss 0x40(%rsp,%r15,1),%xmm0
    2252:	4f 8d 1c 3c          	lea    (%r12,%r15,1),%r11
    2256:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    225a:	76 3e                	jbe    229a <_ZN13try_float_seq4sortENS_3ArrEm+0x34a>
    225c:	45 33 c0             	xor    %r8d,%r8d
    225f:	4b 8d 3c 3c          	lea    (%r12,%r15,1),%rdi
    2263:	49 ff c0             	inc    %r8
    2266:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    226b:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
    2272:	00 
    2273:	48 f7 d8             	neg    %rax
    2276:	48 03 c7             	add    %rdi,%rax
    2279:	c5 fa 10 00          	vmovss (%rax),%xmm0
    227d:	4c 8d 58 04          	lea    0x4(%rax),%r11
    2281:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    2285:	76 13                	jbe    229a <_ZN13try_float_seq4sortENS_3ArrEm+0x34a>
    2287:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    228c:	49 89 c3             	mov    %rax,%r11
    228f:	c5 fa 10 40 fc       	vmovss -0x4(%rax),%xmm0
    2294:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    2298:	77 c9                	ja     2263 <_ZN13try_float_seq4sortENS_3ArrEm+0x313>
    229a:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    229f:	48 ff c5             	inc    %rbp
    22a2:	49 83 c7 04          	add    $0x4,%r15
    22a6:	48 83 fd 0f          	cmp    $0xf,%rbp
    22aa:	0f 82 53 ff ff ff    	jb     2203 <_ZN13try_float_seq4sortENS_3ArrEm+0x2b3>
    22b0:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
    22b5:	49 89 d9             	mov    %rbx,%r9
    22b8:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    22bd:	4c 89 e8             	mov    %r13,%rax
    22c0:	33 d2                	xor    %edx,%edx
    22c2:	49 3b c1             	cmp    %r9,%rax
    22c5:	0f 84 9f fc ff ff    	je     1f6a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    22cb:	4c 89 c9             	mov    %r9,%rcx
    22ce:	48 2b c8             	sub    %rax,%rcx
    22d1:	48 83 c1 03          	add    $0x3,%rcx
    22d5:	48 d1 f9             	sar    %rcx
    22d8:	48 c1 e9 3e          	shr    $0x3e,%rcx
    22dc:	4c 03 c9             	add    %rcx,%r9
    22df:	4c 2b c8             	sub    %rax,%r9
    22e2:	49 83 c1 03          	add    $0x3,%r9
    22e6:	49 c1 f9 02          	sar    $0x2,%r9
    22ea:	c5 fa 10 0c 90       	vmovss (%rax,%rdx,4),%xmm1
    22ef:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
    22f3:	c5 fa 10 44 94 7c    	vmovss 0x7c(%rsp,%rdx,4),%xmm0
    22f9:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    22fd:	76 3d                	jbe    233c <_ZN13try_float_seq4sortENS_3ArrEm+0x3ec>
    22ff:	33 f6                	xor    %esi,%esi
    2301:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
    2305:	48 ff c6             	inc    %rsi
    2308:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
    230c:	4c 8d 04 f5 00 00 00 	lea    0x0(,%rsi,8),%r8
    2313:	00 
    2314:	49 f7 d8             	neg    %r8
    2317:	4c 03 c1             	add    %rcx,%r8
    231a:	c4 c1 7a 10 00       	vmovss (%r8),%xmm0
    231f:	49 8d 78 04          	lea    0x4(%r8),%rdi
    2323:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    2327:	76 13                	jbe    233c <_ZN13try_float_seq4sortENS_3ArrEm+0x3ec>
    2329:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
    232d:	4c 89 c7             	mov    %r8,%rdi
    2330:	c4 c1 7a 10 40 fc    	vmovss -0x4(%r8),%xmm0
    2336:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    233a:	77 c9                	ja     2305 <_ZN13try_float_seq4sortENS_3ArrEm+0x3b5>
    233c:	0f 1f 40 00          	nopl   0x0(%rax)
    2340:	48 ff c2             	inc    %rdx
    2343:	c5 fa 11 0f          	vmovss %xmm1,(%rdi)
    2347:	49 3b d1             	cmp    %r9,%rdx
    234a:	72 9e                	jb     22ea <_ZN13try_float_seq4sortENS_3ArrEm+0x39a>
    234c:	e9 19 fc ff ff       	jmpq   1f6a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    2351:	4d 89 e9             	mov    %r13,%r9
    2354:	4d 89 f2             	mov    %r14,%r10
    2357:	48 83 f8 02          	cmp    $0x2,%rax
    235b:	7d 0f                	jge    236c <_ZN13try_float_seq4sortENS_3ArrEm+0x41c>
    235d:	48 83 f8 01          	cmp    $0x1,%rax
    2361:	0f 8f 6d 02 00 00    	jg     25d4 <_ZN13try_float_seq4sortENS_3ArrEm+0x684>
    2367:	e9 61 fe ff ff       	jmpq   21cd <_ZN13try_float_seq4sortENS_3ArrEm+0x27d>
    236c:	48 8d 78 fe          	lea    -0x2(%rax),%rdi
    2370:	48 c1 ef 3f          	shr    $0x3f,%rdi
    2374:	33 d2                	xor    %edx,%edx
    2376:	48 85 c0             	test   %rax,%rax
    2379:	0f 9e c2             	setle  %dl
    237c:	4c 8d 44 38 fe       	lea    -0x2(%rax,%rdi,1),%r8
    2381:	49 d1 f8             	sar    %r8
    2384:	48 8d 4c 10 ff       	lea    -0x1(%rax,%rdx,1),%rcx
    2389:	48 83 e0 01          	and    $0x1,%rax
    238d:	48 d1 f9             	sar    %rcx
    2390:	4a 8d 7c 84 40       	lea    0x40(%rsp,%r8,4),%rdi
    2395:	4c 89 c2             	mov    %r8,%rdx
    2398:	49 ff c8             	dec    %r8
    239b:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
    239f:	c5 fa 10 47 04       	vmovss 0x4(%rdi),%xmm0
    23a4:	4d 8d 60 01          	lea    0x1(%r8),%r12
    23a8:	4d 89 e5             	mov    %r12,%r13
    23ab:	4d 89 e3             	mov    %r12,%r11
    23ae:	4c 3b e1             	cmp    %rcx,%r12
    23b1:	0f 8d a8 01 00 00    	jge    255f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    23b7:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    23be:	00 
    23bf:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    23c4:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    23ca:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    23cf:	76 08                	jbe    23d9 <_ZN13try_float_seq4sortENS_3ArrEm+0x489>
    23d1:	49 ff cb             	dec    %r11
    23d4:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    23d9:	45 8b 36             	mov    (%r14),%r14d
    23dc:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    23e1:	4d 89 dd             	mov    %r11,%r13
    23e4:	4c 3b d9             	cmp    %rcx,%r11
    23e7:	0f 8d 72 01 00 00    	jge    255f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    23ed:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    23f4:	00 
    23f5:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    23fa:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    2400:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    2405:	76 08                	jbe    240f <_ZN13try_float_seq4sortENS_3ArrEm+0x4bf>
    2407:	49 ff cb             	dec    %r11
    240a:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    240f:	45 8b 36             	mov    (%r14),%r14d
    2412:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    2417:	4d 89 dd             	mov    %r11,%r13
    241a:	4c 3b d9             	cmp    %rcx,%r11
    241d:	0f 8d 3c 01 00 00    	jge    255f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    2423:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    242a:	00 
    242b:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2430:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    2436:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    243b:	76 08                	jbe    2445 <_ZN13try_float_seq4sortENS_3ArrEm+0x4f5>
    243d:	49 ff cb             	dec    %r11
    2440:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2445:	45 8b 36             	mov    (%r14),%r14d
    2448:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    244d:	4d 89 dd             	mov    %r11,%r13
    2450:	4c 3b d9             	cmp    %rcx,%r11
    2453:	0f 8d 06 01 00 00    	jge    255f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    2459:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    2460:	00 
    2461:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2466:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    246c:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    2471:	76 08                	jbe    247b <_ZN13try_float_seq4sortENS_3ArrEm+0x52b>
    2473:	49 ff cb             	dec    %r11
    2476:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    247b:	45 8b 36             	mov    (%r14),%r14d
    247e:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    2483:	4d 89 dd             	mov    %r11,%r13
    2486:	4c 3b d9             	cmp    %rcx,%r11
    2489:	0f 8d d0 00 00 00    	jge    255f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    248f:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    2496:	00 
    2497:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    249c:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    24a2:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    24a7:	76 08                	jbe    24b1 <_ZN13try_float_seq4sortENS_3ArrEm+0x561>
    24a9:	49 ff cb             	dec    %r11
    24ac:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    24b1:	45 8b 36             	mov    (%r14),%r14d
    24b4:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    24b9:	4d 89 dd             	mov    %r11,%r13
    24bc:	4c 3b d9             	cmp    %rcx,%r11
    24bf:	0f 8d 9a 00 00 00    	jge    255f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    24c5:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    24cc:	00 
    24cd:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    24d2:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    24d8:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    24dd:	76 08                	jbe    24e7 <_ZN13try_float_seq4sortENS_3ArrEm+0x597>
    24df:	49 ff cb             	dec    %r11
    24e2:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    24e7:	45 8b 36             	mov    (%r14),%r14d
    24ea:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    24ef:	4d 89 dd             	mov    %r11,%r13
    24f2:	4c 3b d9             	cmp    %rcx,%r11
    24f5:	7d 68                	jge    255f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    24f7:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    24fe:	00 
    24ff:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2504:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    250a:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    250f:	76 08                	jbe    2519 <_ZN13try_float_seq4sortENS_3ArrEm+0x5c9>
    2511:	49 ff cb             	dec    %r11
    2514:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2519:	45 8b 36             	mov    (%r14),%r14d
    251c:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    2521:	4d 89 dd             	mov    %r11,%r13
    2524:	4c 3b d9             	cmp    %rcx,%r11
    2527:	7d 36                	jge    255f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    2529:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    2530:	00 
    2531:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2536:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    253c:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    2541:	76 08                	jbe    254b <_ZN13try_float_seq4sortENS_3ArrEm+0x5fb>
    2543:	49 ff cb             	dec    %r11
    2546:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    254b:	45 8b 36             	mov    (%r14),%r14d
    254e:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    2553:	4d 89 dd             	mov    %r11,%r13
    2556:	4c 3b d9             	cmp    %rcx,%r11
    2559:	0f 8c 58 fe ff ff    	jl     23b7 <_ZN13try_float_seq4sortENS_3ArrEm+0x467>
    255f:	48 85 c0             	test   %rax,%rax
    2562:	75 1b                	jne    257f <_ZN13try_float_seq4sortENS_3ArrEm+0x62f>
    2564:	4c 3b da             	cmp    %rdx,%r11
    2567:	75 16                	jne    257f <_ZN13try_float_seq4sortENS_3ArrEm+0x62f>
    2569:	4e 8d 34 5d 02 00 00 	lea    0x2(,%r11,2),%r14
    2570:	00 
    2571:	46 8b 5c b4 3c       	mov    0x3c(%rsp,%r14,4),%r11d
    2576:	46 89 5c ac 40       	mov    %r11d,0x40(%rsp,%r13,4)
    257b:	4d 8d 6e ff          	lea    -0x1(%r14),%r13
    257f:	4d 8d 5d ff          	lea    -0x1(%r13),%r11
    2583:	49 c1 eb 3f          	shr    $0x3f,%r11
    2587:	4f 8d 5c 1d ff       	lea    -0x1(%r13,%r11,1),%r11
    258c:	49 d1 fb             	sar    %r11
    258f:	4d 3b ec             	cmp    %r12,%r13
    2592:	7e 2c                	jle    25c0 <_ZN13try_float_seq4sortENS_3ArrEm+0x670>
    2594:	c4 a1 7a 10 4c 9c 40 	vmovss 0x40(%rsp,%r11,4),%xmm1
    259b:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    259f:	76 1f                	jbe    25c0 <_ZN13try_float_seq4sortENS_3ArrEm+0x670>
    25a1:	c4 a1 7a 11 4c ac 40 	vmovss %xmm1,0x40(%rsp,%r13,4)
    25a8:	4d 8d 73 ff          	lea    -0x1(%r11),%r14
    25ac:	49 c1 ee 3f          	shr    $0x3f,%r14
    25b0:	4d 89 dd             	mov    %r11,%r13
    25b3:	4f 8d 5c 33 ff       	lea    -0x1(%r11,%r14,1),%r11
    25b8:	49 d1 fb             	sar    %r11
    25bb:	4d 3b ec             	cmp    %r12,%r13
    25be:	7f d4                	jg     2594 <_ZN13try_float_seq4sortENS_3ArrEm+0x644>
    25c0:	0f 1f 00             	nopl   (%rax)
    25c3:	c4 a1 7a 11 44 ac 40 	vmovss %xmm0,0x40(%rsp,%r13,4)
    25ca:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
    25ce:	0f 85 c4 fd ff ff    	jne    2398 <_ZN13try_float_seq4sortENS_3ArrEm+0x448>
    25d4:	44 8b 5c 24 40       	mov    0x40(%rsp),%r11d
    25d9:	45 33 c0             	xor    %r8d,%r8d
    25dc:	49 ff c0             	inc    %r8
    25df:	33 ff                	xor    %edi,%edi
    25e1:	33 c0                	xor    %eax,%eax
    25e3:	33 d2                	xor    %edx,%edx
    25e5:	4a 8d 0c 85 00 00 00 	lea    0x0(,%r8,4),%rcx
    25ec:	00 
    25ed:	48 f7 d9             	neg    %rcx
    25f0:	48 03 ce             	add    %rsi,%rcx
    25f3:	c5 fa 10 01          	vmovss (%rcx),%xmm0
    25f7:	44 89 19             	mov    %r11d,(%rcx)
    25fa:	4a 8d 4c 84 40       	lea    0x40(%rsp,%r8,4),%rcx
    25ff:	48 f7 d9             	neg    %rcx
    2602:	48 03 ce             	add    %rsi,%rcx
    2605:	48 c1 f9 02          	sar    $0x2,%rcx
    2609:	48 85 c9             	test   %rcx,%rcx
    260c:	0f 9e c0             	setle  %al
    260f:	48 8d 44 01 ff       	lea    -0x1(%rcx,%rax,1),%rax
    2614:	48 d1 f8             	sar    %rax
    2617:	48 85 c0             	test   %rax,%rax
    261a:	7e 6a                	jle    2686 <_ZN13try_float_seq4sortENS_3ArrEm+0x736>
    261c:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    2623:	00 
    2624:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    2629:	c4 c1 7a 10 4c 24 fc 	vmovss -0x4(%r12),%xmm1
    2630:	c4 c1 78 2f 0c 24    	vcomiss (%r12),%xmm1
    2636:	76 08                	jbe    2640 <_ZN13try_float_seq4sortENS_3ArrEm+0x6f0>
    2638:	48 ff ca             	dec    %rdx
    263b:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    2640:	45 8b 24 24          	mov    (%r12),%r12d
    2644:	44 89 64 bc 40       	mov    %r12d,0x40(%rsp,%rdi,4)
    2649:	48 89 d7             	mov    %rdx,%rdi
    264c:	48 3b d0             	cmp    %rax,%rdx
    264f:	7d 35                	jge    2686 <_ZN13try_float_seq4sortENS_3ArrEm+0x736>
    2651:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    2658:	00 
    2659:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    265e:	c4 c1 7a 10 4c 24 fc 	vmovss -0x4(%r12),%xmm1
    2665:	c4 c1 78 2f 0c 24    	vcomiss (%r12),%xmm1
    266b:	76 08                	jbe    2675 <_ZN13try_float_seq4sortENS_3ArrEm+0x725>
    266d:	48 ff ca             	dec    %rdx
    2670:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    2675:	45 8b 24 24          	mov    (%r12),%r12d
    2679:	44 89 64 bc 40       	mov    %r12d,0x40(%rsp,%rdi,4)
    267e:	48 89 d7             	mov    %rdx,%rdi
    2681:	48 3b d0             	cmp    %rax,%rdx
    2684:	7c 96                	jl     261c <_ZN13try_float_seq4sortENS_3ArrEm+0x6cc>
    2686:	48 f7 c1 01 00 00 00 	test   $0x1,%rcx
    268d:	75 29                	jne    26b8 <_ZN13try_float_seq4sortENS_3ArrEm+0x768>
    268f:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
    2693:	48 c1 e8 3f          	shr    $0x3f,%rax
    2697:	4c 8d 64 01 fe       	lea    -0x2(%rcx,%rax,1),%r12
    269c:	49 d1 fc             	sar    %r12
    269f:	49 3b d4             	cmp    %r12,%rdx
    26a2:	75 14                	jne    26b8 <_ZN13try_float_seq4sortENS_3ArrEm+0x768>
    26a4:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    26ab:	00 
    26ac:	8b 44 94 3c          	mov    0x3c(%rsp,%rdx,4),%eax
    26b0:	89 44 bc 40          	mov    %eax,0x40(%rsp,%rdi,4)
    26b4:	48 8d 7a ff          	lea    -0x1(%rdx),%rdi
    26b8:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    26bc:	48 c1 e8 3f          	shr    $0x3f,%rax
    26c0:	48 8d 44 07 ff       	lea    -0x1(%rdi,%rax,1),%rax
    26c5:	48 d1 f8             	sar    %rax
    26c8:	48 85 ff             	test   %rdi,%rdi
    26cb:	7e 2a                	jle    26f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x7a7>
    26cd:	c5 fa 10 4c 84 40    	vmovss 0x40(%rsp,%rax,4),%xmm1
    26d3:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    26d7:	76 1e                	jbe    26f7 <_ZN13try_float_seq4sortENS_3ArrEm+0x7a7>
    26d9:	c5 fa 11 4c bc 40    	vmovss %xmm1,0x40(%rsp,%rdi,4)
    26df:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    26e3:	48 c1 ea 3f          	shr    $0x3f,%rdx
    26e7:	48 89 c7             	mov    %rax,%rdi
    26ea:	48 8d 44 10 ff       	lea    -0x1(%rax,%rdx,1),%rax
    26ef:	48 d1 f8             	sar    %rax
    26f2:	48 85 ff             	test   %rdi,%rdi
    26f5:	7f d6                	jg     26cd <_ZN13try_float_seq4sortENS_3ArrEm+0x77d>
    26f7:	0f 1f 40 00          	nopl   0x0(%rax)
    26fb:	c5 fa 11 44 bc 40    	vmovss %xmm0,0x40(%rsp,%rdi,4)
    2701:	48 83 f9 01          	cmp    $0x1,%rcx
    2705:	0f 8f d1 fe ff ff    	jg     25dc <_ZN13try_float_seq4sortENS_3ArrEm+0x68c>
    270b:	e9 bd fa ff ff       	jmpq   21cd <_ZN13try_float_seq4sortENS_3ArrEm+0x27d>
    2710:	4d 3b d1             	cmp    %r9,%r10
    2713:	0f 84 51 f8 ff ff    	je     1f6a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    2719:	33 d2                	xor    %edx,%edx
    271b:	48 8d 4c 24 44       	lea    0x44(%rsp),%rcx
    2720:	33 c0                	xor    %eax,%eax
    2722:	49 3b c9             	cmp    %r9,%rcx
    2725:	0f 84 3f f8 ff ff    	je     1f6a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    272b:	4c 89 ce             	mov    %r9,%rsi
    272e:	49 89 c4             	mov    %rax,%r12
    2731:	48 2b f1             	sub    %rcx,%rsi
    2734:	49 89 d5             	mov    %rdx,%r13
    2737:	48 83 c6 03          	add    $0x3,%rsi
    273b:	49 89 ce             	mov    %rcx,%r14
    273e:	48 d1 fe             	sar    %rsi
    2741:	4d 89 d7             	mov    %r10,%r15
    2744:	48 c1 ee 3e          	shr    $0x3e,%rsi
    2748:	4c 03 ce             	add    %rsi,%r9
    274b:	4c 2b c9             	sub    %rcx,%r9
    274e:	49 83 c1 03          	add    $0x3,%r9
    2752:	49 c1 f9 02          	sar    $0x2,%r9
    2756:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    275b:	4c 89 cb             	mov    %r9,%rbx
    275e:	c4 81 7a 10 0c 34    	vmovss (%r12,%r14,1),%xmm1
    2764:	c5 fa 10 44 24 40    	vmovss 0x40(%rsp),%xmm0
    276a:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    276e:	76 37                	jbe    27a7 <_ZN13try_float_seq4sortENS_3ArrEm+0x857>
    2770:	49 8d 54 24 04       	lea    0x4(%r12),%rdx
    2775:	48 c1 fa 02          	sar    $0x2,%rdx
    2779:	48 85 d2             	test   %rdx,%rdx
    277c:	74 21                	je     279f <_ZN13try_float_seq4sortENS_3ArrEm+0x84f>
    277e:	48 c1 e2 02          	shl    $0x2,%rdx
    2782:	4d 89 f0             	mov    %r14,%r8
    2785:	4c 2b c2             	sub    %rdx,%r8
    2788:	4c 89 fe             	mov    %r15,%rsi
    278b:	c5 fa 11 0c 24       	vmovss %xmm1,(%rsp)
    2790:	4b 8d 7c 04 04       	lea    0x4(%r12,%r8,1),%rdi
    2795:	e8 00 00 00 00       	callq  279a <_ZN13try_float_seq4sortENS_3ArrEm+0x84a>
    279a:	c5 fa 10 0c 24       	vmovss (%rsp),%xmm1
    279f:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
    27a5:	eb 54                	jmp    27fb <_ZN13try_float_seq4sortENS_3ArrEm+0x8ab>
    27a7:	c4 a1 7a 10 44 24 40 	vmovss 0x40(%rsp,%r12,1),%xmm0
    27ae:	4f 8d 1c 26          	lea    (%r14,%r12,1),%r11
    27b2:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    27b6:	76 3e                	jbe    27f6 <_ZN13try_float_seq4sortENS_3ArrEm+0x8a6>
    27b8:	45 33 c0             	xor    %r8d,%r8d
    27bb:	4b 8d 3c 26          	lea    (%r14,%r12,1),%rdi
    27bf:	49 ff c0             	inc    %r8
    27c2:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    27c7:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
    27ce:	00 
    27cf:	48 f7 d8             	neg    %rax
    27d2:	48 03 c7             	add    %rdi,%rax
    27d5:	c5 fa 10 00          	vmovss (%rax),%xmm0
    27d9:	4c 8d 58 04          	lea    0x4(%rax),%r11
    27dd:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    27e1:	76 13                	jbe    27f6 <_ZN13try_float_seq4sortENS_3ArrEm+0x8a6>
    27e3:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    27e8:	49 89 c3             	mov    %rax,%r11
    27eb:	c5 fa 10 40 fc       	vmovss -0x4(%rax),%xmm0
    27f0:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    27f4:	77 c9                	ja     27bf <_ZN13try_float_seq4sortENS_3ArrEm+0x86f>
    27f6:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    27fb:	49 ff c5             	inc    %r13
    27fe:	49 83 c4 04          	add    $0x4,%r12
    2802:	4c 3b eb             	cmp    %rbx,%r13
    2805:	0f 82 53 ff ff ff    	jb     275e <_ZN13try_float_seq4sortENS_3ArrEm+0x80e>
    280b:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    2810:	e9 55 f7 ff ff       	jmpq   1f6a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    2815:	0f 1f 40 00          	nopl   0x0(%rax)
    2819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002820 <_ZN13try_float_seq4fillENS_3ArrEm>:
    2820:	55                   	push   %rbp
    2821:	48 89 e5             	mov    %rsp,%rbp
    2824:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    2828:	48 89 fa             	mov    %rdi,%rdx
    282b:	48 85 d2             	test   %rdx,%rdx
    282e:	76 15                	jbe    2845 <_ZN13try_float_seq4fillENS_3ArrEm+0x25>
    2830:	48 83 fa 18          	cmp    $0x18,%rdx
    2834:	7e 17                	jle    284d <_ZN13try_float_seq4fillENS_3ArrEm+0x2d>
    2836:	48 c1 e2 02          	shl    $0x2,%rdx
    283a:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    283e:	33 f6                	xor    %esi,%esi
    2840:	e8 00 00 00 00       	callq  2845 <_ZN13try_float_seq4fillENS_3ArrEm+0x25>
    2845:	c5 f8 77             	vzeroupper 
    2848:	48 89 ec             	mov    %rbp,%rsp
    284b:	5d                   	pop    %rbp
    284c:	c3                   	retq   
    284d:	48 83 fa 08          	cmp    $0x8,%rdx
    2851:	7c 31                	jl     2884 <_ZN13try_float_seq4fillENS_3ArrEm+0x64>
    2853:	48 89 d0             	mov    %rdx,%rax
    2856:	33 c9                	xor    %ecx,%ecx
    2858:	c5 fc 57 c0          	vxorps %ymm0,%ymm0,%ymm0
    285c:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    2860:	c5 fc 11 44 8d 10    	vmovups %ymm0,0x10(%rbp,%rcx,4)
    2866:	48 83 c1 08          	add    $0x8,%rcx
    286a:	48 3b c8             	cmp    %rax,%rcx
    286d:	72 f1                	jb     2860 <_ZN13try_float_seq4fillENS_3ArrEm+0x40>
    286f:	48 3b c2             	cmp    %rdx,%rax
    2872:	73 d1                	jae    2845 <_ZN13try_float_seq4fillENS_3ArrEm+0x25>
    2874:	33 c9                	xor    %ecx,%ecx
    2876:	89 4c 85 10          	mov    %ecx,0x10(%rbp,%rax,4)
    287a:	48 ff c0             	inc    %rax
    287d:	48 3b c2             	cmp    %rdx,%rax
    2880:	72 f4                	jb     2876 <_ZN13try_float_seq4fillENS_3ArrEm+0x56>
    2882:	eb c1                	jmp    2845 <_ZN13try_float_seq4fillENS_3ArrEm+0x25>
    2884:	33 c0                	xor    %eax,%eax
    2886:	eb e7                	jmp    286f <_ZN13try_float_seq4fillENS_3ArrEm+0x4f>
    2888:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    288f:	00 

0000000000002890 <_ZN13try_float_seq9transformENS_3ArrES0_m>:
    2890:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    2895:	48 8d 04 b9          	lea    (%rcx,%rdi,4),%rax
    2899:	48 3b c8             	cmp    %rax,%rcx
    289c:	0f 84 1b 01 00 00    	je     29bd <_ZN13try_float_seq9transformENS_3ArrES0_m+0x12d>
    28a2:	48 89 c2             	mov    %rax,%rdx
    28a5:	48 2b d1             	sub    %rcx,%rdx
    28a8:	48 83 c2 03          	add    $0x3,%rdx
    28ac:	48 d1 fa             	sar    %rdx
    28af:	48 c1 ea 3e          	shr    $0x3e,%rdx
    28b3:	48 03 c2             	add    %rdx,%rax
    28b6:	48 2b c1             	sub    %rcx,%rax
    28b9:	48 83 c0 03          	add    $0x3,%rax
    28bd:	48 c1 f8 02          	sar    $0x2,%rax
    28c1:	48 83 f8 10          	cmp    $0x10,%rax
    28c5:	0f 8c 8e 00 00 00    	jl     2959 <_ZN13try_float_seq9transformENS_3ArrES0_m+0xc9>
    28cb:	48 83 f8 1d          	cmp    $0x1d,%rax
    28cf:	0f 8c ec 00 00 00    	jl     29c1 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x131>
    28d5:	48 83 e1 1f          	and    $0x1f,%rcx
    28d9:	74 0b                	je     28e6 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x56>
    28db:	48 f7 d9             	neg    %rcx
    28de:	48 83 c1 20          	add    $0x20,%rcx
    28e2:	48 c1 e9 02          	shr    $0x2,%rcx
    28e6:	48 8d 51 10          	lea    0x10(%rcx),%rdx
    28ea:	48 3b c2             	cmp    %rdx,%rax
    28ed:	7c 6a                	jl     2959 <_ZN13try_float_seq9transformENS_3ArrES0_m+0xc9>
    28ef:	48 89 c7             	mov    %rax,%rdi
    28f2:	33 d2                	xor    %edx,%edx
    28f4:	48 2b f9             	sub    %rcx,%rdi
    28f7:	48 83 e7 0f          	and    $0xf,%rdi
    28fb:	48 f7 df             	neg    %rdi
    28fe:	48 03 f8             	add    %rax,%rdi
    2901:	48 85 c9             	test   %rcx,%rcx
    2904:	76 1e                	jbe    2924 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x94>
    2906:	c5 fa 2c 74 94 08    	vcvttss2si 0x8(%rsp,%rdx,4),%esi
    290c:	03 f6                	add    %esi,%esi
    290e:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2912:	c5 fa 2a c6          	vcvtsi2ss %esi,%xmm0,%xmm0
    2916:	c5 fa 11 44 94 08    	vmovss %xmm0,0x8(%rsp,%rdx,4)
    291c:	48 ff c2             	inc    %rdx
    291f:	48 3b d1             	cmp    %rcx,%rdx
    2922:	72 e2                	jb     2906 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x76>
    2924:	c5 fe 5b 44 8c 08    	vcvttps2dq 0x8(%rsp,%rcx,4),%ymm0
    292a:	c5 fe 5b 5c 8c 28    	vcvttps2dq 0x28(%rsp,%rcx,4),%ymm3
    2930:	c5 f5 72 f0 01       	vpslld $0x1,%ymm0,%ymm1
    2935:	c5 dd 72 f3 01       	vpslld $0x1,%ymm3,%ymm4
    293a:	c5 fc 5b d1          	vcvtdq2ps %ymm1,%ymm2
    293e:	c5 fc 5b ec          	vcvtdq2ps %ymm4,%ymm5
    2942:	c5 fc 11 54 8c 08    	vmovups %ymm2,0x8(%rsp,%rcx,4)
    2948:	c5 fc 11 6c 8c 28    	vmovups %ymm5,0x28(%rsp,%rcx,4)
    294e:	48 83 c1 10          	add    $0x10,%rcx
    2952:	48 3b cf             	cmp    %rdi,%rcx
    2955:	72 cd                	jb     2924 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x94>
    2957:	eb 02                	jmp    295b <_ZN13try_float_seq9transformENS_3ArrES0_m+0xcb>
    2959:	33 ff                	xor    %edi,%edi
    295b:	48 8d 57 01          	lea    0x1(%rdi),%rdx
    295f:	48 3b d0             	cmp    %rax,%rdx
    2962:	77 59                	ja     29bd <_ZN13try_float_seq9transformENS_3ArrES0_m+0x12d>
    2964:	48 2b c7             	sub    %rdi,%rax
    2967:	48 83 f8 04          	cmp    $0x4,%rax
    296b:	7c 62                	jl     29cf <_ZN13try_float_seq9transformENS_3ArrES0_m+0x13f>
    296d:	48 89 c6             	mov    %rax,%rsi
    2970:	33 c9                	xor    %ecx,%ecx
    2972:	48 83 e6 fc          	and    $0xfffffffffffffffc,%rsi
    2976:	48 8d 54 bc 08       	lea    0x8(%rsp,%rdi,4),%rdx
    297b:	c5 fa 5b 04 8a       	vcvttps2dq (%rdx,%rcx,4),%xmm0
    2980:	c5 f1 72 f0 01       	vpslld $0x1,%xmm0,%xmm1
    2985:	c5 f8 5b d1          	vcvtdq2ps %xmm1,%xmm2
    2989:	c5 f8 11 14 8a       	vmovups %xmm2,(%rdx,%rcx,4)
    298e:	48 83 c1 04          	add    $0x4,%rcx
    2992:	48 3b ce             	cmp    %rsi,%rcx
    2995:	72 e4                	jb     297b <_ZN13try_float_seq9transformENS_3ArrES0_m+0xeb>
    2997:	48 3b f0             	cmp    %rax,%rsi
    299a:	73 21                	jae    29bd <_ZN13try_float_seq9transformENS_3ArrES0_m+0x12d>
    299c:	48 8d 54 bc 08       	lea    0x8(%rsp,%rdi,4),%rdx
    29a1:	c5 fa 2c 0c b2       	vcvttss2si (%rdx,%rsi,4),%ecx
    29a6:	03 c9                	add    %ecx,%ecx
    29a8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    29ac:	c5 fa 2a c1          	vcvtsi2ss %ecx,%xmm0,%xmm0
    29b0:	c5 fa 11 04 b2       	vmovss %xmm0,(%rdx,%rsi,4)
    29b5:	48 ff c6             	inc    %rsi
    29b8:	48 3b f0             	cmp    %rax,%rsi
    29bb:	72 e4                	jb     29a1 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x111>
    29bd:	c5 f8 77             	vzeroupper 
    29c0:	c3                   	retq   
    29c1:	48 89 c7             	mov    %rax,%rdi
    29c4:	33 c9                	xor    %ecx,%ecx
    29c6:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
    29ca:	e9 55 ff ff ff       	jmpq   2924 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x94>
    29cf:	33 f6                	xor    %esi,%esi
    29d1:	eb c4                	jmp    2997 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x107>
    29d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    29d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    29df:	00 

00000000000029e0 <_ZN13try_float_seq11transform32ENS_3ArrES0_m>:
    29e0:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    29e5:	48 c1 e7 05          	shl    $0x5,%rdi
    29e9:	48 03 fa             	add    %rdx,%rdi
    29ec:	48 3b d7             	cmp    %rdi,%rdx
    29ef:	0f 84 1b 01 00 00    	je     2b10 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x130>
    29f5:	48 89 f8             	mov    %rdi,%rax
    29f8:	48 2b c2             	sub    %rdx,%rax
    29fb:	48 83 c0 03          	add    $0x3,%rax
    29ff:	48 d1 f8             	sar    %rax
    2a02:	48 c1 e8 3e          	shr    $0x3e,%rax
    2a06:	48 03 f8             	add    %rax,%rdi
    2a09:	48 2b fa             	sub    %rdx,%rdi
    2a0c:	48 83 c7 03          	add    $0x3,%rdi
    2a10:	48 c1 ff 02          	sar    $0x2,%rdi
    2a14:	48 83 ff 10          	cmp    $0x10,%rdi
    2a18:	0f 8c 8e 00 00 00    	jl     2aac <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0xcc>
    2a1e:	48 83 ff 1d          	cmp    $0x1d,%rdi
    2a22:	0f 8c ec 00 00 00    	jl     2b14 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x134>
    2a28:	48 83 e2 1f          	and    $0x1f,%rdx
    2a2c:	74 0b                	je     2a39 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x59>
    2a2e:	48 f7 da             	neg    %rdx
    2a31:	48 83 c2 20          	add    $0x20,%rdx
    2a35:	48 c1 ea 02          	shr    $0x2,%rdx
    2a39:	48 8d 42 10          	lea    0x10(%rdx),%rax
    2a3d:	48 3b f8             	cmp    %rax,%rdi
    2a40:	7c 6a                	jl     2aac <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0xcc>
    2a42:	48 89 fe             	mov    %rdi,%rsi
    2a45:	33 c0                	xor    %eax,%eax
    2a47:	48 2b f2             	sub    %rdx,%rsi
    2a4a:	48 83 e6 0f          	and    $0xf,%rsi
    2a4e:	48 f7 de             	neg    %rsi
    2a51:	48 03 f7             	add    %rdi,%rsi
    2a54:	48 85 d2             	test   %rdx,%rdx
    2a57:	76 1e                	jbe    2a77 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x97>
    2a59:	c5 fa 2c 4c 84 08    	vcvttss2si 0x8(%rsp,%rax,4),%ecx
    2a5f:	03 c9                	add    %ecx,%ecx
    2a61:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2a65:	c5 fa 2a c1          	vcvtsi2ss %ecx,%xmm0,%xmm0
    2a69:	c5 fa 11 44 84 08    	vmovss %xmm0,0x8(%rsp,%rax,4)
    2a6f:	48 ff c0             	inc    %rax
    2a72:	48 3b c2             	cmp    %rdx,%rax
    2a75:	72 e2                	jb     2a59 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x79>
    2a77:	c5 fe 5b 44 94 08    	vcvttps2dq 0x8(%rsp,%rdx,4),%ymm0
    2a7d:	c5 fe 5b 5c 94 28    	vcvttps2dq 0x28(%rsp,%rdx,4),%ymm3
    2a83:	c5 f5 72 f0 01       	vpslld $0x1,%ymm0,%ymm1
    2a88:	c5 dd 72 f3 01       	vpslld $0x1,%ymm3,%ymm4
    2a8d:	c5 fc 5b d1          	vcvtdq2ps %ymm1,%ymm2
    2a91:	c5 fc 5b ec          	vcvtdq2ps %ymm4,%ymm5
    2a95:	c5 fc 11 54 94 08    	vmovups %ymm2,0x8(%rsp,%rdx,4)
    2a9b:	c5 fc 11 6c 94 28    	vmovups %ymm5,0x28(%rsp,%rdx,4)
    2aa1:	48 83 c2 10          	add    $0x10,%rdx
    2aa5:	48 3b d6             	cmp    %rsi,%rdx
    2aa8:	72 cd                	jb     2a77 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x97>
    2aaa:	eb 02                	jmp    2aae <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0xce>
    2aac:	33 f6                	xor    %esi,%esi
    2aae:	48 8d 46 01          	lea    0x1(%rsi),%rax
    2ab2:	48 3b c7             	cmp    %rdi,%rax
    2ab5:	77 59                	ja     2b10 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x130>
    2ab7:	48 2b fe             	sub    %rsi,%rdi
    2aba:	48 83 ff 04          	cmp    $0x4,%rdi
    2abe:	7c 62                	jl     2b22 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x142>
    2ac0:	48 89 f9             	mov    %rdi,%rcx
    2ac3:	33 d2                	xor    %edx,%edx
    2ac5:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
    2ac9:	48 8d 44 b4 08       	lea    0x8(%rsp,%rsi,4),%rax
    2ace:	c5 fa 5b 04 90       	vcvttps2dq (%rax,%rdx,4),%xmm0
    2ad3:	c5 f1 72 f0 01       	vpslld $0x1,%xmm0,%xmm1
    2ad8:	c5 f8 5b d1          	vcvtdq2ps %xmm1,%xmm2
    2adc:	c5 f8 11 14 90       	vmovups %xmm2,(%rax,%rdx,4)
    2ae1:	48 83 c2 04          	add    $0x4,%rdx
    2ae5:	48 3b d1             	cmp    %rcx,%rdx
    2ae8:	72 e4                	jb     2ace <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0xee>
    2aea:	48 3b cf             	cmp    %rdi,%rcx
    2aed:	73 21                	jae    2b10 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x130>
    2aef:	48 8d 44 b4 08       	lea    0x8(%rsp,%rsi,4),%rax
    2af4:	c5 fa 2c 14 88       	vcvttss2si (%rax,%rcx,4),%edx
    2af9:	03 d2                	add    %edx,%edx
    2afb:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2aff:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
    2b03:	c5 fa 11 04 88       	vmovss %xmm0,(%rax,%rcx,4)
    2b08:	48 ff c1             	inc    %rcx
    2b0b:	48 3b cf             	cmp    %rdi,%rcx
    2b0e:	72 e4                	jb     2af4 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x114>
    2b10:	c5 f8 77             	vzeroupper 
    2b13:	c3                   	retq   
    2b14:	48 89 fe             	mov    %rdi,%rsi
    2b17:	33 d2                	xor    %edx,%edx
    2b19:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    2b1d:	e9 55 ff ff ff       	jmpq   2a77 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x97>
    2b22:	33 c9                	xor    %ecx,%ecx
    2b24:	eb c4                	jmp    2aea <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x10a>
    2b26:	0f 1f 00             	nopl   (%rax)
    2b29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

Disassembly of section .text._ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_:

0000000000000000 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_>:
   0:	41 56                	push   %r14
   2:	41 57                	push   %r15
   4:	53                   	push   %rbx
   5:	55                   	push   %rbp
   6:	56                   	push   %rsi
   7:	49 89 f9             	mov    %rdi,%r9
   a:	48 89 f0             	mov    %rsi,%rax
   d:	49 2b c1             	sub    %r9,%rax
  10:	48 c1 f8 02          	sar    $0x2,%rax
  14:	48 83 f8 10          	cmp    $0x10,%rax
  18:	0f 8e 2e 01 00 00    	jle    14c <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x14c>
  1e:	49 89 d7             	mov    %rdx,%r15
  21:	49 8d 41 04          	lea    0x4(%r9),%rax
  25:	49 89 c6             	mov    %rax,%r14
  28:	4c 89 cd             	mov    %r9,%rbp
  2b:	48 89 f0             	mov    %rsi,%rax
  2e:	48 2b c5             	sub    %rbp,%rax
  31:	48 c1 f8 02          	sar    $0x2,%rax
  35:	4d 85 ff             	test   %r15,%r15
  38:	0f 84 16 01 00 00    	je     154 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x154>
  3e:	48 89 c1             	mov    %rax,%rcx
  41:	49 ff cf             	dec    %r15
  44:	48 c1 e9 3f          	shr    $0x3f,%rcx
  48:	48 03 c1             	add    %rcx,%rax
  4b:	48 d1 f8             	sar    %rax
  4e:	44 8b 45 04          	mov    0x4(%rbp),%r8d
  52:	8b 5e fc             	mov    -0x4(%rsi),%ebx
  55:	8b 7c 85 00          	mov    0x0(%rbp,%rax,4),%edi
  59:	44 3b c7             	cmp    %edi,%r8d
  5c:	7d 24                	jge    82 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x82>
  5e:	3b fb                	cmp    %ebx,%edi
  60:	7c 29                	jl     8b <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x8b>
  62:	44 3b c3             	cmp    %ebx,%r8d
  65:	7d 0f                	jge    76 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x76>
  67:	8b 4d 00             	mov    0x0(%rbp),%ecx
  6a:	89 5d 00             	mov    %ebx,0x0(%rbp)
  6d:	89 4e fc             	mov    %ecx,-0x4(%rsi)
  70:	44 8b 45 00          	mov    0x0(%rbp),%r8d
  74:	eb 26                	jmp    9c <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x9c>
  76:	8b 4d 00             	mov    0x0(%rbp),%ecx
  79:	44 89 45 00          	mov    %r8d,0x0(%rbp)
  7d:	89 4d 04             	mov    %ecx,0x4(%rbp)
  80:	eb 1a                	jmp    9c <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x9c>
  82:	44 3b c3             	cmp    %ebx,%r8d
  85:	7c ef                	jl     76 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x76>
  87:	3b fb                	cmp    %ebx,%edi
  89:	7c dc                	jl     67 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x67>
  8b:	8b 4d 00             	mov    0x0(%rbp),%ecx
  8e:	48 8d 5c 85 00       	lea    0x0(%rbp,%rax,4),%rbx
  93:	89 7d 00             	mov    %edi,0x0(%rbp)
  96:	89 0b                	mov    %ecx,(%rbx)
  98:	44 8b 45 00          	mov    0x0(%rbp),%r8d
  9c:	4c 89 f3             	mov    %r14,%rbx
  9f:	48 89 f1             	mov    %rsi,%rcx
  a2:	eb 0d                	jmp    b1 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0xb1>
  a4:	44 89 13             	mov    %r10d,(%rbx)
  a7:	48 83 c3 04          	add    $0x4,%rbx
  ab:	89 01                	mov    %eax,(%rcx)
  ad:	44 8b 45 00          	mov    0x0(%rbp),%r8d
  b1:	8b 03                	mov    (%rbx),%eax
  b3:	49 89 db             	mov    %rbx,%r11
  b6:	41 3b c0             	cmp    %r8d,%eax
  b9:	7d 20                	jge    db <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0xdb>
  bb:	45 33 d2             	xor    %r10d,%r10d
  be:	49 ff c2             	inc    %r10
  c1:	4b 8d 14 d3          	lea    (%r11,%r10,8),%rdx
  c5:	8b 42 fc             	mov    -0x4(%rdx),%eax
  c8:	48 8d 5a fc          	lea    -0x4(%rdx),%rbx
  cc:	41 3b c0             	cmp    %r8d,%eax
  cf:	7d 0a                	jge    db <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0xdb>
  d1:	8b 02                	mov    (%rdx),%eax
  d3:	48 89 d3             	mov    %rdx,%rbx
  d6:	41 3b c0             	cmp    %r8d,%eax
  d9:	7c e3                	jl     be <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0xbe>
  db:	48 83 c1 fc          	add    $0xfffffffffffffffc,%rcx
  df:	48 89 ca             	mov    %rcx,%rdx
  e2:	44 8b 11             	mov    (%rcx),%r10d
  e5:	45 3b c2             	cmp    %r10d,%r8d
  e8:	7d 2c                	jge    116 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x116>
  ea:	45 33 db             	xor    %r11d,%r11d
  ed:	49 ff c3             	inc    %r11
  f0:	4a 8d 3c dd 00 00 00 	lea    0x0(,%r11,8),%rdi
  f7:	00 
  f8:	48 f7 df             	neg    %rdi
  fb:	48 03 fa             	add    %rdx,%rdi
  fe:	44 8b 57 04          	mov    0x4(%rdi),%r10d
 102:	48 8d 4f 04          	lea    0x4(%rdi),%rcx
 106:	45 3b c2             	cmp    %r10d,%r8d
 109:	7d 0b                	jge    116 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x116>
 10b:	44 8b 17             	mov    (%rdi),%r10d
 10e:	48 89 f9             	mov    %rdi,%rcx
 111:	45 3b c2             	cmp    %r10d,%r8d
 114:	7c d7                	jl     ed <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0xed>
 116:	48 3b d9             	cmp    %rcx,%rbx
 119:	72 89                	jb     a4 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0xa4>
 11b:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
 11f:	48 89 df             	mov    %rbx,%rdi
 122:	49 89 e0             	mov    %rsp,%r8
 125:	4c 89 fa             	mov    %r15,%rdx
 128:	8a 4c 24 40          	mov    0x40(%rsp),%cl
 12c:	41 88 08             	mov    %cl,(%r8)
 12f:	e8 00 00 00 00       	callq  134 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x134>
 134:	48 83 c4 10          	add    $0x10,%rsp
 138:	48 89 de             	mov    %rbx,%rsi
 13b:	48 2b dd             	sub    %rbp,%rbx
 13e:	48 c1 fb 02          	sar    $0x2,%rbx
 142:	48 83 fb 10          	cmp    $0x10,%rbx
 146:	0f 8f df fe ff ff    	jg     2b <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x2b>
 14c:	59                   	pop    %rcx
 14d:	5d                   	pop    %rbp
 14e:	5b                   	pop    %rbx
 14f:	41 5f                	pop    %r15
 151:	41 5e                	pop    %r14
 153:	c3                   	retq   
 154:	49 89 e9             	mov    %rbp,%r9
 157:	48 83 f8 02          	cmp    $0x2,%rax
 15b:	7d 0f                	jge    16c <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x16c>
 15d:	48 83 f8 01          	cmp    $0x1,%rax
 161:	0f 8f 09 01 00 00    	jg     270 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x270>
 167:	e9 28 03 00 00       	jmpq   494 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x494>
 16c:	48 8d 78 fe          	lea    -0x2(%rax),%rdi
 170:	48 c1 ef 3f          	shr    $0x3f,%rdi
 174:	33 d2                	xor    %edx,%edx
 176:	48 85 c0             	test   %rax,%rax
 179:	0f 9e c2             	setle  %dl
 17c:	4c 8d 44 38 fe       	lea    -0x2(%rax,%rdi,1),%r8
 181:	49 d1 f8             	sar    %r8
 184:	48 8d 4c 10 ff       	lea    -0x1(%rax,%rdx,1),%rcx
 189:	48 83 e0 01          	and    $0x1,%rax
 18d:	48 d1 f9             	sar    %rcx
 190:	4b 8d 3c 81          	lea    (%r9,%r8,4),%rdi
 194:	4c 89 c2             	mov    %r8,%rdx
 197:	49 ff c8             	dec    %r8
 19a:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
 19e:	44 8b 77 04          	mov    0x4(%rdi),%r14d
 1a2:	4d 8d 50 01          	lea    0x1(%r8),%r10
 1a6:	4d 89 d3             	mov    %r10,%r11
 1a9:	4c 89 d3             	mov    %r10,%rbx
 1ac:	4c 3b d1             	cmp    %rcx,%r10
 1af:	7d 52                	jge    203 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x203>
 1b1:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
 1b8:	00 
 1b9:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 1bd:	48 8d 6b ff          	lea    -0x1(%rbx),%rbp
 1c1:	45 3b 7c 99 fc       	cmp    -0x4(%r9,%rbx,4),%r15d
 1c6:	48 0f 4c dd          	cmovl  %rbp,%rbx
 1ca:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 1ce:	47 89 3c 99          	mov    %r15d,(%r9,%r11,4)
 1d2:	49 89 db             	mov    %rbx,%r11
 1d5:	48 3b d9             	cmp    %rcx,%rbx
 1d8:	7d 29                	jge    203 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x203>
 1da:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
 1e1:	00 
 1e2:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 1e6:	48 8d 6b ff          	lea    -0x1(%rbx),%rbp
 1ea:	45 3b 7c 99 fc       	cmp    -0x4(%r9,%rbx,4),%r15d
 1ef:	48 0f 4c dd          	cmovl  %rbp,%rbx
 1f3:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 1f7:	47 89 3c 99          	mov    %r15d,(%r9,%r11,4)
 1fb:	49 89 db             	mov    %rbx,%r11
 1fe:	48 3b d9             	cmp    %rcx,%rbx
 201:	7c ae                	jl     1b1 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x1b1>
 203:	48 85 c0             	test   %rax,%rax
 206:	75 1a                	jne    222 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x222>
 208:	48 3b da             	cmp    %rdx,%rbx
 20b:	75 15                	jne    222 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x222>
 20d:	4c 8d 3c 5d 02 00 00 	lea    0x2(,%rbx,2),%r15
 214:	00 
 215:	43 8b 5c b9 fc       	mov    -0x4(%r9,%r15,4),%ebx
 21a:	43 89 1c 99          	mov    %ebx,(%r9,%r11,4)
 21e:	4d 8d 5f ff          	lea    -0x1(%r15),%r11
 222:	49 8d 5b ff          	lea    -0x1(%r11),%rbx
 226:	48 c1 eb 3f          	shr    $0x3f,%rbx
 22a:	49 8d 5c 1b ff       	lea    -0x1(%r11,%rbx,1),%rbx
 22f:	48 d1 fb             	sar    %rbx
 232:	4d 3b da             	cmp    %r10,%r11
 235:	7e 25                	jle    25c <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x25c>
 237:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 23b:	45 3b fe             	cmp    %r14d,%r15d
 23e:	7d 1c                	jge    25c <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x25c>
 240:	47 89 3c 99          	mov    %r15d,(%r9,%r11,4)
 244:	4c 8d 7b ff          	lea    -0x1(%rbx),%r15
 248:	49 c1 ef 3f          	shr    $0x3f,%r15
 24c:	49 89 db             	mov    %rbx,%r11
 24f:	4a 8d 5c 3b ff       	lea    -0x1(%rbx,%r15,1),%rbx
 254:	48 d1 fb             	sar    %rbx
 257:	4d 3b da             	cmp    %r10,%r11
 25a:	7f db                	jg     237 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x237>
 25c:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 262:	47 89 34 99          	mov    %r14d,(%r9,%r11,4)
 266:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
 26a:	0f 85 27 ff ff ff    	jne    197 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x197>
 270:	45 33 d2             	xor    %r10d,%r10d
 273:	49 ff c2             	inc    %r10
 276:	33 ff                	xor    %edi,%edi
 278:	41 8b 11             	mov    (%r9),%edx
 27b:	33 c0                	xor    %eax,%eax
 27d:	4a 8d 0c 95 00 00 00 	lea    0x0(,%r10,4),%rcx
 284:	00 
 285:	48 f7 d9             	neg    %rcx
 288:	48 03 ce             	add    %rsi,%rcx
 28b:	44 8b 01             	mov    (%rcx),%r8d
 28e:	89 11                	mov    %edx,(%rcx)
 290:	4b 8d 0c 91          	lea    (%r9,%r10,4),%rcx
 294:	48 f7 d9             	neg    %rcx
 297:	33 d2                	xor    %edx,%edx
 299:	48 03 ce             	add    %rsi,%rcx
 29c:	48 c1 f9 02          	sar    $0x2,%rcx
 2a0:	48 85 c9             	test   %rcx,%rcx
 2a3:	0f 9e c0             	setle  %al
 2a6:	48 8d 44 01 ff       	lea    -0x1(%rcx,%rax,1),%rax
 2ab:	48 d1 f8             	sar    %rax
 2ae:	48 85 c0             	test   %rax,%rax
 2b1:	0f 8e 5c 01 00 00    	jle    413 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x413>
 2b7:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 2be:	00 
 2bf:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 2c3:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 2c7:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 2cc:	48 0f 4c d5          	cmovl  %rbp,%rdx
 2d0:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 2d4:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 2d8:	48 89 d7             	mov    %rdx,%rdi
 2db:	48 3b d0             	cmp    %rax,%rdx
 2de:	0f 8d 2f 01 00 00    	jge    413 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x413>
 2e4:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 2eb:	00 
 2ec:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 2f0:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 2f4:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 2f9:	48 0f 4c d5          	cmovl  %rbp,%rdx
 2fd:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 301:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 305:	48 89 d7             	mov    %rdx,%rdi
 308:	48 3b d0             	cmp    %rax,%rdx
 30b:	0f 8d 02 01 00 00    	jge    413 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x413>
 311:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 318:	00 
 319:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 31d:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 321:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 326:	48 0f 4c d5          	cmovl  %rbp,%rdx
 32a:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 32e:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 332:	48 89 d7             	mov    %rdx,%rdi
 335:	48 3b d0             	cmp    %rax,%rdx
 338:	0f 8d d5 00 00 00    	jge    413 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x413>
 33e:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 345:	00 
 346:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 34a:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 34e:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 353:	48 0f 4c d5          	cmovl  %rbp,%rdx
 357:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 35b:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 35f:	48 89 d7             	mov    %rdx,%rdi
 362:	48 3b d0             	cmp    %rax,%rdx
 365:	0f 8d a8 00 00 00    	jge    413 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x413>
 36b:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 372:	00 
 373:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 377:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 37b:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 380:	48 0f 4c d5          	cmovl  %rbp,%rdx
 384:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 388:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 38c:	48 89 d7             	mov    %rdx,%rdi
 38f:	48 3b d0             	cmp    %rax,%rdx
 392:	7d 7f                	jge    413 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x413>
 394:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 39b:	00 
 39c:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3a0:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 3a4:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 3a9:	48 0f 4c d5          	cmovl  %rbp,%rdx
 3ad:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3b1:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 3b5:	48 89 d7             	mov    %rdx,%rdi
 3b8:	48 3b d0             	cmp    %rax,%rdx
 3bb:	7d 56                	jge    413 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x413>
 3bd:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 3c4:	00 
 3c5:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3c9:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 3cd:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 3d2:	48 0f 4c d5          	cmovl  %rbp,%rdx
 3d6:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3da:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 3de:	48 89 d7             	mov    %rdx,%rdi
 3e1:	48 3b d0             	cmp    %rax,%rdx
 3e4:	7d 2d                	jge    413 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x413>
 3e6:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 3ed:	00 
 3ee:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3f2:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 3f6:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 3fb:	48 0f 4c d5          	cmovl  %rbp,%rdx
 3ff:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 403:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 407:	48 89 d7             	mov    %rdx,%rdi
 40a:	48 3b d0             	cmp    %rax,%rdx
 40d:	0f 8c a4 fe ff ff    	jl     2b7 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x2b7>
 413:	48 f7 c1 01 00 00 00 	test   $0x1,%rcx
 41a:	75 2a                	jne    446 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x446>
 41c:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
 420:	48 c1 e8 3f          	shr    $0x3f,%rax
 424:	4c 8d 5c 01 fe       	lea    -0x2(%rcx,%rax,1),%r11
 429:	49 d1 fb             	sar    %r11
 42c:	49 3b d3             	cmp    %r11,%rdx
 42f:	75 15                	jne    446 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x446>
 431:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 438:	00 
 439:	41 8b 44 91 fc       	mov    -0x4(%r9,%rdx,4),%eax
 43e:	41 89 04 b9          	mov    %eax,(%r9,%rdi,4)
 442:	48 8d 7a ff          	lea    -0x1(%rdx),%rdi
 446:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
 44a:	48 c1 e8 3f          	shr    $0x3f,%rax
 44e:	48 8d 44 07 ff       	lea    -0x1(%rdi,%rax,1),%rax
 453:	48 d1 f8             	sar    %rax
 456:	48 85 ff             	test   %rdi,%rdi
 459:	7e 25                	jle    480 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x480>
 45b:	41 8b 14 81          	mov    (%r9,%rax,4),%edx
 45f:	41 3b d0             	cmp    %r8d,%edx
 462:	7d 1c                	jge    480 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x480>
 464:	41 89 14 b9          	mov    %edx,(%r9,%rdi,4)
 468:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
 46c:	48 c1 ea 3f          	shr    $0x3f,%rdx
 470:	48 89 c7             	mov    %rax,%rdi
 473:	48 8d 44 10 ff       	lea    -0x1(%rax,%rdx,1),%rax
 478:	48 d1 f8             	sar    %rax
 47b:	48 85 ff             	test   %rdi,%rdi
 47e:	7f db                	jg     45b <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x45b>
 480:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 486:	45 89 04 b9          	mov    %r8d,(%r9,%rdi,4)
 48a:	48 83 f9 01          	cmp    $0x1,%rcx
 48e:	0f 8f df fd ff ff    	jg     273 <_ZSt16__introsort_loopIPilSt4lessIiEEvT_S3_T0_T1_+0x273>
 494:	59                   	pop    %rcx
 495:	5d                   	pop    %rbp
 496:	5b                   	pop    %rbx
 497:	41 5f                	pop    %r15
 499:	41 5e                	pop    %r14
 49b:	c3                   	retq   
 49c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .text._ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_:

0000000000000000 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_>:
   0:	53                   	push   %rbx
   1:	55                   	push   %rbp
   2:	48 83 ec 18          	sub    $0x18,%rsp
   6:	49 89 f9             	mov    %rdi,%r9
   9:	48 89 f0             	mov    %rsi,%rax
   c:	49 2b c1             	sub    %r9,%rax
   f:	48 c1 f8 02          	sar    $0x2,%rax
  13:	48 83 f8 10          	cmp    $0x10,%rax
  17:	0f 8e 6e 01 00 00    	jle    18b <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x18b>
  1d:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  22:	49 8d 41 04          	lea    0x4(%r9),%rax
  26:	4c 89 2c 24          	mov    %r13,(%rsp)
  2a:	49 89 c5             	mov    %rax,%r13
  2d:	49 89 d4             	mov    %rdx,%r12
  30:	4c 89 cd             	mov    %r9,%rbp
  33:	48 89 f0             	mov    %rsi,%rax
  36:	48 2b c5             	sub    %rbp,%rax
  39:	48 c1 f8 02          	sar    $0x2,%rax
  3d:	4d 85 e4             	test   %r12,%r12
  40:	0f 84 4c 01 00 00    	je     192 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x192>
  46:	48 89 c1             	mov    %rax,%rcx
  49:	49 ff cc             	dec    %r12
  4c:	48 c1 e9 3f          	shr    $0x3f,%rcx
  50:	48 03 c1             	add    %rcx,%rax
  53:	48 d1 f8             	sar    %rax
  56:	c5 fa 10 45 04       	vmovss 0x4(%rbp),%xmm0
  5b:	c5 fa 10 4e fc       	vmovss -0x4(%rsi),%xmm1
  60:	c5 fa 10 54 85 00    	vmovss 0x0(%rbp,%rax,4),%xmm2
  66:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
  6a:	76 2b                	jbe    97 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x97>
  6c:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
  70:	77 31                	ja     a3 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0xa3>
  72:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
  76:	76 12                	jbe    8a <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x8a>
  78:	8b 4d 00             	mov    0x0(%rbp),%ecx
  7b:	c5 fa 11 4d 00       	vmovss %xmm1,0x0(%rbp)
  80:	89 4e fc             	mov    %ecx,-0x4(%rsi)
  83:	c5 fa 10 45 00       	vmovss 0x0(%rbp),%xmm0
  88:	eb 2d                	jmp    b7 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0xb7>
  8a:	8b 4d 00             	mov    0x0(%rbp),%ecx
  8d:	c5 fa 11 45 00       	vmovss %xmm0,0x0(%rbp)
  92:	89 4d 04             	mov    %ecx,0x4(%rbp)
  95:	eb 20                	jmp    b7 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0xb7>
  97:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
  9b:	77 ed                	ja     8a <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x8a>
  9d:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
  a1:	77 d5                	ja     78 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x78>
  a3:	8b 4d 00             	mov    0x0(%rbp),%ecx
  a6:	48 8d 5c 85 00       	lea    0x0(%rbp,%rax,4),%rbx
  ab:	c5 fa 11 55 00       	vmovss %xmm2,0x0(%rbp)
  b0:	89 0b                	mov    %ecx,(%rbx)
  b2:	c5 fa 10 45 00       	vmovss 0x0(%rbp),%xmm0
  b7:	4c 89 eb             	mov    %r13,%rbx
  ba:	48 89 f1             	mov    %rsi,%rcx
  bd:	eb 11                	jmp    d0 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0xd0>
  bf:	c5 fa 11 13          	vmovss %xmm2,(%rbx)
  c3:	48 83 c3 04          	add    $0x4,%rbx
  c7:	c5 fa 11 09          	vmovss %xmm1,(%rcx)
  cb:	c5 fa 10 45 00       	vmovss 0x0(%rbp),%xmm0
  d0:	c5 fa 10 0b          	vmovss (%rbx),%xmm1
  d4:	49 89 da             	mov    %rbx,%r10
  d7:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
  db:	76 28                	jbe    105 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x105>
  dd:	45 33 c0             	xor    %r8d,%r8d
  e0:	49 ff c0             	inc    %r8
  e3:	4f 8d 1c c2          	lea    (%r10,%r8,8),%r11
  e7:	c4 c1 7a 10 4b fc    	vmovss -0x4(%r11),%xmm1
  ed:	49 8d 5b fc          	lea    -0x4(%r11),%rbx
  f1:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
  f5:	76 0e                	jbe    105 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x105>
  f7:	c4 c1 7a 10 0b       	vmovss (%r11),%xmm1
  fc:	4c 89 db             	mov    %r11,%rbx
  ff:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
 103:	77 db                	ja     e0 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0xe0>
 105:	48 83 c1 fc          	add    $0xfffffffffffffffc,%rcx
 109:	49 89 ca             	mov    %rcx,%r10
 10c:	c5 fa 10 11          	vmovss (%rcx),%xmm2
 110:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
 114:	76 32                	jbe    148 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x148>
 116:	45 33 c0             	xor    %r8d,%r8d
 119:	49 ff c0             	inc    %r8
 11c:	4e 8d 1c c5 00 00 00 	lea    0x0(,%r8,8),%r11
 123:	00 
 124:	49 f7 db             	neg    %r11
 127:	4d 03 da             	add    %r10,%r11
 12a:	c4 c1 7a 10 53 04    	vmovss 0x4(%r11),%xmm2
 130:	49 8d 4b 04          	lea    0x4(%r11),%rcx
 134:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
 138:	76 0e                	jbe    148 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x148>
 13a:	c4 c1 7a 10 13       	vmovss (%r11),%xmm2
 13f:	4c 89 d9             	mov    %r11,%rcx
 142:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
 146:	77 d1                	ja     119 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x119>
 148:	48 3b d9             	cmp    %rcx,%rbx
 14b:	0f 82 6e ff ff ff    	jb     bf <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0xbf>
 151:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
 155:	48 89 df             	mov    %rbx,%rdi
 158:	49 89 e0             	mov    %rsp,%r8
 15b:	4c 89 e2             	mov    %r12,%rdx
 15e:	8a 4c 24 40          	mov    0x40(%rsp),%cl
 162:	41 88 08             	mov    %cl,(%r8)
 165:	e8 00 00 00 00       	callq  16a <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x16a>
 16a:	48 83 c4 10          	add    $0x10,%rsp
 16e:	48 89 de             	mov    %rbx,%rsi
 171:	48 2b dd             	sub    %rbp,%rbx
 174:	48 c1 fb 02          	sar    $0x2,%rbx
 178:	48 83 fb 10          	cmp    $0x10,%rbx
 17c:	0f 8f b1 fe ff ff    	jg     33 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x33>
 182:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
 187:	4c 8b 2c 24          	mov    (%rsp),%r13
 18b:	48 83 c4 18          	add    $0x18,%rsp
 18f:	5d                   	pop    %rbp
 190:	5b                   	pop    %rbx
 191:	c3                   	retq   
 192:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
 197:	49 89 e9             	mov    %rbp,%r9
 19a:	4c 8b 2c 24          	mov    (%rsp),%r13
 19e:	48 83 f8 02          	cmp    $0x2,%rax
 1a2:	7d 0f                	jge    1b3 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x1b3>
 1a4:	48 83 f8 01          	cmp    $0x1,%rax
 1a8:	0f 8f 19 01 00 00    	jg     2c7 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x2c7>
 1ae:	e9 6a 03 00 00       	jmpq   51d <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x51d>
 1b3:	48 8d 78 fe          	lea    -0x2(%rax),%rdi
 1b7:	48 c1 ef 3f          	shr    $0x3f,%rdi
 1bb:	33 d2                	xor    %edx,%edx
 1bd:	48 85 c0             	test   %rax,%rax
 1c0:	0f 9e c2             	setle  %dl
 1c3:	4c 8d 44 38 fe       	lea    -0x2(%rax,%rdi,1),%r8
 1c8:	49 d1 f8             	sar    %r8
 1cb:	48 8d 4c 10 ff       	lea    -0x1(%rax,%rdx,1),%rcx
 1d0:	48 83 e0 01          	and    $0x1,%rax
 1d4:	48 d1 f9             	sar    %rcx
 1d7:	4b 8d 3c 81          	lea    (%r9,%r8,4),%rdi
 1db:	4c 89 c2             	mov    %r8,%rdx
 1de:	49 ff c8             	dec    %r8
 1e1:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
 1e5:	c5 fa 10 47 04       	vmovss 0x4(%rdi),%xmm0
 1ea:	4d 8d 50 01          	lea    0x1(%r8),%r10
 1ee:	4d 89 d3             	mov    %r10,%r11
 1f1:	4c 89 d3             	mov    %r10,%rbx
 1f4:	4c 3b d1             	cmp    %rcx,%r10
 1f7:	7d 5c                	jge    255 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x255>
 1f9:	48 8d 2c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbp
 200:	00 
 201:	c4 c1 7a 10 4c a9 fc 	vmovss -0x4(%r9,%rbp,4),%xmm1
 208:	48 8d 5d ff          	lea    -0x1(%rbp),%rbx
 20c:	c4 c1 78 2f 0c a9    	vcomiss (%r9,%rbp,4),%xmm1
 212:	77 03                	ja     217 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x217>
 214:	48 89 eb             	mov    %rbp,%rbx
 217:	41 8b 2c 99          	mov    (%r9,%rbx,4),%ebp
 21b:	43 89 2c 99          	mov    %ebp,(%r9,%r11,4)
 21f:	49 89 db             	mov    %rbx,%r11
 222:	48 3b d9             	cmp    %rcx,%rbx
 225:	7d 2e                	jge    255 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x255>
 227:	48 8d 2c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbp
 22e:	00 
 22f:	c4 c1 7a 10 4c a9 fc 	vmovss -0x4(%r9,%rbp,4),%xmm1
 236:	48 8d 5d ff          	lea    -0x1(%rbp),%rbx
 23a:	c4 c1 78 2f 0c a9    	vcomiss (%r9,%rbp,4),%xmm1
 240:	77 03                	ja     245 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x245>
 242:	48 89 eb             	mov    %rbp,%rbx
 245:	41 8b 2c 99          	mov    (%r9,%rbx,4),%ebp
 249:	43 89 2c 99          	mov    %ebp,(%r9,%r11,4)
 24d:	49 89 db             	mov    %rbx,%r11
 250:	48 3b d9             	cmp    %rcx,%rbx
 253:	7c a4                	jl     1f9 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x1f9>
 255:	48 85 c0             	test   %rax,%rax
 258:	75 1a                	jne    274 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x274>
 25a:	48 3b da             	cmp    %rdx,%rbx
 25d:	75 15                	jne    274 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x274>
 25f:	48 8d 2c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbp
 266:	00 
 267:	41 8b 5c a9 fc       	mov    -0x4(%r9,%rbp,4),%ebx
 26c:	43 89 1c 99          	mov    %ebx,(%r9,%r11,4)
 270:	4c 8d 5d ff          	lea    -0x1(%rbp),%r11
 274:	49 8d 5b ff          	lea    -0x1(%r11),%rbx
 278:	48 c1 eb 3f          	shr    $0x3f,%rbx
 27c:	49 8d 5c 1b ff       	lea    -0x1(%r11,%rbx,1),%rbx
 281:	48 d1 fb             	sar    %rbx
 284:	4d 3b da             	cmp    %r10,%r11
 287:	7e 2a                	jle    2b3 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x2b3>
 289:	c4 c1 7a 10 0c 99    	vmovss (%r9,%rbx,4),%xmm1
 28f:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
 293:	76 1e                	jbe    2b3 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x2b3>
 295:	c4 81 7a 11 0c 99    	vmovss %xmm1,(%r9,%r11,4)
 29b:	48 8d 6b ff          	lea    -0x1(%rbx),%rbp
 29f:	48 c1 ed 3f          	shr    $0x3f,%rbp
 2a3:	49 89 db             	mov    %rbx,%r11
 2a6:	48 8d 5c 2b ff       	lea    -0x1(%rbx,%rbp,1),%rbx
 2ab:	48 d1 fb             	sar    %rbx
 2ae:	4d 3b da             	cmp    %r10,%r11
 2b1:	7f d6                	jg     289 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x289>
 2b3:	0f 1f 40 00          	nopl   0x0(%rax)
 2b7:	c4 81 7a 11 04 99    	vmovss %xmm0,(%r9,%r11,4)
 2bd:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
 2c1:	0f 85 17 ff ff ff    	jne    1de <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x1de>
 2c7:	45 33 c0             	xor    %r8d,%r8d
 2ca:	49 ff c0             	inc    %r8
 2cd:	33 c0                	xor    %eax,%eax
 2cf:	41 8b 11             	mov    (%r9),%edx
 2d2:	4b 8d 3c 81          	lea    (%r9,%r8,4),%rdi
 2d6:	48 f7 df             	neg    %rdi
 2d9:	4a 8d 0c 85 00 00 00 	lea    0x0(,%r8,4),%rcx
 2e0:	00 
 2e1:	48 03 fe             	add    %rsi,%rdi
 2e4:	48 f7 d9             	neg    %rcx
 2e7:	48 c1 ff 02          	sar    $0x2,%rdi
 2eb:	48 03 ce             	add    %rsi,%rcx
 2ee:	48 85 ff             	test   %rdi,%rdi
 2f1:	0f 9e c0             	setle  %al
 2f4:	c5 fa 10 01          	vmovss (%rcx),%xmm0
 2f8:	89 11                	mov    %edx,(%rcx)
 2fa:	33 c9                	xor    %ecx,%ecx
 2fc:	33 d2                	xor    %edx,%edx
 2fe:	48 8d 44 07 ff       	lea    -0x1(%rdi,%rax,1),%rax
 303:	48 d1 f8             	sar    %rax
 306:	48 85 c0             	test   %rax,%rax
 309:	0f 8e 88 01 00 00    	jle    497 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x497>
 30f:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 316:	00 
 317:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 31e:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 322:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 328:	77 03                	ja     32d <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x32d>
 32a:	4c 89 d2             	mov    %r10,%rdx
 32d:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 331:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 335:	48 89 d1             	mov    %rdx,%rcx
 338:	48 3b d0             	cmp    %rax,%rdx
 33b:	0f 8d 56 01 00 00    	jge    497 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x497>
 341:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 348:	00 
 349:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 350:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 354:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 35a:	77 03                	ja     35f <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x35f>
 35c:	4c 89 d2             	mov    %r10,%rdx
 35f:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 363:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 367:	48 89 d1             	mov    %rdx,%rcx
 36a:	48 3b d0             	cmp    %rax,%rdx
 36d:	0f 8d 24 01 00 00    	jge    497 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x497>
 373:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 37a:	00 
 37b:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 382:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 386:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 38c:	77 03                	ja     391 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x391>
 38e:	4c 89 d2             	mov    %r10,%rdx
 391:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 395:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 399:	48 89 d1             	mov    %rdx,%rcx
 39c:	48 3b d0             	cmp    %rax,%rdx
 39f:	0f 8d f2 00 00 00    	jge    497 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x497>
 3a5:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 3ac:	00 
 3ad:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 3b4:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 3b8:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 3be:	77 03                	ja     3c3 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x3c3>
 3c0:	4c 89 d2             	mov    %r10,%rdx
 3c3:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3c7:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 3cb:	48 89 d1             	mov    %rdx,%rcx
 3ce:	48 3b d0             	cmp    %rax,%rdx
 3d1:	0f 8d c0 00 00 00    	jge    497 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x497>
 3d7:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 3de:	00 
 3df:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 3e6:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 3ea:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 3f0:	77 03                	ja     3f5 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x3f5>
 3f2:	4c 89 d2             	mov    %r10,%rdx
 3f5:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3f9:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 3fd:	48 89 d1             	mov    %rdx,%rcx
 400:	48 3b d0             	cmp    %rax,%rdx
 403:	0f 8d 8e 00 00 00    	jge    497 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x497>
 409:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 410:	00 
 411:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 418:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 41c:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 422:	77 03                	ja     427 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x427>
 424:	4c 89 d2             	mov    %r10,%rdx
 427:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 42b:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 42f:	48 89 d1             	mov    %rdx,%rcx
 432:	48 3b d0             	cmp    %rax,%rdx
 435:	7d 60                	jge    497 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x497>
 437:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 43e:	00 
 43f:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 446:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 44a:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 450:	77 03                	ja     455 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x455>
 452:	4c 89 d2             	mov    %r10,%rdx
 455:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 459:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 45d:	48 89 d1             	mov    %rdx,%rcx
 460:	48 3b d0             	cmp    %rax,%rdx
 463:	7d 32                	jge    497 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x497>
 465:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 46c:	00 
 46d:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 474:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 478:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 47e:	77 03                	ja     483 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x483>
 480:	4c 89 d2             	mov    %r10,%rdx
 483:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 487:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 48b:	48 89 d1             	mov    %rdx,%rcx
 48e:	48 3b d0             	cmp    %rax,%rdx
 491:	0f 8c 78 fe ff ff    	jl     30f <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x30f>
 497:	48 f7 c7 01 00 00 00 	test   $0x1,%rdi
 49e:	75 2a                	jne    4ca <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x4ca>
 4a0:	48 8d 47 fe          	lea    -0x2(%rdi),%rax
 4a4:	48 c1 e8 3f          	shr    $0x3f,%rax
 4a8:	4c 8d 54 07 fe       	lea    -0x2(%rdi,%rax,1),%r10
 4ad:	49 d1 fa             	sar    %r10
 4b0:	49 3b d2             	cmp    %r10,%rdx
 4b3:	75 15                	jne    4ca <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x4ca>
 4b5:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 4bc:	00 
 4bd:	41 8b 44 91 fc       	mov    -0x4(%r9,%rdx,4),%eax
 4c2:	41 89 04 89          	mov    %eax,(%r9,%rcx,4)
 4c6:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
 4ca:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
 4ce:	48 c1 e8 3f          	shr    $0x3f,%rax
 4d2:	48 8d 44 01 ff       	lea    -0x1(%rcx,%rax,1),%rax
 4d7:	48 d1 f8             	sar    %rax
 4da:	48 85 c9             	test   %rcx,%rcx
 4dd:	7e 2a                	jle    509 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x509>
 4df:	c4 c1 7a 10 0c 81    	vmovss (%r9,%rax,4),%xmm1
 4e5:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
 4e9:	76 1e                	jbe    509 <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x509>
 4eb:	c4 c1 7a 11 0c 89    	vmovss %xmm1,(%r9,%rcx,4)
 4f1:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
 4f5:	48 c1 ea 3f          	shr    $0x3f,%rdx
 4f9:	48 89 c1             	mov    %rax,%rcx
 4fc:	48 8d 44 10 ff       	lea    -0x1(%rax,%rdx,1),%rax
 501:	48 d1 f8             	sar    %rax
 504:	48 85 c9             	test   %rcx,%rcx
 507:	7f d6                	jg     4df <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x4df>
 509:	0f 1f 40 00          	nopl   0x0(%rax)
 50d:	c4 c1 7a 11 04 89    	vmovss %xmm0,(%r9,%rcx,4)
 513:	48 83 ff 01          	cmp    $0x1,%rdi
 517:	0f 8f ad fd ff ff    	jg     2ca <_ZSt16__introsort_loopIPflSt4lessIfEEvT_S3_T0_T1_+0x2ca>
 51d:	48 83 c4 18          	add    $0x18,%rsp
 521:	5d                   	pop    %rbp
 522:	5b                   	pop    %rbx
 523:	c3                   	retq   
 524:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

Disassembly of section .text._ZSt16__introsort_loopIPilEvT_S1_T0_:

0000000000000000 <_ZSt16__introsort_loopIPilEvT_S1_T0_>:
   0:	41 56                	push   %r14
   2:	41 57                	push   %r15
   4:	53                   	push   %rbx
   5:	55                   	push   %rbp
   6:	56                   	push   %rsi
   7:	49 89 f9             	mov    %rdi,%r9
   a:	48 89 f0             	mov    %rsi,%rax
   d:	49 2b c1             	sub    %r9,%rax
  10:	48 c1 f8 02          	sar    $0x2,%rax
  14:	48 83 f8 10          	cmp    $0x10,%rax
  18:	0f 8e 1e 01 00 00    	jle    13c <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x13c>
  1e:	49 89 d7             	mov    %rdx,%r15
  21:	49 8d 41 04          	lea    0x4(%r9),%rax
  25:	49 89 c6             	mov    %rax,%r14
  28:	4c 89 cd             	mov    %r9,%rbp
  2b:	48 89 f0             	mov    %rsi,%rax
  2e:	48 2b c5             	sub    %rbp,%rax
  31:	48 c1 f8 02          	sar    $0x2,%rax
  35:	4d 85 ff             	test   %r15,%r15
  38:	0f 84 06 01 00 00    	je     144 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x144>
  3e:	48 89 c1             	mov    %rax,%rcx
  41:	49 ff cf             	dec    %r15
  44:	48 c1 e9 3f          	shr    $0x3f,%rcx
  48:	48 03 c1             	add    %rcx,%rax
  4b:	48 d1 f8             	sar    %rax
  4e:	44 8b 45 04          	mov    0x4(%rbp),%r8d
  52:	8b 5e fc             	mov    -0x4(%rsi),%ebx
  55:	8b 7c 85 00          	mov    0x0(%rbp,%rax,4),%edi
  59:	44 3b c7             	cmp    %edi,%r8d
  5c:	7d 2b                	jge    89 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x89>
  5e:	3b fb                	cmp    %ebx,%edi
  60:	7c 14                	jl     76 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x76>
  62:	44 3b c3             	cmp    %ebx,%r8d
  65:	7d 2d                	jge    94 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x94>
  67:	8b 4d 00             	mov    0x0(%rbp),%ecx
  6a:	89 5d 00             	mov    %ebx,0x0(%rbp)
  6d:	89 4e fc             	mov    %ecx,-0x4(%rsi)
  70:	44 8b 45 00          	mov    0x0(%rbp),%r8d
  74:	eb 28                	jmp    9e <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x9e>
  76:	8b 4d 00             	mov    0x0(%rbp),%ecx
  79:	48 8d 5c 85 00       	lea    0x0(%rbp,%rax,4),%rbx
  7e:	89 7d 00             	mov    %edi,0x0(%rbp)
  81:	89 0b                	mov    %ecx,(%rbx)
  83:	44 8b 45 00          	mov    0x0(%rbp),%r8d
  87:	eb 15                	jmp    9e <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x9e>
  89:	44 3b c3             	cmp    %ebx,%r8d
  8c:	7c 06                	jl     94 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x94>
  8e:	3b fb                	cmp    %ebx,%edi
  90:	7c d5                	jl     67 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x67>
  92:	eb e2                	jmp    76 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x76>
  94:	8b 4d 00             	mov    0x0(%rbp),%ecx
  97:	44 89 45 00          	mov    %r8d,0x0(%rbp)
  9b:	89 4d 04             	mov    %ecx,0x4(%rbp)
  9e:	4c 89 f3             	mov    %r14,%rbx
  a1:	48 89 f1             	mov    %rsi,%rcx
  a4:	eb 0d                	jmp    b3 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0xb3>
  a6:	44 89 13             	mov    %r10d,(%rbx)
  a9:	48 83 c3 04          	add    $0x4,%rbx
  ad:	89 01                	mov    %eax,(%rcx)
  af:	44 8b 45 00          	mov    0x0(%rbp),%r8d
  b3:	8b 03                	mov    (%rbx),%eax
  b5:	49 89 db             	mov    %rbx,%r11
  b8:	41 3b c0             	cmp    %r8d,%eax
  bb:	7d 20                	jge    dd <_ZSt16__introsort_loopIPilEvT_S1_T0_+0xdd>
  bd:	45 33 d2             	xor    %r10d,%r10d
  c0:	49 ff c2             	inc    %r10
  c3:	4b 8d 14 d3          	lea    (%r11,%r10,8),%rdx
  c7:	8b 42 fc             	mov    -0x4(%rdx),%eax
  ca:	48 8d 5a fc          	lea    -0x4(%rdx),%rbx
  ce:	41 3b c0             	cmp    %r8d,%eax
  d1:	7d 0a                	jge    dd <_ZSt16__introsort_loopIPilEvT_S1_T0_+0xdd>
  d3:	8b 02                	mov    (%rdx),%eax
  d5:	48 89 d3             	mov    %rdx,%rbx
  d8:	41 3b c0             	cmp    %r8d,%eax
  db:	7c e3                	jl     c0 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0xc0>
  dd:	48 83 c1 fc          	add    $0xfffffffffffffffc,%rcx
  e1:	48 89 ca             	mov    %rcx,%rdx
  e4:	44 8b 11             	mov    (%rcx),%r10d
  e7:	45 3b c2             	cmp    %r10d,%r8d
  ea:	7d 2c                	jge    118 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x118>
  ec:	45 33 db             	xor    %r11d,%r11d
  ef:	49 ff c3             	inc    %r11
  f2:	4a 8d 3c dd 00 00 00 	lea    0x0(,%r11,8),%rdi
  f9:	00 
  fa:	48 f7 df             	neg    %rdi
  fd:	48 03 fa             	add    %rdx,%rdi
 100:	44 8b 57 04          	mov    0x4(%rdi),%r10d
 104:	48 8d 4f 04          	lea    0x4(%rdi),%rcx
 108:	45 3b c2             	cmp    %r10d,%r8d
 10b:	7d 0b                	jge    118 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x118>
 10d:	44 8b 17             	mov    (%rdi),%r10d
 110:	48 89 f9             	mov    %rdi,%rcx
 113:	45 3b c2             	cmp    %r10d,%r8d
 116:	7c d7                	jl     ef <_ZSt16__introsort_loopIPilEvT_S1_T0_+0xef>
 118:	48 3b d9             	cmp    %rcx,%rbx
 11b:	72 89                	jb     a6 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0xa6>
 11d:	48 89 df             	mov    %rbx,%rdi
 120:	4c 89 fa             	mov    %r15,%rdx
 123:	e8 00 00 00 00       	callq  128 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x128>
 128:	48 89 de             	mov    %rbx,%rsi
 12b:	48 2b dd             	sub    %rbp,%rbx
 12e:	48 c1 fb 02          	sar    $0x2,%rbx
 132:	48 83 fb 10          	cmp    $0x10,%rbx
 136:	0f 8f ef fe ff ff    	jg     2b <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x2b>
 13c:	59                   	pop    %rcx
 13d:	5d                   	pop    %rbp
 13e:	5b                   	pop    %rbx
 13f:	41 5f                	pop    %r15
 141:	41 5e                	pop    %r14
 143:	c3                   	retq   
 144:	49 89 e9             	mov    %rbp,%r9
 147:	48 83 f8 02          	cmp    $0x2,%rax
 14b:	7d 0f                	jge    15c <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x15c>
 14d:	48 83 f8 01          	cmp    $0x1,%rax
 151:	0f 8f 09 01 00 00    	jg     260 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x260>
 157:	e9 28 03 00 00       	jmpq   484 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x484>
 15c:	48 8d 78 fe          	lea    -0x2(%rax),%rdi
 160:	48 c1 ef 3f          	shr    $0x3f,%rdi
 164:	33 d2                	xor    %edx,%edx
 166:	48 85 c0             	test   %rax,%rax
 169:	0f 9e c2             	setle  %dl
 16c:	4c 8d 44 38 fe       	lea    -0x2(%rax,%rdi,1),%r8
 171:	49 d1 f8             	sar    %r8
 174:	48 8d 4c 10 ff       	lea    -0x1(%rax,%rdx,1),%rcx
 179:	48 83 e0 01          	and    $0x1,%rax
 17d:	48 d1 f9             	sar    %rcx
 180:	4b 8d 3c 81          	lea    (%r9,%r8,4),%rdi
 184:	4c 89 c2             	mov    %r8,%rdx
 187:	49 ff c8             	dec    %r8
 18a:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
 18e:	44 8b 77 04          	mov    0x4(%rdi),%r14d
 192:	4d 8d 50 01          	lea    0x1(%r8),%r10
 196:	4d 89 d3             	mov    %r10,%r11
 199:	4c 89 d3             	mov    %r10,%rbx
 19c:	4c 3b d1             	cmp    %rcx,%r10
 19f:	7d 52                	jge    1f3 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x1f3>
 1a1:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
 1a8:	00 
 1a9:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 1ad:	48 8d 6b ff          	lea    -0x1(%rbx),%rbp
 1b1:	45 3b 7c 99 fc       	cmp    -0x4(%r9,%rbx,4),%r15d
 1b6:	48 0f 4c dd          	cmovl  %rbp,%rbx
 1ba:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 1be:	47 89 3c 99          	mov    %r15d,(%r9,%r11,4)
 1c2:	49 89 db             	mov    %rbx,%r11
 1c5:	48 3b d9             	cmp    %rcx,%rbx
 1c8:	7d 29                	jge    1f3 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x1f3>
 1ca:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
 1d1:	00 
 1d2:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 1d6:	48 8d 6b ff          	lea    -0x1(%rbx),%rbp
 1da:	45 3b 7c 99 fc       	cmp    -0x4(%r9,%rbx,4),%r15d
 1df:	48 0f 4c dd          	cmovl  %rbp,%rbx
 1e3:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 1e7:	47 89 3c 99          	mov    %r15d,(%r9,%r11,4)
 1eb:	49 89 db             	mov    %rbx,%r11
 1ee:	48 3b d9             	cmp    %rcx,%rbx
 1f1:	7c ae                	jl     1a1 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x1a1>
 1f3:	48 85 c0             	test   %rax,%rax
 1f6:	75 1a                	jne    212 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x212>
 1f8:	48 3b da             	cmp    %rdx,%rbx
 1fb:	75 15                	jne    212 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x212>
 1fd:	4c 8d 3c 5d 02 00 00 	lea    0x2(,%rbx,2),%r15
 204:	00 
 205:	43 8b 5c b9 fc       	mov    -0x4(%r9,%r15,4),%ebx
 20a:	43 89 1c 99          	mov    %ebx,(%r9,%r11,4)
 20e:	4d 8d 5f ff          	lea    -0x1(%r15),%r11
 212:	49 8d 5b ff          	lea    -0x1(%r11),%rbx
 216:	48 c1 eb 3f          	shr    $0x3f,%rbx
 21a:	49 8d 5c 1b ff       	lea    -0x1(%r11,%rbx,1),%rbx
 21f:	48 d1 fb             	sar    %rbx
 222:	4d 3b da             	cmp    %r10,%r11
 225:	7e 25                	jle    24c <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x24c>
 227:	45 8b 3c 99          	mov    (%r9,%rbx,4),%r15d
 22b:	45 3b fe             	cmp    %r14d,%r15d
 22e:	7d 1c                	jge    24c <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x24c>
 230:	47 89 3c 99          	mov    %r15d,(%r9,%r11,4)
 234:	4c 8d 7b ff          	lea    -0x1(%rbx),%r15
 238:	49 c1 ef 3f          	shr    $0x3f,%r15
 23c:	49 89 db             	mov    %rbx,%r11
 23f:	4a 8d 5c 3b ff       	lea    -0x1(%rbx,%r15,1),%rbx
 244:	48 d1 fb             	sar    %rbx
 247:	4d 3b da             	cmp    %r10,%r11
 24a:	7f db                	jg     227 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x227>
 24c:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 252:	47 89 34 99          	mov    %r14d,(%r9,%r11,4)
 256:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
 25a:	0f 85 27 ff ff ff    	jne    187 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x187>
 260:	45 33 d2             	xor    %r10d,%r10d
 263:	49 ff c2             	inc    %r10
 266:	33 ff                	xor    %edi,%edi
 268:	41 8b 11             	mov    (%r9),%edx
 26b:	33 c0                	xor    %eax,%eax
 26d:	4a 8d 0c 95 00 00 00 	lea    0x0(,%r10,4),%rcx
 274:	00 
 275:	48 f7 d9             	neg    %rcx
 278:	48 03 ce             	add    %rsi,%rcx
 27b:	44 8b 01             	mov    (%rcx),%r8d
 27e:	89 11                	mov    %edx,(%rcx)
 280:	4b 8d 0c 91          	lea    (%r9,%r10,4),%rcx
 284:	48 f7 d9             	neg    %rcx
 287:	33 d2                	xor    %edx,%edx
 289:	48 03 ce             	add    %rsi,%rcx
 28c:	48 c1 f9 02          	sar    $0x2,%rcx
 290:	48 85 c9             	test   %rcx,%rcx
 293:	0f 9e c0             	setle  %al
 296:	48 8d 44 01 ff       	lea    -0x1(%rcx,%rax,1),%rax
 29b:	48 d1 f8             	sar    %rax
 29e:	48 85 c0             	test   %rax,%rax
 2a1:	0f 8e 5c 01 00 00    	jle    403 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x403>
 2a7:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 2ae:	00 
 2af:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 2b3:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 2b7:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 2bc:	48 0f 4c d5          	cmovl  %rbp,%rdx
 2c0:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 2c4:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 2c8:	48 89 d7             	mov    %rdx,%rdi
 2cb:	48 3b d0             	cmp    %rax,%rdx
 2ce:	0f 8d 2f 01 00 00    	jge    403 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x403>
 2d4:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 2db:	00 
 2dc:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 2e0:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 2e4:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 2e9:	48 0f 4c d5          	cmovl  %rbp,%rdx
 2ed:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 2f1:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 2f5:	48 89 d7             	mov    %rdx,%rdi
 2f8:	48 3b d0             	cmp    %rax,%rdx
 2fb:	0f 8d 02 01 00 00    	jge    403 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x403>
 301:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 308:	00 
 309:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 30d:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 311:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 316:	48 0f 4c d5          	cmovl  %rbp,%rdx
 31a:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 31e:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 322:	48 89 d7             	mov    %rdx,%rdi
 325:	48 3b d0             	cmp    %rax,%rdx
 328:	0f 8d d5 00 00 00    	jge    403 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x403>
 32e:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 335:	00 
 336:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 33a:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 33e:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 343:	48 0f 4c d5          	cmovl  %rbp,%rdx
 347:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 34b:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 34f:	48 89 d7             	mov    %rdx,%rdi
 352:	48 3b d0             	cmp    %rax,%rdx
 355:	0f 8d a8 00 00 00    	jge    403 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x403>
 35b:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 362:	00 
 363:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 367:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 36b:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 370:	48 0f 4c d5          	cmovl  %rbp,%rdx
 374:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 378:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 37c:	48 89 d7             	mov    %rdx,%rdi
 37f:	48 3b d0             	cmp    %rax,%rdx
 382:	7d 7f                	jge    403 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x403>
 384:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 38b:	00 
 38c:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 390:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 394:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 399:	48 0f 4c d5          	cmovl  %rbp,%rdx
 39d:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3a1:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 3a5:	48 89 d7             	mov    %rdx,%rdi
 3a8:	48 3b d0             	cmp    %rax,%rdx
 3ab:	7d 56                	jge    403 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x403>
 3ad:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 3b4:	00 
 3b5:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3b9:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 3bd:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 3c2:	48 0f 4c d5          	cmovl  %rbp,%rdx
 3c6:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3ca:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 3ce:	48 89 d7             	mov    %rdx,%rdi
 3d1:	48 3b d0             	cmp    %rax,%rdx
 3d4:	7d 2d                	jge    403 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x403>
 3d6:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 3dd:	00 
 3de:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3e2:	48 8d 6a ff          	lea    -0x1(%rdx),%rbp
 3e6:	45 3b 5c 91 fc       	cmp    -0x4(%r9,%rdx,4),%r11d
 3eb:	48 0f 4c d5          	cmovl  %rbp,%rdx
 3ef:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3f3:	45 89 1c b9          	mov    %r11d,(%r9,%rdi,4)
 3f7:	48 89 d7             	mov    %rdx,%rdi
 3fa:	48 3b d0             	cmp    %rax,%rdx
 3fd:	0f 8c a4 fe ff ff    	jl     2a7 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x2a7>
 403:	48 f7 c1 01 00 00 00 	test   $0x1,%rcx
 40a:	75 2a                	jne    436 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x436>
 40c:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
 410:	48 c1 e8 3f          	shr    $0x3f,%rax
 414:	4c 8d 5c 01 fe       	lea    -0x2(%rcx,%rax,1),%r11
 419:	49 d1 fb             	sar    %r11
 41c:	49 3b d3             	cmp    %r11,%rdx
 41f:	75 15                	jne    436 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x436>
 421:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 428:	00 
 429:	41 8b 44 91 fc       	mov    -0x4(%r9,%rdx,4),%eax
 42e:	41 89 04 b9          	mov    %eax,(%r9,%rdi,4)
 432:	48 8d 7a ff          	lea    -0x1(%rdx),%rdi
 436:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
 43a:	48 c1 e8 3f          	shr    $0x3f,%rax
 43e:	48 8d 44 07 ff       	lea    -0x1(%rdi,%rax,1),%rax
 443:	48 d1 f8             	sar    %rax
 446:	48 85 ff             	test   %rdi,%rdi
 449:	7e 25                	jle    470 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x470>
 44b:	41 8b 14 81          	mov    (%r9,%rax,4),%edx
 44f:	41 3b d0             	cmp    %r8d,%edx
 452:	7d 1c                	jge    470 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x470>
 454:	41 89 14 b9          	mov    %edx,(%r9,%rdi,4)
 458:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
 45c:	48 c1 ea 3f          	shr    $0x3f,%rdx
 460:	48 89 c7             	mov    %rax,%rdi
 463:	48 8d 44 10 ff       	lea    -0x1(%rax,%rdx,1),%rax
 468:	48 d1 f8             	sar    %rax
 46b:	48 85 ff             	test   %rdi,%rdi
 46e:	7f db                	jg     44b <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x44b>
 470:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 476:	45 89 04 b9          	mov    %r8d,(%r9,%rdi,4)
 47a:	48 83 f9 01          	cmp    $0x1,%rcx
 47e:	0f 8f df fd ff ff    	jg     263 <_ZSt16__introsort_loopIPilEvT_S1_T0_+0x263>
 484:	59                   	pop    %rcx
 485:	5d                   	pop    %rbp
 486:	5b                   	pop    %rbx
 487:	41 5f                	pop    %r15
 489:	41 5e                	pop    %r14
 48b:	c3                   	retq   
 48c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .text._ZSt16__introsort_loopIPflEvT_S1_T0_:

0000000000000000 <_ZSt16__introsort_loopIPflEvT_S1_T0_>:
   0:	53                   	push   %rbx
   1:	55                   	push   %rbp
   2:	48 83 ec 18          	sub    $0x18,%rsp
   6:	49 89 f9             	mov    %rdi,%r9
   9:	48 89 f0             	mov    %rsi,%rax
   c:	49 2b c1             	sub    %r9,%rax
   f:	48 c1 f8 02          	sar    $0x2,%rax
  13:	48 83 f8 10          	cmp    $0x10,%rax
  17:	0f 8e 5e 01 00 00    	jle    17b <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x17b>
  1d:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  22:	49 8d 41 04          	lea    0x4(%r9),%rax
  26:	4c 89 2c 24          	mov    %r13,(%rsp)
  2a:	49 89 c5             	mov    %rax,%r13
  2d:	49 89 d4             	mov    %rdx,%r12
  30:	4c 89 cd             	mov    %r9,%rbp
  33:	48 89 f0             	mov    %rsi,%rax
  36:	48 2b c5             	sub    %rbp,%rax
  39:	48 c1 f8 02          	sar    $0x2,%rax
  3d:	4d 85 e4             	test   %r12,%r12
  40:	0f 84 3c 01 00 00    	je     182 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x182>
  46:	48 89 c1             	mov    %rax,%rcx
  49:	49 ff cc             	dec    %r12
  4c:	48 c1 e9 3f          	shr    $0x3f,%rcx
  50:	48 03 c1             	add    %rcx,%rax
  53:	48 d1 f8             	sar    %rax
  56:	c5 fa 10 45 04       	vmovss 0x4(%rbp),%xmm0
  5b:	c5 fa 10 4e fc       	vmovss -0x4(%rsi),%xmm1
  60:	c5 fa 10 54 85 00    	vmovss 0x0(%rbp,%rax,4),%xmm2
  66:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
  6a:	76 34                	jbe    a0 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0xa0>
  6c:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
  70:	77 18                	ja     8a <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x8a>
  72:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
  76:	76 36                	jbe    ae <_ZSt16__introsort_loopIPflEvT_S1_T0_+0xae>
  78:	8b 4d 00             	mov    0x0(%rbp),%ecx
  7b:	c5 fa 11 4d 00       	vmovss %xmm1,0x0(%rbp)
  80:	89 4e fc             	mov    %ecx,-0x4(%rsi)
  83:	c5 fa 10 45 00       	vmovss 0x0(%rbp),%xmm0
  88:	eb 2f                	jmp    b9 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0xb9>
  8a:	8b 4d 00             	mov    0x0(%rbp),%ecx
  8d:	48 8d 5c 85 00       	lea    0x0(%rbp,%rax,4),%rbx
  92:	c5 fa 11 55 00       	vmovss %xmm2,0x0(%rbp)
  97:	89 0b                	mov    %ecx,(%rbx)
  99:	c5 fa 10 45 00       	vmovss 0x0(%rbp),%xmm0
  9e:	eb 19                	jmp    b9 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0xb9>
  a0:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
  a4:	77 08                	ja     ae <_ZSt16__introsort_loopIPflEvT_S1_T0_+0xae>
  a6:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
  aa:	77 cc                	ja     78 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x78>
  ac:	eb dc                	jmp    8a <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x8a>
  ae:	8b 4d 00             	mov    0x0(%rbp),%ecx
  b1:	c5 fa 11 45 00       	vmovss %xmm0,0x0(%rbp)
  b6:	89 4d 04             	mov    %ecx,0x4(%rbp)
  b9:	4c 89 eb             	mov    %r13,%rbx
  bc:	48 89 f1             	mov    %rsi,%rcx
  bf:	eb 11                	jmp    d2 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0xd2>
  c1:	c5 fa 11 13          	vmovss %xmm2,(%rbx)
  c5:	48 83 c3 04          	add    $0x4,%rbx
  c9:	c5 fa 11 09          	vmovss %xmm1,(%rcx)
  cd:	c5 fa 10 45 00       	vmovss 0x0(%rbp),%xmm0
  d2:	c5 fa 10 0b          	vmovss (%rbx),%xmm1
  d6:	49 89 da             	mov    %rbx,%r10
  d9:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
  dd:	76 28                	jbe    107 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x107>
  df:	45 33 c0             	xor    %r8d,%r8d
  e2:	49 ff c0             	inc    %r8
  e5:	4f 8d 1c c2          	lea    (%r10,%r8,8),%r11
  e9:	c4 c1 7a 10 4b fc    	vmovss -0x4(%r11),%xmm1
  ef:	49 8d 5b fc          	lea    -0x4(%r11),%rbx
  f3:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
  f7:	76 0e                	jbe    107 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x107>
  f9:	c4 c1 7a 10 0b       	vmovss (%r11),%xmm1
  fe:	4c 89 db             	mov    %r11,%rbx
 101:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
 105:	77 db                	ja     e2 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0xe2>
 107:	48 83 c1 fc          	add    $0xfffffffffffffffc,%rcx
 10b:	49 89 ca             	mov    %rcx,%r10
 10e:	c5 fa 10 11          	vmovss (%rcx),%xmm2
 112:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
 116:	76 32                	jbe    14a <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x14a>
 118:	45 33 c0             	xor    %r8d,%r8d
 11b:	49 ff c0             	inc    %r8
 11e:	4e 8d 1c c5 00 00 00 	lea    0x0(,%r8,8),%r11
 125:	00 
 126:	49 f7 db             	neg    %r11
 129:	4d 03 da             	add    %r10,%r11
 12c:	c4 c1 7a 10 53 04    	vmovss 0x4(%r11),%xmm2
 132:	49 8d 4b 04          	lea    0x4(%r11),%rcx
 136:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
 13a:	76 0e                	jbe    14a <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x14a>
 13c:	c4 c1 7a 10 13       	vmovss (%r11),%xmm2
 141:	4c 89 d9             	mov    %r11,%rcx
 144:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
 148:	77 d1                	ja     11b <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x11b>
 14a:	48 3b d9             	cmp    %rcx,%rbx
 14d:	0f 82 6e ff ff ff    	jb     c1 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0xc1>
 153:	48 89 df             	mov    %rbx,%rdi
 156:	4c 89 e2             	mov    %r12,%rdx
 159:	e8 00 00 00 00       	callq  15e <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x15e>
 15e:	48 89 de             	mov    %rbx,%rsi
 161:	48 2b dd             	sub    %rbp,%rbx
 164:	48 c1 fb 02          	sar    $0x2,%rbx
 168:	48 83 fb 10          	cmp    $0x10,%rbx
 16c:	0f 8f c1 fe ff ff    	jg     33 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x33>
 172:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
 177:	4c 8b 2c 24          	mov    (%rsp),%r13
 17b:	48 83 c4 18          	add    $0x18,%rsp
 17f:	5d                   	pop    %rbp
 180:	5b                   	pop    %rbx
 181:	c3                   	retq   
 182:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
 187:	49 89 e9             	mov    %rbp,%r9
 18a:	4c 8b 2c 24          	mov    (%rsp),%r13
 18e:	48 83 f8 02          	cmp    $0x2,%rax
 192:	7d 0f                	jge    1a3 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x1a3>
 194:	48 83 f8 01          	cmp    $0x1,%rax
 198:	0f 8f 19 01 00 00    	jg     2b7 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x2b7>
 19e:	e9 6a 03 00 00       	jmpq   50d <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x50d>
 1a3:	48 8d 78 fe          	lea    -0x2(%rax),%rdi
 1a7:	48 c1 ef 3f          	shr    $0x3f,%rdi
 1ab:	33 d2                	xor    %edx,%edx
 1ad:	48 85 c0             	test   %rax,%rax
 1b0:	0f 9e c2             	setle  %dl
 1b3:	4c 8d 44 38 fe       	lea    -0x2(%rax,%rdi,1),%r8
 1b8:	49 d1 f8             	sar    %r8
 1bb:	48 8d 4c 10 ff       	lea    -0x1(%rax,%rdx,1),%rcx
 1c0:	48 83 e0 01          	and    $0x1,%rax
 1c4:	48 d1 f9             	sar    %rcx
 1c7:	4b 8d 3c 81          	lea    (%r9,%r8,4),%rdi
 1cb:	4c 89 c2             	mov    %r8,%rdx
 1ce:	49 ff c8             	dec    %r8
 1d1:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
 1d5:	c5 fa 10 47 04       	vmovss 0x4(%rdi),%xmm0
 1da:	4d 8d 50 01          	lea    0x1(%r8),%r10
 1de:	4d 89 d3             	mov    %r10,%r11
 1e1:	4c 89 d3             	mov    %r10,%rbx
 1e4:	4c 3b d1             	cmp    %rcx,%r10
 1e7:	7d 5c                	jge    245 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x245>
 1e9:	48 8d 2c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbp
 1f0:	00 
 1f1:	c4 c1 7a 10 4c a9 fc 	vmovss -0x4(%r9,%rbp,4),%xmm1
 1f8:	48 8d 5d ff          	lea    -0x1(%rbp),%rbx
 1fc:	c4 c1 78 2f 0c a9    	vcomiss (%r9,%rbp,4),%xmm1
 202:	77 03                	ja     207 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x207>
 204:	48 89 eb             	mov    %rbp,%rbx
 207:	41 8b 2c 99          	mov    (%r9,%rbx,4),%ebp
 20b:	43 89 2c 99          	mov    %ebp,(%r9,%r11,4)
 20f:	49 89 db             	mov    %rbx,%r11
 212:	48 3b d9             	cmp    %rcx,%rbx
 215:	7d 2e                	jge    245 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x245>
 217:	48 8d 2c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbp
 21e:	00 
 21f:	c4 c1 7a 10 4c a9 fc 	vmovss -0x4(%r9,%rbp,4),%xmm1
 226:	48 8d 5d ff          	lea    -0x1(%rbp),%rbx
 22a:	c4 c1 78 2f 0c a9    	vcomiss (%r9,%rbp,4),%xmm1
 230:	77 03                	ja     235 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x235>
 232:	48 89 eb             	mov    %rbp,%rbx
 235:	41 8b 2c 99          	mov    (%r9,%rbx,4),%ebp
 239:	43 89 2c 99          	mov    %ebp,(%r9,%r11,4)
 23d:	49 89 db             	mov    %rbx,%r11
 240:	48 3b d9             	cmp    %rcx,%rbx
 243:	7c a4                	jl     1e9 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x1e9>
 245:	48 85 c0             	test   %rax,%rax
 248:	75 1a                	jne    264 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x264>
 24a:	48 3b da             	cmp    %rdx,%rbx
 24d:	75 15                	jne    264 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x264>
 24f:	48 8d 2c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbp
 256:	00 
 257:	41 8b 5c a9 fc       	mov    -0x4(%r9,%rbp,4),%ebx
 25c:	43 89 1c 99          	mov    %ebx,(%r9,%r11,4)
 260:	4c 8d 5d ff          	lea    -0x1(%rbp),%r11
 264:	49 8d 5b ff          	lea    -0x1(%r11),%rbx
 268:	48 c1 eb 3f          	shr    $0x3f,%rbx
 26c:	49 8d 5c 1b ff       	lea    -0x1(%r11,%rbx,1),%rbx
 271:	48 d1 fb             	sar    %rbx
 274:	4d 3b da             	cmp    %r10,%r11
 277:	7e 2a                	jle    2a3 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x2a3>
 279:	c4 c1 7a 10 0c 99    	vmovss (%r9,%rbx,4),%xmm1
 27f:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
 283:	76 1e                	jbe    2a3 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x2a3>
 285:	c4 81 7a 11 0c 99    	vmovss %xmm1,(%r9,%r11,4)
 28b:	48 8d 6b ff          	lea    -0x1(%rbx),%rbp
 28f:	48 c1 ed 3f          	shr    $0x3f,%rbp
 293:	49 89 db             	mov    %rbx,%r11
 296:	48 8d 5c 2b ff       	lea    -0x1(%rbx,%rbp,1),%rbx
 29b:	48 d1 fb             	sar    %rbx
 29e:	4d 3b da             	cmp    %r10,%r11
 2a1:	7f d6                	jg     279 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x279>
 2a3:	0f 1f 40 00          	nopl   0x0(%rax)
 2a7:	c4 81 7a 11 04 99    	vmovss %xmm0,(%r9,%r11,4)
 2ad:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
 2b1:	0f 85 17 ff ff ff    	jne    1ce <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x1ce>
 2b7:	45 33 c0             	xor    %r8d,%r8d
 2ba:	49 ff c0             	inc    %r8
 2bd:	33 c0                	xor    %eax,%eax
 2bf:	41 8b 11             	mov    (%r9),%edx
 2c2:	4b 8d 3c 81          	lea    (%r9,%r8,4),%rdi
 2c6:	48 f7 df             	neg    %rdi
 2c9:	4a 8d 0c 85 00 00 00 	lea    0x0(,%r8,4),%rcx
 2d0:	00 
 2d1:	48 03 fe             	add    %rsi,%rdi
 2d4:	48 f7 d9             	neg    %rcx
 2d7:	48 c1 ff 02          	sar    $0x2,%rdi
 2db:	48 03 ce             	add    %rsi,%rcx
 2de:	48 85 ff             	test   %rdi,%rdi
 2e1:	0f 9e c0             	setle  %al
 2e4:	c5 fa 10 01          	vmovss (%rcx),%xmm0
 2e8:	89 11                	mov    %edx,(%rcx)
 2ea:	33 c9                	xor    %ecx,%ecx
 2ec:	33 d2                	xor    %edx,%edx
 2ee:	48 8d 44 07 ff       	lea    -0x1(%rdi,%rax,1),%rax
 2f3:	48 d1 f8             	sar    %rax
 2f6:	48 85 c0             	test   %rax,%rax
 2f9:	0f 8e 88 01 00 00    	jle    487 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x487>
 2ff:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 306:	00 
 307:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 30e:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 312:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 318:	77 03                	ja     31d <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x31d>
 31a:	4c 89 d2             	mov    %r10,%rdx
 31d:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 321:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 325:	48 89 d1             	mov    %rdx,%rcx
 328:	48 3b d0             	cmp    %rax,%rdx
 32b:	0f 8d 56 01 00 00    	jge    487 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x487>
 331:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 338:	00 
 339:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 340:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 344:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 34a:	77 03                	ja     34f <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x34f>
 34c:	4c 89 d2             	mov    %r10,%rdx
 34f:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 353:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 357:	48 89 d1             	mov    %rdx,%rcx
 35a:	48 3b d0             	cmp    %rax,%rdx
 35d:	0f 8d 24 01 00 00    	jge    487 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x487>
 363:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 36a:	00 
 36b:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 372:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 376:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 37c:	77 03                	ja     381 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x381>
 37e:	4c 89 d2             	mov    %r10,%rdx
 381:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 385:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 389:	48 89 d1             	mov    %rdx,%rcx
 38c:	48 3b d0             	cmp    %rax,%rdx
 38f:	0f 8d f2 00 00 00    	jge    487 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x487>
 395:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 39c:	00 
 39d:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 3a4:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 3a8:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 3ae:	77 03                	ja     3b3 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x3b3>
 3b0:	4c 89 d2             	mov    %r10,%rdx
 3b3:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3b7:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 3bb:	48 89 d1             	mov    %rdx,%rcx
 3be:	48 3b d0             	cmp    %rax,%rdx
 3c1:	0f 8d c0 00 00 00    	jge    487 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x487>
 3c7:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 3ce:	00 
 3cf:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 3d6:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 3da:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 3e0:	77 03                	ja     3e5 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x3e5>
 3e2:	4c 89 d2             	mov    %r10,%rdx
 3e5:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 3e9:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 3ed:	48 89 d1             	mov    %rdx,%rcx
 3f0:	48 3b d0             	cmp    %rax,%rdx
 3f3:	0f 8d 8e 00 00 00    	jge    487 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x487>
 3f9:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 400:	00 
 401:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 408:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 40c:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 412:	77 03                	ja     417 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x417>
 414:	4c 89 d2             	mov    %r10,%rdx
 417:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 41b:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 41f:	48 89 d1             	mov    %rdx,%rcx
 422:	48 3b d0             	cmp    %rax,%rdx
 425:	7d 60                	jge    487 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x487>
 427:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 42e:	00 
 42f:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 436:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 43a:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 440:	77 03                	ja     445 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x445>
 442:	4c 89 d2             	mov    %r10,%rdx
 445:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 449:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 44d:	48 89 d1             	mov    %rdx,%rcx
 450:	48 3b d0             	cmp    %rax,%rdx
 453:	7d 32                	jge    487 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x487>
 455:	4c 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%r10
 45c:	00 
 45d:	c4 81 7a 10 4c 91 fc 	vmovss -0x4(%r9,%r10,4),%xmm1
 464:	49 8d 52 ff          	lea    -0x1(%r10),%rdx
 468:	c4 81 78 2f 0c 91    	vcomiss (%r9,%r10,4),%xmm1
 46e:	77 03                	ja     473 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x473>
 470:	4c 89 d2             	mov    %r10,%rdx
 473:	45 8b 1c 91          	mov    (%r9,%rdx,4),%r11d
 477:	45 89 1c 89          	mov    %r11d,(%r9,%rcx,4)
 47b:	48 89 d1             	mov    %rdx,%rcx
 47e:	48 3b d0             	cmp    %rax,%rdx
 481:	0f 8c 78 fe ff ff    	jl     2ff <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x2ff>
 487:	48 f7 c7 01 00 00 00 	test   $0x1,%rdi
 48e:	75 2a                	jne    4ba <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x4ba>
 490:	48 8d 47 fe          	lea    -0x2(%rdi),%rax
 494:	48 c1 e8 3f          	shr    $0x3f,%rax
 498:	4c 8d 54 07 fe       	lea    -0x2(%rdi,%rax,1),%r10
 49d:	49 d1 fa             	sar    %r10
 4a0:	49 3b d2             	cmp    %r10,%rdx
 4a3:	75 15                	jne    4ba <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x4ba>
 4a5:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
 4ac:	00 
 4ad:	41 8b 44 91 fc       	mov    -0x4(%r9,%rdx,4),%eax
 4b2:	41 89 04 89          	mov    %eax,(%r9,%rcx,4)
 4b6:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
 4ba:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
 4be:	48 c1 e8 3f          	shr    $0x3f,%rax
 4c2:	48 8d 44 01 ff       	lea    -0x1(%rcx,%rax,1),%rax
 4c7:	48 d1 f8             	sar    %rax
 4ca:	48 85 c9             	test   %rcx,%rcx
 4cd:	7e 2a                	jle    4f9 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x4f9>
 4cf:	c4 c1 7a 10 0c 81    	vmovss (%r9,%rax,4),%xmm1
 4d5:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
 4d9:	76 1e                	jbe    4f9 <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x4f9>
 4db:	c4 c1 7a 11 0c 89    	vmovss %xmm1,(%r9,%rcx,4)
 4e1:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
 4e5:	48 c1 ea 3f          	shr    $0x3f,%rdx
 4e9:	48 89 c1             	mov    %rax,%rcx
 4ec:	48 8d 44 10 ff       	lea    -0x1(%rax,%rdx,1),%rax
 4f1:	48 d1 f8             	sar    %rax
 4f4:	48 85 c9             	test   %rcx,%rcx
 4f7:	7f d6                	jg     4cf <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x4cf>
 4f9:	0f 1f 40 00          	nopl   0x0(%rax)
 4fd:	c4 c1 7a 11 04 89    	vmovss %xmm0,(%r9,%rcx,4)
 503:	48 83 ff 01          	cmp    $0x1,%rdi
 507:	0f 8f ad fd ff ff    	jg     2ba <_ZSt16__introsort_loopIPflEvT_S1_T0_+0x2ba>
 50d:	48 83 c4 18          	add    $0x18,%rsp
 511:	5d                   	pop    %rbp
 512:	5b                   	pop    %rbx
 513:	c3                   	retq   
 514:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
