
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
     800:	55                   	push   %rbp
     801:	48 89 e5             	mov    %rsp,%rbp
     804:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
     808:	48 89 fa             	mov    %rdi,%rdx
     80b:	48 85 d2             	test   %rdx,%rdx
     80e:	77 08                	ja     818 <_ZN7try_int4fillENS_3ArrEm+0x18>
     810:	c5 f8 77             	vzeroupper 
     813:	48 89 ec             	mov    %rbp,%rsp
     816:	5d                   	pop    %rbp
     817:	c3                   	retq   
     818:	48 83 fa 18          	cmp    $0x18,%rdx
     81c:	72 11                	jb     82f <_ZN7try_int4fillENS_3ArrEm+0x2f>
     81e:	48 c1 e2 02          	shl    $0x2,%rdx
     822:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
     826:	33 f6                	xor    %esi,%esi
     828:	e8 00 00 00 00       	callq  82d <_ZN7try_int4fillENS_3ArrEm+0x2d>
     82d:	eb e1                	jmp    810 <_ZN7try_int4fillENS_3ArrEm+0x10>
     82f:	48 83 fa 08          	cmp    $0x8,%rdx
     833:	72 33                	jb     868 <_ZN7try_int4fillENS_3ArrEm+0x68>
     835:	48 89 d1             	mov    %rdx,%rcx
     838:	33 c0                	xor    %eax,%eax
     83a:	c5 fd ef c0          	vpxor  %ymm0,%ymm0,%ymm0
     83e:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
     842:	c5 fe 7f 44 85 10    	vmovdqu %ymm0,0x10(%rbp,%rax,4)
     848:	48 83 c0 08          	add    $0x8,%rax
     84c:	48 3b c1             	cmp    %rcx,%rax
     84f:	72 f1                	jb     842 <_ZN7try_int4fillENS_3ArrEm+0x42>
     851:	48 3b ca             	cmp    %rdx,%rcx
     854:	73 ba                	jae    810 <_ZN7try_int4fillENS_3ArrEm+0x10>
     856:	c7 44 8d 10 00 00 00 	movl   $0x0,0x10(%rbp,%rcx,4)
     85d:	00 
     85e:	48 ff c1             	inc    %rcx
     861:	48 3b ca             	cmp    %rdx,%rcx
     864:	72 f0                	jb     856 <_ZN7try_int4fillENS_3ArrEm+0x56>
     866:	eb a8                	jmp    810 <_ZN7try_int4fillENS_3ArrEm+0x10>
     868:	33 c9                	xor    %ecx,%ecx
     86a:	eb e5                	jmp    851 <_ZN7try_int4fillENS_3ArrEm+0x51>
     86c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000870 <_ZN7try_int9transformENS_3ArrES0_m>:
     870:	48 c1 e7 02          	shl    $0x2,%rdi
     874:	48 c1 ff 02          	sar    $0x2,%rdi
     878:	48 85 ff             	test   %rdi,%rdi
     87b:	0f 8e 8f 00 00 00    	jle    910 <_ZN7try_int9transformENS_3ArrES0_m+0xa0>
     881:	48 83 ff 08          	cmp    $0x8,%rdi
     885:	7c 70                	jl     8f7 <_ZN7try_int9transformENS_3ArrES0_m+0x87>
     887:	48 81 ff 39 01 00 00 	cmp    $0x139,%rdi
     88e:	0f 8c 80 00 00 00    	jl     914 <_ZN7try_int9transformENS_3ArrES0_m+0xa4>
     894:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
     899:	48 83 e1 1f          	and    $0x1f,%rcx
     89d:	74 0b                	je     8aa <_ZN7try_int9transformENS_3ArrES0_m+0x3a>
     89f:	48 f7 d9             	neg    %rcx
     8a2:	48 83 c1 20          	add    $0x20,%rcx
     8a6:	48 c1 e9 02          	shr    $0x2,%rcx
     8aa:	48 8d 41 08          	lea    0x8(%rcx),%rax
     8ae:	48 3b f8             	cmp    %rax,%rdi
     8b1:	7c 44                	jl     8f7 <_ZN7try_int9transformENS_3ArrES0_m+0x87>
     8b3:	48 89 f8             	mov    %rdi,%rax
     8b6:	33 d2                	xor    %edx,%edx
     8b8:	48 2b c1             	sub    %rcx,%rax
     8bb:	48 83 e0 07          	and    $0x7,%rax
     8bf:	48 f7 d8             	neg    %rax
     8c2:	48 03 c7             	add    %rdi,%rax
     8c5:	48 85 c9             	test   %rcx,%rcx
     8c8:	76 12                	jbe    8dc <_ZN7try_int9transformENS_3ArrES0_m+0x6c>
     8ca:	8b 74 94 08          	mov    0x8(%rsp,%rdx,4),%esi
     8ce:	03 f6                	add    %esi,%esi
     8d0:	89 74 94 08          	mov    %esi,0x8(%rsp,%rdx,4)
     8d4:	48 ff c2             	inc    %rdx
     8d7:	48 3b d1             	cmp    %rcx,%rdx
     8da:	72 ee                	jb     8ca <_ZN7try_int9transformENS_3ArrES0_m+0x5a>
     8dc:	c5 fe 6f 44 8c 08    	vmovdqu 0x8(%rsp,%rcx,4),%ymm0
     8e2:	c5 fd fe c8          	vpaddd %ymm0,%ymm0,%ymm1
     8e6:	c5 fe 7f 4c 8c 08    	vmovdqu %ymm1,0x8(%rsp,%rcx,4)
     8ec:	48 83 c1 08          	add    $0x8,%rcx
     8f0:	48 3b c8             	cmp    %rax,%rcx
     8f3:	72 e7                	jb     8dc <_ZN7try_int9transformENS_3ArrES0_m+0x6c>
     8f5:	eb 02                	jmp    8f9 <_ZN7try_int9transformENS_3ArrES0_m+0x89>
     8f7:	33 c0                	xor    %eax,%eax
     8f9:	48 3b c7             	cmp    %rdi,%rax
     8fc:	73 12                	jae    910 <_ZN7try_int9transformENS_3ArrES0_m+0xa0>
     8fe:	8b 54 84 08          	mov    0x8(%rsp,%rax,4),%edx
     902:	03 d2                	add    %edx,%edx
     904:	89 54 84 08          	mov    %edx,0x8(%rsp,%rax,4)
     908:	48 ff c0             	inc    %rax
     90b:	48 3b c7             	cmp    %rdi,%rax
     90e:	72 ee                	jb     8fe <_ZN7try_int9transformENS_3ArrES0_m+0x8e>
     910:	c5 f8 77             	vzeroupper 
     913:	c3                   	retq   
     914:	48 89 f8             	mov    %rdi,%rax
     917:	33 c9                	xor    %ecx,%ecx
     919:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     91d:	eb bd                	jmp    8dc <_ZN7try_int9transformENS_3ArrES0_m+0x6c>
     91f:	90                   	nop

0000000000000920 <_ZN7try_int11transform32ENS_3ArrES0_m>:
     920:	48 c1 e7 05          	shl    $0x5,%rdi
     924:	48 c1 ff 02          	sar    $0x2,%rdi
     928:	48 85 ff             	test   %rdi,%rdi
     92b:	0f 8e 8f 00 00 00    	jle    9c0 <_ZN7try_int11transform32ENS_3ArrES0_m+0xa0>
     931:	48 83 ff 08          	cmp    $0x8,%rdi
     935:	7c 70                	jl     9a7 <_ZN7try_int11transform32ENS_3ArrES0_m+0x87>
     937:	48 81 ff 39 01 00 00 	cmp    $0x139,%rdi
     93e:	0f 8c 80 00 00 00    	jl     9c4 <_ZN7try_int11transform32ENS_3ArrES0_m+0xa4>
     944:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
     949:	48 83 e1 1f          	and    $0x1f,%rcx
     94d:	74 0b                	je     95a <_ZN7try_int11transform32ENS_3ArrES0_m+0x3a>
     94f:	48 f7 d9             	neg    %rcx
     952:	48 83 c1 20          	add    $0x20,%rcx
     956:	48 c1 e9 02          	shr    $0x2,%rcx
     95a:	48 8d 41 08          	lea    0x8(%rcx),%rax
     95e:	48 3b f8             	cmp    %rax,%rdi
     961:	7c 44                	jl     9a7 <_ZN7try_int11transform32ENS_3ArrES0_m+0x87>
     963:	48 89 f8             	mov    %rdi,%rax
     966:	33 d2                	xor    %edx,%edx
     968:	48 2b c1             	sub    %rcx,%rax
     96b:	48 83 e0 07          	and    $0x7,%rax
     96f:	48 f7 d8             	neg    %rax
     972:	48 03 c7             	add    %rdi,%rax
     975:	48 85 c9             	test   %rcx,%rcx
     978:	76 12                	jbe    98c <_ZN7try_int11transform32ENS_3ArrES0_m+0x6c>
     97a:	8b 74 94 08          	mov    0x8(%rsp,%rdx,4),%esi
     97e:	03 f6                	add    %esi,%esi
     980:	89 74 94 08          	mov    %esi,0x8(%rsp,%rdx,4)
     984:	48 ff c2             	inc    %rdx
     987:	48 3b d1             	cmp    %rcx,%rdx
     98a:	72 ee                	jb     97a <_ZN7try_int11transform32ENS_3ArrES0_m+0x5a>
     98c:	c5 fe 6f 44 8c 08    	vmovdqu 0x8(%rsp,%rcx,4),%ymm0
     992:	c5 fd fe c8          	vpaddd %ymm0,%ymm0,%ymm1
     996:	c5 fe 7f 4c 8c 08    	vmovdqu %ymm1,0x8(%rsp,%rcx,4)
     99c:	48 83 c1 08          	add    $0x8,%rcx
     9a0:	48 3b c8             	cmp    %rax,%rcx
     9a3:	72 e7                	jb     98c <_ZN7try_int11transform32ENS_3ArrES0_m+0x6c>
     9a5:	eb 02                	jmp    9a9 <_ZN7try_int11transform32ENS_3ArrES0_m+0x89>
     9a7:	33 c0                	xor    %eax,%eax
     9a9:	48 3b c7             	cmp    %rdi,%rax
     9ac:	73 12                	jae    9c0 <_ZN7try_int11transform32ENS_3ArrES0_m+0xa0>
     9ae:	8b 54 84 08          	mov    0x8(%rsp,%rax,4),%edx
     9b2:	03 d2                	add    %edx,%edx
     9b4:	89 54 84 08          	mov    %edx,0x8(%rsp,%rax,4)
     9b8:	48 ff c0             	inc    %rax
     9bb:	48 3b c7             	cmp    %rdi,%rax
     9be:	72 ee                	jb     9ae <_ZN7try_int11transform32ENS_3ArrES0_m+0x8e>
     9c0:	c5 f8 77             	vzeroupper 
     9c3:	c3                   	retq   
     9c4:	48 89 f8             	mov    %rdi,%rax
     9c7:	33 c9                	xor    %ecx,%ecx
     9c9:	eb c1                	jmp    98c <_ZN7try_int11transform32ENS_3ArrES0_m+0x6c>
     9cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009d0 <_ZN9try_float4sortENS_3ArrEm>:
     9d0:	41 54                	push   %r12
     9d2:	41 55                	push   %r13
     9d4:	41 56                	push   %r14
     9d6:	41 57                	push   %r15
     9d8:	48 83 ec 18          	sub    $0x18,%rsp
     9dc:	4c 8d 54 24 40       	lea    0x40(%rsp),%r10
     9e1:	4d 8d 0c ba          	lea    (%r10,%rdi,4),%r9
     9e5:	4d 3b d1             	cmp    %r9,%r10
     9e8:	75 0d                	jne    9f7 <_ZN9try_float4sortENS_3ArrEm+0x27>
     9ea:	48 83 c4 18          	add    $0x18,%rsp
     9ee:	41 5f                	pop    %r15
     9f0:	41 5e                	pop    %r14
     9f2:	41 5d                	pop    %r13
     9f4:	41 5c                	pop    %r12
     9f6:	c3                   	retq   
     9f7:	4c 89 c8             	mov    %r9,%rax
     9fa:	4c 89 ce             	mov    %r9,%rsi
     9fd:	49 2b c2             	sub    %r10,%rax
     a00:	48 c1 f8 02          	sar    $0x2,%rax
     a04:	f3 48 0f bd d0       	lzcnt  %rax,%rdx
     a09:	48 03 d2             	add    %rdx,%rdx
     a0c:	48 f7 da             	neg    %rdx
     a0f:	48 83 c2 7e          	add    $0x7e,%rdx
     a13:	48 83 f8 10          	cmp    $0x10,%rax
     a17:	0f 8e 82 07 00 00    	jle    119f <_ZN9try_float4sortENS_3ArrEm+0x7cf>
     a1d:	49 89 d7             	mov    %rdx,%r15
     a20:	4d 89 cd             	mov    %r9,%r13
     a23:	4d 89 d6             	mov    %r10,%r14
     a26:	48 89 f0             	mov    %rsi,%rax
     a29:	49 2b c6             	sub    %r14,%rax
     a2c:	48 c1 f8 02          	sar    $0x2,%rax
     a30:	4d 85 ff             	test   %r15,%r15
     a33:	0f 84 a7 03 00 00    	je     de0 <_ZN9try_float4sortENS_3ArrEm+0x410>
     a39:	48 89 c1             	mov    %rax,%rcx
     a3c:	49 ff cf             	dec    %r15
     a3f:	48 c1 e9 3f          	shr    $0x3f,%rcx
     a43:	48 03 c1             	add    %rcx,%rax
     a46:	48 d1 f8             	sar    %rax
     a49:	c5 fa 10 44 24 44    	vmovss 0x44(%rsp),%xmm0
     a4f:	c5 fa 10 4e fc       	vmovss -0x4(%rsi),%xmm1
     a54:	c5 fa 10 54 84 40    	vmovss 0x40(%rsp,%rax,4),%xmm2
     a5a:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
     a5e:	76 33                	jbe    a93 <_ZN9try_float4sortENS_3ArrEm+0xc3>
     a60:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
     a64:	77 39                	ja     a9f <_ZN9try_float4sortENS_3ArrEm+0xcf>
     a66:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
     a6a:	76 13                	jbe    a7f <_ZN9try_float4sortENS_3ArrEm+0xaf>
     a6c:	8b 44 24 40          	mov    0x40(%rsp),%eax
     a70:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
     a74:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
     a7a:	89 46 fc             	mov    %eax,-0x4(%rsi)
     a7d:	eb 32                	jmp    ab1 <_ZN9try_float4sortENS_3ArrEm+0xe1>
     a7f:	8b 44 24 40          	mov    0x40(%rsp),%eax
     a83:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
     a87:	c5 fa 11 44 24 40    	vmovss %xmm0,0x40(%rsp)
     a8d:	89 44 24 44          	mov    %eax,0x44(%rsp)
     a91:	eb 1e                	jmp    ab1 <_ZN9try_float4sortENS_3ArrEm+0xe1>
     a93:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
     a97:	77 e6                	ja     a7f <_ZN9try_float4sortENS_3ArrEm+0xaf>
     a99:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
     a9d:	77 cd                	ja     a6c <_ZN9try_float4sortENS_3ArrEm+0x9c>
     a9f:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
     aa3:	48 c1 e0 02          	shl    $0x2,%rax
     aa7:	c5 fa 11 54 24 40    	vmovss %xmm2,0x40(%rsp)
     aad:	89 4c 04 40          	mov    %ecx,0x40(%rsp,%rax,1)
     ab1:	48 89 f0             	mov    %rsi,%rax
     ab4:	4c 8d 64 24 44       	lea    0x44(%rsp),%r12
     ab9:	eb 14                	jmp    acf <_ZN9try_float4sortENS_3ArrEm+0xff>
     abb:	c4 c1 7a 11 04 24    	vmovss %xmm0,(%r12)
     ac1:	49 83 c4 04          	add    $0x4,%r12
     ac5:	c5 fa 11 08          	vmovss %xmm1,(%rax)
     ac9:	c5 fa 10 54 24 40    	vmovss 0x40(%rsp),%xmm2
     acf:	c4 c1 7a 10 0c 24    	vmovss (%r12),%xmm1
     ad5:	4d 89 e0             	mov    %r12,%r8
     ad8:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     adc:	0f 86 93 00 00 00    	jbe    b75 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     ae2:	33 c9                	xor    %ecx,%ecx
     ae4:	48 83 c1 20          	add    $0x20,%rcx
     ae8:	4d 8d 1c 08          	lea    (%r8,%rcx,1),%r11
     aec:	c4 c1 7a 10 4b e4    	vmovss -0x1c(%r11),%xmm1
     af2:	4d 8d 64 08 e4       	lea    -0x1c(%r8,%rcx,1),%r12
     af7:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     afb:	76 78                	jbe    b75 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     afd:	c4 c1 7a 10 4b e8    	vmovss -0x18(%r11),%xmm1
     b03:	4d 8d 64 08 e8       	lea    -0x18(%r8,%rcx,1),%r12
     b08:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b0c:	76 67                	jbe    b75 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b0e:	c4 c1 7a 10 4b ec    	vmovss -0x14(%r11),%xmm1
     b14:	4d 8d 64 08 ec       	lea    -0x14(%r8,%rcx,1),%r12
     b19:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b1d:	76 56                	jbe    b75 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b1f:	c4 c1 7a 10 4b f0    	vmovss -0x10(%r11),%xmm1
     b25:	4d 8d 64 08 f0       	lea    -0x10(%r8,%rcx,1),%r12
     b2a:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b2e:	76 45                	jbe    b75 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b30:	c4 c1 7a 10 4b f4    	vmovss -0xc(%r11),%xmm1
     b36:	4d 8d 64 08 f4       	lea    -0xc(%r8,%rcx,1),%r12
     b3b:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b3f:	76 34                	jbe    b75 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b41:	c4 c1 7a 10 4b f8    	vmovss -0x8(%r11),%xmm1
     b47:	4d 8d 64 08 f8       	lea    -0x8(%r8,%rcx,1),%r12
     b4c:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b50:	76 23                	jbe    b75 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b52:	c4 c1 7a 10 4b fc    	vmovss -0x4(%r11),%xmm1
     b58:	4d 8d 64 08 fc       	lea    -0x4(%r8,%rcx,1),%r12
     b5d:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b61:	76 12                	jbe    b75 <_ZN9try_float4sortENS_3ArrEm+0x1a5>
     b63:	c4 c1 7a 10 0b       	vmovss (%r11),%xmm1
     b68:	4d 89 dc             	mov    %r11,%r12
     b6b:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
     b6f:	0f 87 6f ff ff ff    	ja     ae4 <_ZN9try_float4sortENS_3ArrEm+0x114>
     b75:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
     b79:	49 89 c0             	mov    %rax,%r8
     b7c:	c5 fa 10 00          	vmovss (%rax),%xmm0
     b80:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     b84:	0f 86 93 00 00 00    	jbe    c1d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     b8a:	33 c9                	xor    %ecx,%ecx
     b8c:	48 83 c1 e0          	add    $0xffffffffffffffe0,%rcx
     b90:	4d 8d 1c 08          	lea    (%r8,%rcx,1),%r11
     b94:	c4 c1 7a 10 43 1c    	vmovss 0x1c(%r11),%xmm0
     b9a:	49 8d 44 08 1c       	lea    0x1c(%r8,%rcx,1),%rax
     b9f:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     ba3:	76 78                	jbe    c1d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     ba5:	c4 c1 7a 10 43 18    	vmovss 0x18(%r11),%xmm0
     bab:	49 8d 44 08 18       	lea    0x18(%r8,%rcx,1),%rax
     bb0:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     bb4:	76 67                	jbe    c1d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     bb6:	c4 c1 7a 10 43 14    	vmovss 0x14(%r11),%xmm0
     bbc:	49 8d 44 08 14       	lea    0x14(%r8,%rcx,1),%rax
     bc1:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     bc5:	76 56                	jbe    c1d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     bc7:	c4 c1 7a 10 43 10    	vmovss 0x10(%r11),%xmm0
     bcd:	49 8d 44 08 10       	lea    0x10(%r8,%rcx,1),%rax
     bd2:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     bd6:	76 45                	jbe    c1d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     bd8:	c4 c1 7a 10 43 0c    	vmovss 0xc(%r11),%xmm0
     bde:	49 8d 44 08 0c       	lea    0xc(%r8,%rcx,1),%rax
     be3:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     be7:	76 34                	jbe    c1d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     be9:	c4 c1 7a 10 43 08    	vmovss 0x8(%r11),%xmm0
     bef:	49 8d 44 08 08       	lea    0x8(%r8,%rcx,1),%rax
     bf4:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     bf8:	76 23                	jbe    c1d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     bfa:	c4 c1 7a 10 43 04    	vmovss 0x4(%r11),%xmm0
     c00:	49 8d 44 08 04       	lea    0x4(%r8,%rcx,1),%rax
     c05:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     c09:	76 12                	jbe    c1d <_ZN9try_float4sortENS_3ArrEm+0x24d>
     c0b:	c4 c1 7a 10 03       	vmovss (%r11),%xmm0
     c10:	4c 89 d8             	mov    %r11,%rax
     c13:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
     c17:	0f 87 6f ff ff ff    	ja     b8c <_ZN9try_float4sortENS_3ArrEm+0x1bc>
     c1d:	4c 3b e0             	cmp    %rax,%r12
     c20:	0f 82 95 fe ff ff    	jb     abb <_ZN9try_float4sortENS_3ArrEm+0xeb>
     c26:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
     c2a:	4c 89 e7             	mov    %r12,%rdi
     c2d:	48 89 e1             	mov    %rsp,%rcx
     c30:	4c 89 fa             	mov    %r15,%rdx
     c33:	8a 44 24 10          	mov    0x10(%rsp),%al
     c37:	88 01                	mov    %al,(%rcx)
     c39:	e8 00 00 00 00       	callq  c3e <_ZN9try_float4sortENS_3ArrEm+0x26e>
     c3e:	48 83 c4 10          	add    $0x10,%rsp
     c42:	4c 89 e6             	mov    %r12,%rsi
     c45:	4d 2b e6             	sub    %r14,%r12
     c48:	49 c1 fc 02          	sar    $0x2,%r12
     c4c:	49 83 fc 10          	cmp    $0x10,%r12
     c50:	0f 8f d0 fd ff ff    	jg     a26 <_ZN9try_float4sortENS_3ArrEm+0x56>
     c56:	4d 89 e9             	mov    %r13,%r9
     c59:	4d 89 f2             	mov    %r14,%r10
     c5c:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
     c63:	00 
     c64:	4c 3b d0             	cmp    %rax,%r10
     c67:	0f 84 e2 00 00 00    	je     d4f <_ZN9try_float4sortENS_3ArrEm+0x37f>
     c6d:	33 c9                	xor    %ecx,%ecx
     c6f:	48 8d 74 24 44       	lea    0x44(%rsp),%rsi
     c74:	33 d2                	xor    %edx,%edx
     c76:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
     c7b:	49 89 c5             	mov    %rax,%r13
     c7e:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
     c83:	49 89 d7             	mov    %rdx,%r15
     c86:	48 89 cd             	mov    %rcx,%rbp
     c89:	49 89 f4             	mov    %rsi,%r12
     c8c:	4c 89 cb             	mov    %r9,%rbx
     c8f:	4d 89 d6             	mov    %r10,%r14
     c92:	c4 81 7a 10 0c 27    	vmovss (%r15,%r12,1),%xmm1
     c98:	c5 fa 10 44 24 40    	vmovss 0x40(%rsp),%xmm0
     c9e:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     ca2:	76 36                	jbe    cda <_ZN9try_float4sortENS_3ArrEm+0x30a>
     ca4:	49 8d 57 04          	lea    0x4(%r15),%rdx
     ca8:	48 c1 fa 02          	sar    $0x2,%rdx
     cac:	48 85 d2             	test   %rdx,%rdx
     caf:	74 21                	je     cd2 <_ZN9try_float4sortENS_3ArrEm+0x302>
     cb1:	48 c1 e2 02          	shl    $0x2,%rdx
     cb5:	4d 89 e0             	mov    %r12,%r8
     cb8:	4c 2b c2             	sub    %rdx,%r8
     cbb:	4c 89 f6             	mov    %r14,%rsi
     cbe:	c5 fa 11 0c 24       	vmovss %xmm1,(%rsp)
     cc3:	4b 8d 7c 07 04       	lea    0x4(%r15,%r8,1),%rdi
     cc8:	e8 00 00 00 00       	callq  ccd <_ZN9try_float4sortENS_3ArrEm+0x2fd>
     ccd:	c5 fa 10 0c 24       	vmovss (%rsp),%xmm1
     cd2:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
     cd8:	eb 54                	jmp    d2e <_ZN9try_float4sortENS_3ArrEm+0x35e>
     cda:	c4 a1 7a 10 44 3c 40 	vmovss 0x40(%rsp,%r15,1),%xmm0
     ce1:	4f 8d 1c 3c          	lea    (%r12,%r15,1),%r11
     ce5:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     ce9:	76 3e                	jbe    d29 <_ZN9try_float4sortENS_3ArrEm+0x359>
     ceb:	45 33 c0             	xor    %r8d,%r8d
     cee:	4b 8d 3c 3c          	lea    (%r12,%r15,1),%rdi
     cf2:	49 ff c0             	inc    %r8
     cf5:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
     cfa:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
     d01:	00 
     d02:	48 f7 d8             	neg    %rax
     d05:	48 03 c7             	add    %rdi,%rax
     d08:	c5 fa 10 00          	vmovss (%rax),%xmm0
     d0c:	4c 8d 58 04          	lea    0x4(%rax),%r11
     d10:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     d14:	76 13                	jbe    d29 <_ZN9try_float4sortENS_3ArrEm+0x359>
     d16:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
     d1b:	49 89 c3             	mov    %rax,%r11
     d1e:	c5 fa 10 40 fc       	vmovss -0x4(%rax),%xmm0
     d23:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     d27:	77 c9                	ja     cf2 <_ZN9try_float4sortENS_3ArrEm+0x322>
     d29:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
     d2e:	48 ff c5             	inc    %rbp
     d31:	49 83 c7 04          	add    $0x4,%r15
     d35:	48 83 fd 0f          	cmp    $0xf,%rbp
     d39:	0f 82 53 ff ff ff    	jb     c92 <_ZN9try_float4sortENS_3ArrEm+0x2c2>
     d3f:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
     d44:	49 89 d9             	mov    %rbx,%r9
     d47:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
     d4c:	4c 89 e8             	mov    %r13,%rax
     d4f:	33 d2                	xor    %edx,%edx
     d51:	49 3b c1             	cmp    %r9,%rax
     d54:	0f 84 90 fc ff ff    	je     9ea <_ZN9try_float4sortENS_3ArrEm+0x1a>
     d5a:	4c 89 c9             	mov    %r9,%rcx
     d5d:	48 2b c8             	sub    %rax,%rcx
     d60:	48 83 c1 03          	add    $0x3,%rcx
     d64:	48 d1 f9             	sar    %rcx
     d67:	48 c1 e9 3e          	shr    $0x3e,%rcx
     d6b:	4c 03 c9             	add    %rcx,%r9
     d6e:	4c 2b c8             	sub    %rax,%r9
     d71:	49 83 c1 03          	add    $0x3,%r9
     d75:	49 c1 f9 02          	sar    $0x2,%r9
     d79:	c5 fa 10 0c 90       	vmovss (%rax,%rdx,4),%xmm1
     d7e:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
     d82:	c5 fa 10 44 94 7c    	vmovss 0x7c(%rsp,%rdx,4),%xmm0
     d88:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     d8c:	76 3d                	jbe    dcb <_ZN9try_float4sortENS_3ArrEm+0x3fb>
     d8e:	33 f6                	xor    %esi,%esi
     d90:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
     d94:	48 ff c6             	inc    %rsi
     d97:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
     d9b:	4c 8d 04 f5 00 00 00 	lea    0x0(,%rsi,8),%r8
     da2:	00 
     da3:	49 f7 d8             	neg    %r8
     da6:	4c 03 c1             	add    %rcx,%r8
     da9:	c4 c1 7a 10 00       	vmovss (%r8),%xmm0
     dae:	49 8d 78 04          	lea    0x4(%r8),%rdi
     db2:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     db6:	76 13                	jbe    dcb <_ZN9try_float4sortENS_3ArrEm+0x3fb>
     db8:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
     dbc:	4c 89 c7             	mov    %r8,%rdi
     dbf:	c4 c1 7a 10 40 fc    	vmovss -0x4(%r8),%xmm0
     dc5:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
     dc9:	77 c9                	ja     d94 <_ZN9try_float4sortENS_3ArrEm+0x3c4>
     dcb:	0f 1f 40 00          	nopl   0x0(%rax)
     dcf:	48 ff c2             	inc    %rdx
     dd2:	c5 fa 11 0f          	vmovss %xmm1,(%rdi)
     dd6:	49 3b d1             	cmp    %r9,%rdx
     dd9:	72 9e                	jb     d79 <_ZN9try_float4sortENS_3ArrEm+0x3a9>
     ddb:	e9 0a fc ff ff       	jmpq   9ea <_ZN9try_float4sortENS_3ArrEm+0x1a>
     de0:	4d 89 e9             	mov    %r13,%r9
     de3:	4d 89 f2             	mov    %r14,%r10
     de6:	48 83 f8 02          	cmp    $0x2,%rax
     dea:	7d 0f                	jge    dfb <_ZN9try_float4sortENS_3ArrEm+0x42b>
     dec:	48 83 f8 01          	cmp    $0x1,%rax
     df0:	0f 8f 6d 02 00 00    	jg     1063 <_ZN9try_float4sortENS_3ArrEm+0x693>
     df6:	e9 61 fe ff ff       	jmpq   c5c <_ZN9try_float4sortENS_3ArrEm+0x28c>
     dfb:	48 8d 78 fe          	lea    -0x2(%rax),%rdi
     dff:	48 c1 ef 3f          	shr    $0x3f,%rdi
     e03:	33 d2                	xor    %edx,%edx
     e05:	48 85 c0             	test   %rax,%rax
     e08:	0f 9e c2             	setle  %dl
     e0b:	4c 8d 44 38 fe       	lea    -0x2(%rax,%rdi,1),%r8
     e10:	49 d1 f8             	sar    %r8
     e13:	48 8d 4c 10 ff       	lea    -0x1(%rax,%rdx,1),%rcx
     e18:	48 83 e0 01          	and    $0x1,%rax
     e1c:	48 d1 f9             	sar    %rcx
     e1f:	4a 8d 7c 84 40       	lea    0x40(%rsp,%r8,4),%rdi
     e24:	4c 89 c2             	mov    %r8,%rdx
     e27:	49 ff c8             	dec    %r8
     e2a:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
     e2e:	c5 fa 10 47 04       	vmovss 0x4(%rdi),%xmm0
     e33:	4d 8d 60 01          	lea    0x1(%r8),%r12
     e37:	4d 89 e5             	mov    %r12,%r13
     e3a:	4d 89 e3             	mov    %r12,%r11
     e3d:	4c 3b e1             	cmp    %rcx,%r12
     e40:	0f 8d a8 01 00 00    	jge    fee <_ZN9try_float4sortENS_3ArrEm+0x61e>
     e46:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     e4d:	00 
     e4e:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     e53:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     e59:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     e5e:	76 08                	jbe    e68 <_ZN9try_float4sortENS_3ArrEm+0x498>
     e60:	49 ff cb             	dec    %r11
     e63:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     e68:	45 8b 36             	mov    (%r14),%r14d
     e6b:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     e70:	4d 89 dd             	mov    %r11,%r13
     e73:	4c 3b d9             	cmp    %rcx,%r11
     e76:	0f 8d 72 01 00 00    	jge    fee <_ZN9try_float4sortENS_3ArrEm+0x61e>
     e7c:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     e83:	00 
     e84:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     e89:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     e8f:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     e94:	76 08                	jbe    e9e <_ZN9try_float4sortENS_3ArrEm+0x4ce>
     e96:	49 ff cb             	dec    %r11
     e99:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     e9e:	45 8b 36             	mov    (%r14),%r14d
     ea1:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     ea6:	4d 89 dd             	mov    %r11,%r13
     ea9:	4c 3b d9             	cmp    %rcx,%r11
     eac:	0f 8d 3c 01 00 00    	jge    fee <_ZN9try_float4sortENS_3ArrEm+0x61e>
     eb2:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     eb9:	00 
     eba:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     ebf:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     ec5:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     eca:	76 08                	jbe    ed4 <_ZN9try_float4sortENS_3ArrEm+0x504>
     ecc:	49 ff cb             	dec    %r11
     ecf:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     ed4:	45 8b 36             	mov    (%r14),%r14d
     ed7:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     edc:	4d 89 dd             	mov    %r11,%r13
     edf:	4c 3b d9             	cmp    %rcx,%r11
     ee2:	0f 8d 06 01 00 00    	jge    fee <_ZN9try_float4sortENS_3ArrEm+0x61e>
     ee8:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     eef:	00 
     ef0:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     ef5:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     efb:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     f00:	76 08                	jbe    f0a <_ZN9try_float4sortENS_3ArrEm+0x53a>
     f02:	49 ff cb             	dec    %r11
     f05:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f0a:	45 8b 36             	mov    (%r14),%r14d
     f0d:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     f12:	4d 89 dd             	mov    %r11,%r13
     f15:	4c 3b d9             	cmp    %rcx,%r11
     f18:	0f 8d d0 00 00 00    	jge    fee <_ZN9try_float4sortENS_3ArrEm+0x61e>
     f1e:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     f25:	00 
     f26:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f2b:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     f31:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     f36:	76 08                	jbe    f40 <_ZN9try_float4sortENS_3ArrEm+0x570>
     f38:	49 ff cb             	dec    %r11
     f3b:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f40:	45 8b 36             	mov    (%r14),%r14d
     f43:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     f48:	4d 89 dd             	mov    %r11,%r13
     f4b:	4c 3b d9             	cmp    %rcx,%r11
     f4e:	0f 8d 9a 00 00 00    	jge    fee <_ZN9try_float4sortENS_3ArrEm+0x61e>
     f54:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     f5b:	00 
     f5c:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f61:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     f67:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     f6c:	76 08                	jbe    f76 <_ZN9try_float4sortENS_3ArrEm+0x5a6>
     f6e:	49 ff cb             	dec    %r11
     f71:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f76:	45 8b 36             	mov    (%r14),%r14d
     f79:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     f7e:	4d 89 dd             	mov    %r11,%r13
     f81:	4c 3b d9             	cmp    %rcx,%r11
     f84:	7d 68                	jge    fee <_ZN9try_float4sortENS_3ArrEm+0x61e>
     f86:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     f8d:	00 
     f8e:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     f93:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     f99:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     f9e:	76 08                	jbe    fa8 <_ZN9try_float4sortENS_3ArrEm+0x5d8>
     fa0:	49 ff cb             	dec    %r11
     fa3:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     fa8:	45 8b 36             	mov    (%r14),%r14d
     fab:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     fb0:	4d 89 dd             	mov    %r11,%r13
     fb3:	4c 3b d9             	cmp    %rcx,%r11
     fb6:	7d 36                	jge    fee <_ZN9try_float4sortENS_3ArrEm+0x61e>
     fb8:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
     fbf:	00 
     fc0:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     fc5:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
     fcb:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
     fd0:	76 08                	jbe    fda <_ZN9try_float4sortENS_3ArrEm+0x60a>
     fd2:	49 ff cb             	dec    %r11
     fd5:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
     fda:	45 8b 36             	mov    (%r14),%r14d
     fdd:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
     fe2:	4d 89 dd             	mov    %r11,%r13
     fe5:	4c 3b d9             	cmp    %rcx,%r11
     fe8:	0f 8c 58 fe ff ff    	jl     e46 <_ZN9try_float4sortENS_3ArrEm+0x476>
     fee:	48 85 c0             	test   %rax,%rax
     ff1:	75 1b                	jne    100e <_ZN9try_float4sortENS_3ArrEm+0x63e>
     ff3:	4c 3b da             	cmp    %rdx,%r11
     ff6:	75 16                	jne    100e <_ZN9try_float4sortENS_3ArrEm+0x63e>
     ff8:	4e 8d 34 5d 02 00 00 	lea    0x2(,%r11,2),%r14
     fff:	00 
    1000:	46 8b 5c b4 3c       	mov    0x3c(%rsp,%r14,4),%r11d
    1005:	46 89 5c ac 40       	mov    %r11d,0x40(%rsp,%r13,4)
    100a:	4d 8d 6e ff          	lea    -0x1(%r14),%r13
    100e:	4d 8d 5d ff          	lea    -0x1(%r13),%r11
    1012:	49 c1 eb 3f          	shr    $0x3f,%r11
    1016:	4f 8d 5c 1d ff       	lea    -0x1(%r13,%r11,1),%r11
    101b:	49 d1 fb             	sar    %r11
    101e:	4d 3b ec             	cmp    %r12,%r13
    1021:	7e 2c                	jle    104f <_ZN9try_float4sortENS_3ArrEm+0x67f>
    1023:	c4 a1 7a 10 4c 9c 40 	vmovss 0x40(%rsp,%r11,4),%xmm1
    102a:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    102e:	76 1f                	jbe    104f <_ZN9try_float4sortENS_3ArrEm+0x67f>
    1030:	c4 a1 7a 11 4c ac 40 	vmovss %xmm1,0x40(%rsp,%r13,4)
    1037:	4d 8d 73 ff          	lea    -0x1(%r11),%r14
    103b:	49 c1 ee 3f          	shr    $0x3f,%r14
    103f:	4d 89 dd             	mov    %r11,%r13
    1042:	4f 8d 5c 33 ff       	lea    -0x1(%r11,%r14,1),%r11
    1047:	49 d1 fb             	sar    %r11
    104a:	4d 3b ec             	cmp    %r12,%r13
    104d:	7f d4                	jg     1023 <_ZN9try_float4sortENS_3ArrEm+0x653>
    104f:	0f 1f 00             	nopl   (%rax)
    1052:	c4 a1 7a 11 44 ac 40 	vmovss %xmm0,0x40(%rsp,%r13,4)
    1059:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
    105d:	0f 85 c4 fd ff ff    	jne    e27 <_ZN9try_float4sortENS_3ArrEm+0x457>
    1063:	44 8b 5c 24 40       	mov    0x40(%rsp),%r11d
    1068:	45 33 c0             	xor    %r8d,%r8d
    106b:	49 ff c0             	inc    %r8
    106e:	33 ff                	xor    %edi,%edi
    1070:	33 c0                	xor    %eax,%eax
    1072:	33 d2                	xor    %edx,%edx
    1074:	4a 8d 0c 85 00 00 00 	lea    0x0(,%r8,4),%rcx
    107b:	00 
    107c:	48 f7 d9             	neg    %rcx
    107f:	48 03 ce             	add    %rsi,%rcx
    1082:	c5 fa 10 01          	vmovss (%rcx),%xmm0
    1086:	44 89 19             	mov    %r11d,(%rcx)
    1089:	4a 8d 4c 84 40       	lea    0x40(%rsp,%r8,4),%rcx
    108e:	48 f7 d9             	neg    %rcx
    1091:	48 03 ce             	add    %rsi,%rcx
    1094:	48 c1 f9 02          	sar    $0x2,%rcx
    1098:	48 85 c9             	test   %rcx,%rcx
    109b:	0f 9e c0             	setle  %al
    109e:	48 8d 44 01 ff       	lea    -0x1(%rcx,%rax,1),%rax
    10a3:	48 d1 f8             	sar    %rax
    10a6:	48 85 c0             	test   %rax,%rax
    10a9:	7e 6a                	jle    1115 <_ZN9try_float4sortENS_3ArrEm+0x745>
    10ab:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    10b2:	00 
    10b3:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    10b8:	c4 c1 7a 10 4c 24 fc 	vmovss -0x4(%r12),%xmm1
    10bf:	c4 c1 78 2f 0c 24    	vcomiss (%r12),%xmm1
    10c5:	76 08                	jbe    10cf <_ZN9try_float4sortENS_3ArrEm+0x6ff>
    10c7:	48 ff ca             	dec    %rdx
    10ca:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    10cf:	45 8b 24 24          	mov    (%r12),%r12d
    10d3:	44 89 64 bc 40       	mov    %r12d,0x40(%rsp,%rdi,4)
    10d8:	48 89 d7             	mov    %rdx,%rdi
    10db:	48 3b d0             	cmp    %rax,%rdx
    10de:	7d 35                	jge    1115 <_ZN9try_float4sortENS_3ArrEm+0x745>
    10e0:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    10e7:	00 
    10e8:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    10ed:	c4 c1 7a 10 4c 24 fc 	vmovss -0x4(%r12),%xmm1
    10f4:	c4 c1 78 2f 0c 24    	vcomiss (%r12),%xmm1
    10fa:	76 08                	jbe    1104 <_ZN9try_float4sortENS_3ArrEm+0x734>
    10fc:	48 ff ca             	dec    %rdx
    10ff:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    1104:	45 8b 24 24          	mov    (%r12),%r12d
    1108:	44 89 64 bc 40       	mov    %r12d,0x40(%rsp,%rdi,4)
    110d:	48 89 d7             	mov    %rdx,%rdi
    1110:	48 3b d0             	cmp    %rax,%rdx
    1113:	7c 96                	jl     10ab <_ZN9try_float4sortENS_3ArrEm+0x6db>
    1115:	48 f7 c1 01 00 00 00 	test   $0x1,%rcx
    111c:	75 29                	jne    1147 <_ZN9try_float4sortENS_3ArrEm+0x777>
    111e:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
    1122:	48 c1 e8 3f          	shr    $0x3f,%rax
    1126:	4c 8d 64 01 fe       	lea    -0x2(%rcx,%rax,1),%r12
    112b:	49 d1 fc             	sar    %r12
    112e:	49 3b d4             	cmp    %r12,%rdx
    1131:	75 14                	jne    1147 <_ZN9try_float4sortENS_3ArrEm+0x777>
    1133:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    113a:	00 
    113b:	8b 44 94 3c          	mov    0x3c(%rsp,%rdx,4),%eax
    113f:	89 44 bc 40          	mov    %eax,0x40(%rsp,%rdi,4)
    1143:	48 8d 7a ff          	lea    -0x1(%rdx),%rdi
    1147:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    114b:	48 c1 e8 3f          	shr    $0x3f,%rax
    114f:	48 8d 44 07 ff       	lea    -0x1(%rdi,%rax,1),%rax
    1154:	48 d1 f8             	sar    %rax
    1157:	48 85 ff             	test   %rdi,%rdi
    115a:	7e 2a                	jle    1186 <_ZN9try_float4sortENS_3ArrEm+0x7b6>
    115c:	c5 fa 10 4c 84 40    	vmovss 0x40(%rsp,%rax,4),%xmm1
    1162:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    1166:	76 1e                	jbe    1186 <_ZN9try_float4sortENS_3ArrEm+0x7b6>
    1168:	c5 fa 11 4c bc 40    	vmovss %xmm1,0x40(%rsp,%rdi,4)
    116e:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    1172:	48 c1 ea 3f          	shr    $0x3f,%rdx
    1176:	48 89 c7             	mov    %rax,%rdi
    1179:	48 8d 44 10 ff       	lea    -0x1(%rax,%rdx,1),%rax
    117e:	48 d1 f8             	sar    %rax
    1181:	48 85 ff             	test   %rdi,%rdi
    1184:	7f d6                	jg     115c <_ZN9try_float4sortENS_3ArrEm+0x78c>
    1186:	0f 1f 40 00          	nopl   0x0(%rax)
    118a:	c5 fa 11 44 bc 40    	vmovss %xmm0,0x40(%rsp,%rdi,4)
    1190:	48 83 f9 01          	cmp    $0x1,%rcx
    1194:	0f 8f d1 fe ff ff    	jg     106b <_ZN9try_float4sortENS_3ArrEm+0x69b>
    119a:	e9 bd fa ff ff       	jmpq   c5c <_ZN9try_float4sortENS_3ArrEm+0x28c>
    119f:	4d 3b d1             	cmp    %r9,%r10
    11a2:	0f 84 42 f8 ff ff    	je     9ea <_ZN9try_float4sortENS_3ArrEm+0x1a>
    11a8:	33 d2                	xor    %edx,%edx
    11aa:	48 8d 4c 24 44       	lea    0x44(%rsp),%rcx
    11af:	33 c0                	xor    %eax,%eax
    11b1:	49 3b c9             	cmp    %r9,%rcx
    11b4:	0f 84 30 f8 ff ff    	je     9ea <_ZN9try_float4sortENS_3ArrEm+0x1a>
    11ba:	4c 89 ce             	mov    %r9,%rsi
    11bd:	49 89 c4             	mov    %rax,%r12
    11c0:	48 2b f1             	sub    %rcx,%rsi
    11c3:	49 89 d5             	mov    %rdx,%r13
    11c6:	48 83 c6 03          	add    $0x3,%rsi
    11ca:	49 89 ce             	mov    %rcx,%r14
    11cd:	48 d1 fe             	sar    %rsi
    11d0:	4d 89 d7             	mov    %r10,%r15
    11d3:	48 c1 ee 3e          	shr    $0x3e,%rsi
    11d7:	4c 03 ce             	add    %rsi,%r9
    11da:	4c 2b c9             	sub    %rcx,%r9
    11dd:	49 83 c1 03          	add    $0x3,%r9
    11e1:	49 c1 f9 02          	sar    $0x2,%r9
    11e5:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    11ea:	4c 89 cb             	mov    %r9,%rbx
    11ed:	c4 81 7a 10 0c 34    	vmovss (%r12,%r14,1),%xmm1
    11f3:	c5 fa 10 44 24 40    	vmovss 0x40(%rsp),%xmm0
    11f9:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    11fd:	76 37                	jbe    1236 <_ZN9try_float4sortENS_3ArrEm+0x866>
    11ff:	49 8d 54 24 04       	lea    0x4(%r12),%rdx
    1204:	48 c1 fa 02          	sar    $0x2,%rdx
    1208:	48 85 d2             	test   %rdx,%rdx
    120b:	74 21                	je     122e <_ZN9try_float4sortENS_3ArrEm+0x85e>
    120d:	48 c1 e2 02          	shl    $0x2,%rdx
    1211:	4d 89 f0             	mov    %r14,%r8
    1214:	4c 2b c2             	sub    %rdx,%r8
    1217:	4c 89 fe             	mov    %r15,%rsi
    121a:	c5 fa 11 0c 24       	vmovss %xmm1,(%rsp)
    121f:	4b 8d 7c 04 04       	lea    0x4(%r12,%r8,1),%rdi
    1224:	e8 00 00 00 00       	callq  1229 <_ZN9try_float4sortENS_3ArrEm+0x859>
    1229:	c5 fa 10 0c 24       	vmovss (%rsp),%xmm1
    122e:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
    1234:	eb 54                	jmp    128a <_ZN9try_float4sortENS_3ArrEm+0x8ba>
    1236:	c4 a1 7a 10 44 24 40 	vmovss 0x40(%rsp,%r12,1),%xmm0
    123d:	4f 8d 1c 26          	lea    (%r14,%r12,1),%r11
    1241:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    1245:	76 3e                	jbe    1285 <_ZN9try_float4sortENS_3ArrEm+0x8b5>
    1247:	45 33 c0             	xor    %r8d,%r8d
    124a:	4b 8d 3c 26          	lea    (%r14,%r12,1),%rdi
    124e:	49 ff c0             	inc    %r8
    1251:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    1256:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
    125d:	00 
    125e:	48 f7 d8             	neg    %rax
    1261:	48 03 c7             	add    %rdi,%rax
    1264:	c5 fa 10 00          	vmovss (%rax),%xmm0
    1268:	4c 8d 58 04          	lea    0x4(%rax),%r11
    126c:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    1270:	76 13                	jbe    1285 <_ZN9try_float4sortENS_3ArrEm+0x8b5>
    1272:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    1277:	49 89 c3             	mov    %rax,%r11
    127a:	c5 fa 10 40 fc       	vmovss -0x4(%rax),%xmm0
    127f:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    1283:	77 c9                	ja     124e <_ZN9try_float4sortENS_3ArrEm+0x87e>
    1285:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    128a:	49 ff c5             	inc    %r13
    128d:	49 83 c4 04          	add    $0x4,%r12
    1291:	4c 3b eb             	cmp    %rbx,%r13
    1294:	0f 82 53 ff ff ff    	jb     11ed <_ZN9try_float4sortENS_3ArrEm+0x81d>
    129a:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    129f:	e9 46 f7 ff ff       	jmpq   9ea <_ZN9try_float4sortENS_3ArrEm+0x1a>
    12a4:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    12a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012b0 <_ZN9try_float4fillENS_3ArrEm>:
    12b0:	55                   	push   %rbp
    12b1:	48 89 e5             	mov    %rsp,%rbp
    12b4:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    12b8:	48 89 fa             	mov    %rdi,%rdx
    12bb:	48 85 d2             	test   %rdx,%rdx
    12be:	77 08                	ja     12c8 <_ZN9try_float4fillENS_3ArrEm+0x18>
    12c0:	c5 f8 77             	vzeroupper 
    12c3:	48 89 ec             	mov    %rbp,%rsp
    12c6:	5d                   	pop    %rbp
    12c7:	c3                   	retq   
    12c8:	48 83 fa 18          	cmp    $0x18,%rdx
    12cc:	72 11                	jb     12df <_ZN9try_float4fillENS_3ArrEm+0x2f>
    12ce:	48 c1 e2 02          	shl    $0x2,%rdx
    12d2:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    12d6:	33 f6                	xor    %esi,%esi
    12d8:	e8 00 00 00 00       	callq  12dd <_ZN9try_float4fillENS_3ArrEm+0x2d>
    12dd:	eb e1                	jmp    12c0 <_ZN9try_float4fillENS_3ArrEm+0x10>
    12df:	48 83 fa 08          	cmp    $0x8,%rdx
    12e3:	72 31                	jb     1316 <_ZN9try_float4fillENS_3ArrEm+0x66>
    12e5:	48 89 d1             	mov    %rdx,%rcx
    12e8:	33 c0                	xor    %eax,%eax
    12ea:	c5 fc 57 c0          	vxorps %ymm0,%ymm0,%ymm0
    12ee:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    12f2:	c5 fc 11 44 85 10    	vmovups %ymm0,0x10(%rbp,%rax,4)
    12f8:	48 83 c0 08          	add    $0x8,%rax
    12fc:	48 3b c1             	cmp    %rcx,%rax
    12ff:	72 f1                	jb     12f2 <_ZN9try_float4fillENS_3ArrEm+0x42>
    1301:	48 3b ca             	cmp    %rdx,%rcx
    1304:	73 ba                	jae    12c0 <_ZN9try_float4fillENS_3ArrEm+0x10>
    1306:	33 c0                	xor    %eax,%eax
    1308:	89 44 8d 10          	mov    %eax,0x10(%rbp,%rcx,4)
    130c:	48 ff c1             	inc    %rcx
    130f:	48 3b ca             	cmp    %rdx,%rcx
    1312:	72 f4                	jb     1308 <_ZN9try_float4fillENS_3ArrEm+0x58>
    1314:	eb aa                	jmp    12c0 <_ZN9try_float4fillENS_3ArrEm+0x10>
    1316:	33 c9                	xor    %ecx,%ecx
    1318:	eb e7                	jmp    1301 <_ZN9try_float4fillENS_3ArrEm+0x51>
    131a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001320 <_ZN9try_float9transformENS_3ArrES0_m>:
    1320:	48 c1 e7 02          	shl    $0x2,%rdi
    1324:	48 c1 ff 02          	sar    $0x2,%rdi
    1328:	48 85 ff             	test   %rdi,%rdi
    132b:	0f 8e 01 01 00 00    	jle    1432 <_ZN9try_float9transformENS_3ArrES0_m+0x112>
    1331:	48 83 ff 10          	cmp    $0x10,%rdi
    1335:	0f 8c 93 00 00 00    	jl     13ce <_ZN9try_float9transformENS_3ArrES0_m+0xae>
    133b:	48 83 ff 1d          	cmp    $0x1d,%rdi
    133f:	0f 8c f1 00 00 00    	jl     1436 <_ZN9try_float9transformENS_3ArrES0_m+0x116>
    1345:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    134a:	48 83 e1 1f          	and    $0x1f,%rcx
    134e:	74 0b                	je     135b <_ZN9try_float9transformENS_3ArrES0_m+0x3b>
    1350:	48 f7 d9             	neg    %rcx
    1353:	48 83 c1 20          	add    $0x20,%rcx
    1357:	48 c1 e9 02          	shr    $0x2,%rcx
    135b:	48 8d 41 10          	lea    0x10(%rcx),%rax
    135f:	48 3b f8             	cmp    %rax,%rdi
    1362:	7c 6a                	jl     13ce <_ZN9try_float9transformENS_3ArrES0_m+0xae>
    1364:	48 89 f8             	mov    %rdi,%rax
    1367:	33 d2                	xor    %edx,%edx
    1369:	48 2b c1             	sub    %rcx,%rax
    136c:	48 83 e0 0f          	and    $0xf,%rax
    1370:	48 f7 d8             	neg    %rax
    1373:	48 03 c7             	add    %rdi,%rax
    1376:	48 85 c9             	test   %rcx,%rcx
    1379:	76 1e                	jbe    1399 <_ZN9try_float9transformENS_3ArrES0_m+0x79>
    137b:	c5 fa 2c 74 94 08    	vcvttss2si 0x8(%rsp,%rdx,4),%esi
    1381:	03 f6                	add    %esi,%esi
    1383:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    1387:	c5 fa 2a c6          	vcvtsi2ss %esi,%xmm0,%xmm0
    138b:	c5 fa 11 44 94 08    	vmovss %xmm0,0x8(%rsp,%rdx,4)
    1391:	48 ff c2             	inc    %rdx
    1394:	48 3b d1             	cmp    %rcx,%rdx
    1397:	72 e2                	jb     137b <_ZN9try_float9transformENS_3ArrES0_m+0x5b>
    1399:	c5 fe 5b 44 8c 08    	vcvttps2dq 0x8(%rsp,%rcx,4),%ymm0
    139f:	c5 fe 5b 5c 8c 28    	vcvttps2dq 0x28(%rsp,%rcx,4),%ymm3
    13a5:	c5 f5 72 f0 01       	vpslld $0x1,%ymm0,%ymm1
    13aa:	c5 dd 72 f3 01       	vpslld $0x1,%ymm3,%ymm4
    13af:	c5 fc 5b d1          	vcvtdq2ps %ymm1,%ymm2
    13b3:	c5 fc 5b ec          	vcvtdq2ps %ymm4,%ymm5
    13b7:	c5 fc 11 54 8c 08    	vmovups %ymm2,0x8(%rsp,%rcx,4)
    13bd:	c5 fc 11 6c 8c 28    	vmovups %ymm5,0x28(%rsp,%rcx,4)
    13c3:	48 83 c1 10          	add    $0x10,%rcx
    13c7:	48 3b c8             	cmp    %rax,%rcx
    13ca:	72 cd                	jb     1399 <_ZN9try_float9transformENS_3ArrES0_m+0x79>
    13cc:	eb 02                	jmp    13d0 <_ZN9try_float9transformENS_3ArrES0_m+0xb0>
    13ce:	33 c0                	xor    %eax,%eax
    13d0:	48 8d 50 01          	lea    0x1(%rax),%rdx
    13d4:	48 3b d7             	cmp    %rdi,%rdx
    13d7:	77 59                	ja     1432 <_ZN9try_float9transformENS_3ArrES0_m+0x112>
    13d9:	48 2b f8             	sub    %rax,%rdi
    13dc:	48 83 ff 04          	cmp    $0x4,%rdi
    13e0:	7c 62                	jl     1444 <_ZN9try_float9transformENS_3ArrES0_m+0x124>
    13e2:	48 89 fa             	mov    %rdi,%rdx
    13e5:	33 f6                	xor    %esi,%esi
    13e7:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    13eb:	48 8d 4c 84 08       	lea    0x8(%rsp,%rax,4),%rcx
    13f0:	c5 fa 5b 04 b1       	vcvttps2dq (%rcx,%rsi,4),%xmm0
    13f5:	c5 f1 72 f0 01       	vpslld $0x1,%xmm0,%xmm1
    13fa:	c5 f8 5b d1          	vcvtdq2ps %xmm1,%xmm2
    13fe:	c5 f8 11 14 b1       	vmovups %xmm2,(%rcx,%rsi,4)
    1403:	48 83 c6 04          	add    $0x4,%rsi
    1407:	48 3b f2             	cmp    %rdx,%rsi
    140a:	72 e4                	jb     13f0 <_ZN9try_float9transformENS_3ArrES0_m+0xd0>
    140c:	48 3b d7             	cmp    %rdi,%rdx
    140f:	73 21                	jae    1432 <_ZN9try_float9transformENS_3ArrES0_m+0x112>
    1411:	48 8d 44 84 08       	lea    0x8(%rsp,%rax,4),%rax
    1416:	c5 fa 2c 0c 90       	vcvttss2si (%rax,%rdx,4),%ecx
    141b:	03 c9                	add    %ecx,%ecx
    141d:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    1421:	c5 fa 2a c1          	vcvtsi2ss %ecx,%xmm0,%xmm0
    1425:	c5 fa 11 04 90       	vmovss %xmm0,(%rax,%rdx,4)
    142a:	48 ff c2             	inc    %rdx
    142d:	48 3b d7             	cmp    %rdi,%rdx
    1430:	72 e4                	jb     1416 <_ZN9try_float9transformENS_3ArrES0_m+0xf6>
    1432:	c5 f8 77             	vzeroupper 
    1435:	c3                   	retq   
    1436:	48 89 f8             	mov    %rdi,%rax
    1439:	33 c9                	xor    %ecx,%ecx
    143b:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    143f:	e9 55 ff ff ff       	jmpq   1399 <_ZN9try_float9transformENS_3ArrES0_m+0x79>
    1444:	33 d2                	xor    %edx,%edx
    1446:	eb c4                	jmp    140c <_ZN9try_float9transformENS_3ArrES0_m+0xec>
    1448:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    144f:	00 

0000000000001450 <_ZN9try_float11transform32ENS_3ArrES0_m>:
    1450:	48 c1 e7 05          	shl    $0x5,%rdi
    1454:	48 c1 ff 02          	sar    $0x2,%rdi
    1458:	48 85 ff             	test   %rdi,%rdi
    145b:	0f 8e 01 01 00 00    	jle    1562 <_ZN9try_float11transform32ENS_3ArrES0_m+0x112>
    1461:	48 83 ff 10          	cmp    $0x10,%rdi
    1465:	0f 8c 93 00 00 00    	jl     14fe <_ZN9try_float11transform32ENS_3ArrES0_m+0xae>
    146b:	48 83 ff 1d          	cmp    $0x1d,%rdi
    146f:	0f 8c f1 00 00 00    	jl     1566 <_ZN9try_float11transform32ENS_3ArrES0_m+0x116>
    1475:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    147a:	48 83 e1 1f          	and    $0x1f,%rcx
    147e:	74 0b                	je     148b <_ZN9try_float11transform32ENS_3ArrES0_m+0x3b>
    1480:	48 f7 d9             	neg    %rcx
    1483:	48 83 c1 20          	add    $0x20,%rcx
    1487:	48 c1 e9 02          	shr    $0x2,%rcx
    148b:	48 8d 41 10          	lea    0x10(%rcx),%rax
    148f:	48 3b f8             	cmp    %rax,%rdi
    1492:	7c 6a                	jl     14fe <_ZN9try_float11transform32ENS_3ArrES0_m+0xae>
    1494:	48 89 f8             	mov    %rdi,%rax
    1497:	33 d2                	xor    %edx,%edx
    1499:	48 2b c1             	sub    %rcx,%rax
    149c:	48 83 e0 0f          	and    $0xf,%rax
    14a0:	48 f7 d8             	neg    %rax
    14a3:	48 03 c7             	add    %rdi,%rax
    14a6:	48 85 c9             	test   %rcx,%rcx
    14a9:	76 1e                	jbe    14c9 <_ZN9try_float11transform32ENS_3ArrES0_m+0x79>
    14ab:	c5 fa 2c 74 94 08    	vcvttss2si 0x8(%rsp,%rdx,4),%esi
    14b1:	03 f6                	add    %esi,%esi
    14b3:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    14b7:	c5 fa 2a c6          	vcvtsi2ss %esi,%xmm0,%xmm0
    14bb:	c5 fa 11 44 94 08    	vmovss %xmm0,0x8(%rsp,%rdx,4)
    14c1:	48 ff c2             	inc    %rdx
    14c4:	48 3b d1             	cmp    %rcx,%rdx
    14c7:	72 e2                	jb     14ab <_ZN9try_float11transform32ENS_3ArrES0_m+0x5b>
    14c9:	c5 fe 5b 44 8c 08    	vcvttps2dq 0x8(%rsp,%rcx,4),%ymm0
    14cf:	c5 fe 5b 5c 8c 28    	vcvttps2dq 0x28(%rsp,%rcx,4),%ymm3
    14d5:	c5 f5 72 f0 01       	vpslld $0x1,%ymm0,%ymm1
    14da:	c5 dd 72 f3 01       	vpslld $0x1,%ymm3,%ymm4
    14df:	c5 fc 5b d1          	vcvtdq2ps %ymm1,%ymm2
    14e3:	c5 fc 5b ec          	vcvtdq2ps %ymm4,%ymm5
    14e7:	c5 fc 11 54 8c 08    	vmovups %ymm2,0x8(%rsp,%rcx,4)
    14ed:	c5 fc 11 6c 8c 28    	vmovups %ymm5,0x28(%rsp,%rcx,4)
    14f3:	48 83 c1 10          	add    $0x10,%rcx
    14f7:	48 3b c8             	cmp    %rax,%rcx
    14fa:	72 cd                	jb     14c9 <_ZN9try_float11transform32ENS_3ArrES0_m+0x79>
    14fc:	eb 02                	jmp    1500 <_ZN9try_float11transform32ENS_3ArrES0_m+0xb0>
    14fe:	33 c0                	xor    %eax,%eax
    1500:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1504:	48 3b d7             	cmp    %rdi,%rdx
    1507:	77 59                	ja     1562 <_ZN9try_float11transform32ENS_3ArrES0_m+0x112>
    1509:	48 2b f8             	sub    %rax,%rdi
    150c:	48 83 ff 04          	cmp    $0x4,%rdi
    1510:	7c 62                	jl     1574 <_ZN9try_float11transform32ENS_3ArrES0_m+0x124>
    1512:	48 89 fa             	mov    %rdi,%rdx
    1515:	33 f6                	xor    %esi,%esi
    1517:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    151b:	48 8d 4c 84 08       	lea    0x8(%rsp,%rax,4),%rcx
    1520:	c5 fa 5b 04 b1       	vcvttps2dq (%rcx,%rsi,4),%xmm0
    1525:	c5 f1 72 f0 01       	vpslld $0x1,%xmm0,%xmm1
    152a:	c5 f8 5b d1          	vcvtdq2ps %xmm1,%xmm2
    152e:	c5 f8 11 14 b1       	vmovups %xmm2,(%rcx,%rsi,4)
    1533:	48 83 c6 04          	add    $0x4,%rsi
    1537:	48 3b f2             	cmp    %rdx,%rsi
    153a:	72 e4                	jb     1520 <_ZN9try_float11transform32ENS_3ArrES0_m+0xd0>
    153c:	48 3b d7             	cmp    %rdi,%rdx
    153f:	73 21                	jae    1562 <_ZN9try_float11transform32ENS_3ArrES0_m+0x112>
    1541:	48 8d 44 84 08       	lea    0x8(%rsp,%rax,4),%rax
    1546:	c5 fa 2c 0c 90       	vcvttss2si (%rax,%rdx,4),%ecx
    154b:	03 c9                	add    %ecx,%ecx
    154d:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    1551:	c5 fa 2a c1          	vcvtsi2ss %ecx,%xmm0,%xmm0
    1555:	c5 fa 11 04 90       	vmovss %xmm0,(%rax,%rdx,4)
    155a:	48 ff c2             	inc    %rdx
    155d:	48 3b d7             	cmp    %rdi,%rdx
    1560:	72 e4                	jb     1546 <_ZN9try_float11transform32ENS_3ArrES0_m+0xf6>
    1562:	c5 f8 77             	vzeroupper 
    1565:	c3                   	retq   
    1566:	48 89 f8             	mov    %rdi,%rax
    1569:	33 c9                	xor    %ecx,%ecx
    156b:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    156f:	e9 55 ff ff ff       	jmpq   14c9 <_ZN9try_float11transform32ENS_3ArrES0_m+0x79>
    1574:	33 d2                	xor    %edx,%edx
    1576:	eb c4                	jmp    153c <_ZN9try_float11transform32ENS_3ArrES0_m+0xec>
    1578:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    157f:	00 

0000000000001580 <_ZN11try_int_seq4sortENS_3ArrEm>:
    1580:	41 54                	push   %r12
    1582:	41 55                	push   %r13
    1584:	41 57                	push   %r15
    1586:	53                   	push   %rbx
    1587:	55                   	push   %rbp
    1588:	48 83 ec 10          	sub    $0x10,%rsp
    158c:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
    1591:	48 8d 04 be          	lea    (%rsi,%rdi,4),%rax
    1595:	48 3b f0             	cmp    %rax,%rsi
    1598:	75 0d                	jne    15a7 <_ZN11try_int_seq4sortENS_3ArrEm+0x27>
    159a:	48 83 c4 10          	add    $0x10,%rsp
    159e:	5d                   	pop    %rbp
    159f:	5b                   	pop    %rbx
    15a0:	41 5f                	pop    %r15
    15a2:	41 5d                	pop    %r13
    15a4:	41 5c                	pop    %r12
    15a6:	c3                   	retq   
    15a7:	48 89 c1             	mov    %rax,%rcx
    15aa:	49 89 c0             	mov    %rax,%r8
    15ad:	48 2b ce             	sub    %rsi,%rcx
    15b0:	48 c1 f9 02          	sar    $0x2,%rcx
    15b4:	f3 48 0f bd d1       	lzcnt  %rcx,%rdx
    15b9:	48 03 d2             	add    %rdx,%rdx
    15bc:	48 f7 da             	neg    %rdx
    15bf:	48 83 c2 7e          	add    $0x7e,%rdx
    15c3:	48 83 f9 10          	cmp    $0x10,%rcx
    15c7:	0f 8e be 06 00 00    	jle    1c8b <_ZN11try_int_seq4sortENS_3ArrEm+0x70b>
    15cd:	48 89 c5             	mov    %rax,%rbp
    15d0:	49 89 d7             	mov    %rdx,%r15
    15d3:	49 89 f4             	mov    %rsi,%r12
    15d6:	4c 89 c1             	mov    %r8,%rcx
    15d9:	49 2b cc             	sub    %r12,%rcx
    15dc:	48 c1 f9 02          	sar    $0x2,%rcx
    15e0:	4d 85 ff             	test   %r15,%r15
    15e3:	0f 84 05 03 00 00    	je     18ee <_ZN11try_int_seq4sortENS_3ArrEm+0x36e>
    15e9:	48 89 cb             	mov    %rcx,%rbx
    15ec:	49 ff cf             	dec    %r15
    15ef:	48 c1 eb 3f          	shr    $0x3f,%rbx
    15f3:	48 03 cb             	add    %rbx,%rcx
    15f6:	48 d1 f9             	sar    %rcx
    15f9:	44 8b 54 24 44       	mov    0x44(%rsp),%r10d
    15fe:	41 8b 58 fc          	mov    -0x4(%r8),%ebx
    1602:	8b 7c 8c 40          	mov    0x40(%rsp,%rcx,4),%edi
    1606:	44 3b d7             	cmp    %edi,%r10d
    1609:	7d 2f                	jge    163a <_ZN11try_int_seq4sortENS_3ArrEm+0xba>
    160b:	3b fb                	cmp    %ebx,%edi
    160d:	7c 16                	jl     1625 <_ZN11try_int_seq4sortENS_3ArrEm+0xa5>
    160f:	44 3b d3             	cmp    %ebx,%r10d
    1612:	7d 31                	jge    1645 <_ZN11try_int_seq4sortENS_3ArrEm+0xc5>
    1614:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    1618:	41 89 da             	mov    %ebx,%r10d
    161b:	89 5c 24 40          	mov    %ebx,0x40(%rsp)
    161f:	41 89 48 fc          	mov    %ecx,-0x4(%r8)
    1623:	eb 2d                	jmp    1652 <_ZN11try_int_seq4sortENS_3ArrEm+0xd2>
    1625:	8b 5c 24 40          	mov    0x40(%rsp),%ebx
    1629:	48 c1 e1 02          	shl    $0x2,%rcx
    162d:	89 7c 24 40          	mov    %edi,0x40(%rsp)
    1631:	41 89 fa             	mov    %edi,%r10d
    1634:	89 5c 0c 40          	mov    %ebx,0x40(%rsp,%rcx,1)
    1638:	eb 18                	jmp    1652 <_ZN11try_int_seq4sortENS_3ArrEm+0xd2>
    163a:	44 3b d3             	cmp    %ebx,%r10d
    163d:	7c 06                	jl     1645 <_ZN11try_int_seq4sortENS_3ArrEm+0xc5>
    163f:	3b fb                	cmp    %ebx,%edi
    1641:	7c d1                	jl     1614 <_ZN11try_int_seq4sortENS_3ArrEm+0x94>
    1643:	eb e0                	jmp    1625 <_ZN11try_int_seq4sortENS_3ArrEm+0xa5>
    1645:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    1649:	44 89 54 24 40       	mov    %r10d,0x40(%rsp)
    164e:	89 4c 24 44          	mov    %ecx,0x44(%rsp)
    1652:	4d 89 c1             	mov    %r8,%r9
    1655:	48 8d 5c 24 44       	lea    0x44(%rsp),%rbx
    165a:	eb 0f                	jmp    166b <_ZN11try_int_seq4sortENS_3ArrEm+0xeb>
    165c:	44 89 1b             	mov    %r11d,(%rbx)
    165f:	48 83 c3 04          	add    $0x4,%rbx
    1663:	41 89 09             	mov    %ecx,(%r9)
    1666:	44 8b 54 24 40       	mov    0x40(%rsp),%r10d
    166b:	8b 0b                	mov    (%rbx),%ecx
    166d:	48 89 d8             	mov    %rbx,%rax
    1670:	41 3b ca             	cmp    %r10d,%ecx
    1673:	7d 70                	jge    16e5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    1675:	45 33 db             	xor    %r11d,%r11d
    1678:	49 83 c3 20          	add    $0x20,%r11
    167c:	4a 8d 14 18          	lea    (%rax,%r11,1),%rdx
    1680:	8b 4a e4             	mov    -0x1c(%rdx),%ecx
    1683:	4a 8d 5c 18 e4       	lea    -0x1c(%rax,%r11,1),%rbx
    1688:	41 3b ca             	cmp    %r10d,%ecx
    168b:	7d 58                	jge    16e5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    168d:	8b 4a e8             	mov    -0x18(%rdx),%ecx
    1690:	4a 8d 5c 18 e8       	lea    -0x18(%rax,%r11,1),%rbx
    1695:	41 3b ca             	cmp    %r10d,%ecx
    1698:	7d 4b                	jge    16e5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    169a:	8b 4a ec             	mov    -0x14(%rdx),%ecx
    169d:	4a 8d 5c 18 ec       	lea    -0x14(%rax,%r11,1),%rbx
    16a2:	41 3b ca             	cmp    %r10d,%ecx
    16a5:	7d 3e                	jge    16e5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    16a7:	8b 4a f0             	mov    -0x10(%rdx),%ecx
    16aa:	4a 8d 5c 18 f0       	lea    -0x10(%rax,%r11,1),%rbx
    16af:	41 3b ca             	cmp    %r10d,%ecx
    16b2:	7d 31                	jge    16e5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    16b4:	8b 4a f4             	mov    -0xc(%rdx),%ecx
    16b7:	4a 8d 5c 18 f4       	lea    -0xc(%rax,%r11,1),%rbx
    16bc:	41 3b ca             	cmp    %r10d,%ecx
    16bf:	7d 24                	jge    16e5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    16c1:	8b 4a f8             	mov    -0x8(%rdx),%ecx
    16c4:	4a 8d 5c 18 f8       	lea    -0x8(%rax,%r11,1),%rbx
    16c9:	41 3b ca             	cmp    %r10d,%ecx
    16cc:	7d 17                	jge    16e5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    16ce:	8b 4a fc             	mov    -0x4(%rdx),%ecx
    16d1:	4a 8d 5c 18 fc       	lea    -0x4(%rax,%r11,1),%rbx
    16d6:	41 3b ca             	cmp    %r10d,%ecx
    16d9:	7d 0a                	jge    16e5 <_ZN11try_int_seq4sortENS_3ArrEm+0x165>
    16db:	8b 0a                	mov    (%rdx),%ecx
    16dd:	48 89 d3             	mov    %rdx,%rbx
    16e0:	41 3b ca             	cmp    %r10d,%ecx
    16e3:	7c 93                	jl     1678 <_ZN11try_int_seq4sortENS_3ArrEm+0xf8>
    16e5:	49 83 c1 fc          	add    $0xfffffffffffffffc,%r9
    16e9:	4c 89 ca             	mov    %r9,%rdx
    16ec:	45 8b 19             	mov    (%r9),%r11d
    16ef:	45 3b d3             	cmp    %r11d,%r10d
    16f2:	7d 77                	jge    176b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    16f4:	33 c0                	xor    %eax,%eax
    16f6:	48 83 c0 e0          	add    $0xffffffffffffffe0,%rax
    16fa:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
    16fe:	44 8b 5e 1c          	mov    0x1c(%rsi),%r11d
    1702:	4c 8d 4c 02 1c       	lea    0x1c(%rdx,%rax,1),%r9
    1707:	45 3b d3             	cmp    %r11d,%r10d
    170a:	7d 5f                	jge    176b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    170c:	44 8b 5e 18          	mov    0x18(%rsi),%r11d
    1710:	4c 8d 4c 02 18       	lea    0x18(%rdx,%rax,1),%r9
    1715:	45 3b d3             	cmp    %r11d,%r10d
    1718:	7d 51                	jge    176b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    171a:	44 8b 5e 14          	mov    0x14(%rsi),%r11d
    171e:	4c 8d 4c 02 14       	lea    0x14(%rdx,%rax,1),%r9
    1723:	45 3b d3             	cmp    %r11d,%r10d
    1726:	7d 43                	jge    176b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    1728:	44 8b 5e 10          	mov    0x10(%rsi),%r11d
    172c:	4c 8d 4c 02 10       	lea    0x10(%rdx,%rax,1),%r9
    1731:	45 3b d3             	cmp    %r11d,%r10d
    1734:	7d 35                	jge    176b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    1736:	44 8b 5e 0c          	mov    0xc(%rsi),%r11d
    173a:	4c 8d 4c 02 0c       	lea    0xc(%rdx,%rax,1),%r9
    173f:	45 3b d3             	cmp    %r11d,%r10d
    1742:	7d 27                	jge    176b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    1744:	44 8b 5e 08          	mov    0x8(%rsi),%r11d
    1748:	4c 8d 4c 02 08       	lea    0x8(%rdx,%rax,1),%r9
    174d:	45 3b d3             	cmp    %r11d,%r10d
    1750:	7d 19                	jge    176b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    1752:	44 8b 5e 04          	mov    0x4(%rsi),%r11d
    1756:	4c 8d 4c 02 04       	lea    0x4(%rdx,%rax,1),%r9
    175b:	45 3b d3             	cmp    %r11d,%r10d
    175e:	7d 0b                	jge    176b <_ZN11try_int_seq4sortENS_3ArrEm+0x1eb>
    1760:	44 8b 1e             	mov    (%rsi),%r11d
    1763:	49 89 f1             	mov    %rsi,%r9
    1766:	45 3b d3             	cmp    %r11d,%r10d
    1769:	7c 8b                	jl     16f6 <_ZN11try_int_seq4sortENS_3ArrEm+0x176>
    176b:	49 3b d9             	cmp    %r9,%rbx
    176e:	0f 82 e8 fe ff ff    	jb     165c <_ZN11try_int_seq4sortENS_3ArrEm+0xdc>
    1774:	48 89 df             	mov    %rbx,%rdi
    1777:	4c 89 c6             	mov    %r8,%rsi
    177a:	4c 89 fa             	mov    %r15,%rdx
    177d:	e8 00 00 00 00       	callq  1782 <_ZN11try_int_seq4sortENS_3ArrEm+0x202>
    1782:	49 89 d8             	mov    %rbx,%r8
    1785:	49 2b dc             	sub    %r12,%rbx
    1788:	48 c1 fb 02          	sar    $0x2,%rbx
    178c:	48 83 fb 10          	cmp    $0x10,%rbx
    1790:	0f 8f 40 fe ff ff    	jg     15d6 <_ZN11try_int_seq4sortENS_3ArrEm+0x56>
    1796:	48 89 e8             	mov    %rbp,%rax
    1799:	4c 89 e6             	mov    %r12,%rsi
    179c:	4c 8d 8c 24 80 00 00 	lea    0x80(%rsp),%r9
    17a3:	00 
    17a4:	49 3b f1             	cmp    %r9,%rsi
    17a7:	0f 84 ba 00 00 00    	je     1867 <_ZN11try_int_seq4sortENS_3ArrEm+0x2e7>
    17ad:	33 c9                	xor    %ecx,%ecx
    17af:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    17b4:	33 d2                	xor    %edx,%edx
    17b6:	4c 89 34 24          	mov    %r14,(%rsp)
    17ba:	48 89 c3             	mov    %rax,%rbx
    17bd:	48 89 d5             	mov    %rdx,%rbp
    17c0:	49 89 cc             	mov    %rcx,%r12
    17c3:	49 89 f7             	mov    %rsi,%r15
    17c6:	49 89 fe             	mov    %rdi,%r14
    17c9:	46 8b 6c 35 00       	mov    0x0(%rbp,%r14,1),%r13d
    17ce:	44 3b 6c 24 40       	cmp    0x40(%rsp),%r13d
    17d3:	7d 2b                	jge    1800 <_ZN11try_int_seq4sortENS_3ArrEm+0x280>
    17d5:	48 8d 55 04          	lea    0x4(%rbp),%rdx
    17d9:	48 c1 fa 02          	sar    $0x2,%rdx
    17dd:	48 85 d2             	test   %rdx,%rdx
    17e0:	74 17                	je     17f9 <_ZN11try_int_seq4sortENS_3ArrEm+0x279>
    17e2:	48 c1 e2 02          	shl    $0x2,%rdx
    17e6:	4d 89 f0             	mov    %r14,%r8
    17e9:	4c 2b c2             	sub    %rdx,%r8
    17ec:	4c 89 fe             	mov    %r15,%rsi
    17ef:	4a 8d 7c 05 04       	lea    0x4(%rbp,%r8,1),%rdi
    17f4:	e8 00 00 00 00       	callq  17f9 <_ZN11try_int_seq4sortENS_3ArrEm+0x279>
    17f9:	44 89 6c 24 40       	mov    %r13d,0x40(%rsp)
    17fe:	eb 47                	jmp    1847 <_ZN11try_int_seq4sortENS_3ArrEm+0x2c7>
    1800:	44 8b 54 2c 40       	mov    0x40(%rsp,%rbp,1),%r10d
    1805:	4d 8d 1c 2e          	lea    (%r14,%rbp,1),%r11
    1809:	45 3b ea             	cmp    %r10d,%r13d
    180c:	7d 36                	jge    1844 <_ZN11try_int_seq4sortENS_3ArrEm+0x2c4>
    180e:	45 33 c9             	xor    %r9d,%r9d
    1811:	4d 8d 04 2e          	lea    (%r14,%rbp,1),%r8
    1815:	49 ff c1             	inc    %r9
    1818:	45 89 13             	mov    %r10d,(%r11)
    181b:	4a 8d 04 cd 00 00 00 	lea    0x0(,%r9,8),%rax
    1822:	00 
    1823:	48 f7 d8             	neg    %rax
    1826:	49 03 c0             	add    %r8,%rax
    1829:	44 8b 10             	mov    (%rax),%r10d
    182c:	4c 8d 58 04          	lea    0x4(%rax),%r11
    1830:	45 3b ea             	cmp    %r10d,%r13d
    1833:	7d 0f                	jge    1844 <_ZN11try_int_seq4sortENS_3ArrEm+0x2c4>
    1835:	45 89 13             	mov    %r10d,(%r11)
    1838:	49 89 c3             	mov    %rax,%r11
    183b:	44 8b 50 fc          	mov    -0x4(%rax),%r10d
    183f:	45 3b ea             	cmp    %r10d,%r13d
    1842:	7c d1                	jl     1815 <_ZN11try_int_seq4sortENS_3ArrEm+0x295>
    1844:	45 89 2b             	mov    %r13d,(%r11)
    1847:	49 ff c4             	inc    %r12
    184a:	48 83 c5 04          	add    $0x4,%rbp
    184e:	49 83 fc 0f          	cmp    $0xf,%r12
    1852:	0f 82 71 ff ff ff    	jb     17c9 <_ZN11try_int_seq4sortENS_3ArrEm+0x249>
    1858:	4c 8b 34 24          	mov    (%rsp),%r14
    185c:	48 89 d8             	mov    %rbx,%rax
    185f:	4c 8d 8c 24 80 00 00 	lea    0x80(%rsp),%r9
    1866:	00 
    1867:	45 33 c0             	xor    %r8d,%r8d
    186a:	4c 3b c8             	cmp    %rax,%r9
    186d:	0f 84 27 fd ff ff    	je     159a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>
    1873:	48 89 c2             	mov    %rax,%rdx
    1876:	49 2b d1             	sub    %r9,%rdx
    1879:	48 83 c2 03          	add    $0x3,%rdx
    187d:	48 d1 fa             	sar    %rdx
    1880:	48 c1 ea 3e          	shr    $0x3e,%rdx
    1884:	48 03 c2             	add    %rdx,%rax
    1887:	49 2b c1             	sub    %r9,%rax
    188a:	48 83 c0 03          	add    $0x3,%rax
    188e:	48 c1 f8 02          	sar    $0x2,%rax
    1892:	43 8b 34 81          	mov    (%r9,%r8,4),%esi
    1896:	4b 8d 3c 81          	lea    (%r9,%r8,4),%rdi
    189a:	46 8b 54 84 7c       	mov    0x7c(%rsp,%r8,4),%r10d
    189f:	41 3b f2             	cmp    %r10d,%esi
    18a2:	7d 35                	jge    18d9 <_ZN11try_int_seq4sortENS_3ArrEm+0x359>
    18a4:	33 c9                	xor    %ecx,%ecx
    18a6:	4b 8d 14 81          	lea    (%r9,%r8,4),%rdx
    18aa:	48 ff c1             	inc    %rcx
    18ad:	44 89 17             	mov    %r10d,(%rdi)
    18b0:	4c 8d 1c cd 00 00 00 	lea    0x0(,%rcx,8),%r11
    18b7:	00 
    18b8:	49 f7 db             	neg    %r11
    18bb:	4c 03 da             	add    %rdx,%r11
    18be:	45 8b 13             	mov    (%r11),%r10d
    18c1:	49 8d 7b 04          	lea    0x4(%r11),%rdi
    18c5:	41 3b f2             	cmp    %r10d,%esi
    18c8:	7d 0f                	jge    18d9 <_ZN11try_int_seq4sortENS_3ArrEm+0x359>
    18ca:	44 89 17             	mov    %r10d,(%rdi)
    18cd:	4c 89 df             	mov    %r11,%rdi
    18d0:	45 8b 53 fc          	mov    -0x4(%r11),%r10d
    18d4:	41 3b f2             	cmp    %r10d,%esi
    18d7:	7c d1                	jl     18aa <_ZN11try_int_seq4sortENS_3ArrEm+0x32a>
    18d9:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    18df:	49 ff c0             	inc    %r8
    18e2:	89 37                	mov    %esi,(%rdi)
    18e4:	4c 3b c0             	cmp    %rax,%r8
    18e7:	72 a9                	jb     1892 <_ZN11try_int_seq4sortENS_3ArrEm+0x312>
    18e9:	e9 ac fc ff ff       	jmpq   159a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>
    18ee:	48 89 e8             	mov    %rbp,%rax
    18f1:	4c 89 e6             	mov    %r12,%rsi
    18f4:	48 83 f9 02          	cmp    $0x2,%rcx
    18f8:	7d 0f                	jge    1909 <_ZN11try_int_seq4sortENS_3ArrEm+0x389>
    18fa:	48 83 f9 01          	cmp    $0x1,%rcx
    18fe:	0f 8f 5a 02 00 00    	jg     1b5e <_ZN11try_int_seq4sortENS_3ArrEm+0x5de>
    1904:	e9 93 fe ff ff       	jmpq   179c <_ZN11try_int_seq4sortENS_3ArrEm+0x21c>
    1909:	48 8d 51 fe          	lea    -0x2(%rcx),%rdx
    190d:	48 c1 ea 3f          	shr    $0x3f,%rdx
    1911:	45 33 c9             	xor    %r9d,%r9d
    1914:	48 85 c9             	test   %rcx,%rcx
    1917:	41 0f 9e c1          	setle  %r9b
    191b:	48 8d 7c 11 fe       	lea    -0x2(%rcx,%rdx,1),%rdi
    1920:	48 d1 ff             	sar    %rdi
    1923:	49 89 fa             	mov    %rdi,%r10
    1926:	4e 8d 4c 09 ff       	lea    -0x1(%rcx,%r9,1),%r9
    192b:	48 83 e1 01          	and    $0x1,%rcx
    192f:	49 d1 f9             	sar    %r9
    1932:	48 8d 54 bc 40       	lea    0x40(%rsp,%rdi,4),%rdx
    1937:	48 ff cf             	dec    %rdi
    193a:	48 83 c2 fc          	add    $0xfffffffffffffffc,%rdx
    193e:	44 8b 7a 04          	mov    0x4(%rdx),%r15d
    1942:	48 8d 6f 01          	lea    0x1(%rdi),%rbp
    1946:	49 89 ec             	mov    %rbp,%r12
    1949:	48 89 eb             	mov    %rbp,%rbx
    194c:	49 3b e9             	cmp    %r9,%rbp
    194f:	0f 8d 98 01 00 00    	jge    1aed <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1955:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    195c:	00 
    195d:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1962:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1966:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    196a:	7d 08                	jge    1974 <_ZN11try_int_seq4sortENS_3ArrEm+0x3f4>
    196c:	48 ff cb             	dec    %rbx
    196f:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1974:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1978:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    197d:	49 89 dc             	mov    %rbx,%r12
    1980:	49 3b d9             	cmp    %r9,%rbx
    1983:	0f 8d 64 01 00 00    	jge    1aed <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1989:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1990:	00 
    1991:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1996:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    199a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    199e:	7d 08                	jge    19a8 <_ZN11try_int_seq4sortENS_3ArrEm+0x428>
    19a0:	48 ff cb             	dec    %rbx
    19a3:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    19a8:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    19ac:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    19b1:	49 89 dc             	mov    %rbx,%r12
    19b4:	49 3b d9             	cmp    %r9,%rbx
    19b7:	0f 8d 30 01 00 00    	jge    1aed <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    19bd:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    19c4:	00 
    19c5:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    19ca:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    19ce:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    19d2:	7d 08                	jge    19dc <_ZN11try_int_seq4sortENS_3ArrEm+0x45c>
    19d4:	48 ff cb             	dec    %rbx
    19d7:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    19dc:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    19e0:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    19e5:	49 89 dc             	mov    %rbx,%r12
    19e8:	49 3b d9             	cmp    %r9,%rbx
    19eb:	0f 8d fc 00 00 00    	jge    1aed <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    19f1:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    19f8:	00 
    19f9:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    19fe:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a02:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    1a06:	7d 08                	jge    1a10 <_ZN11try_int_seq4sortENS_3ArrEm+0x490>
    1a08:	48 ff cb             	dec    %rbx
    1a0b:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a10:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a14:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1a19:	49 89 dc             	mov    %rbx,%r12
    1a1c:	49 3b d9             	cmp    %r9,%rbx
    1a1f:	0f 8d c8 00 00 00    	jge    1aed <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1a25:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1a2c:	00 
    1a2d:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a32:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a36:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    1a3a:	7d 08                	jge    1a44 <_ZN11try_int_seq4sortENS_3ArrEm+0x4c4>
    1a3c:	48 ff cb             	dec    %rbx
    1a3f:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a44:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a48:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1a4d:	49 89 dc             	mov    %rbx,%r12
    1a50:	49 3b d9             	cmp    %r9,%rbx
    1a53:	0f 8d 94 00 00 00    	jge    1aed <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1a59:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1a60:	00 
    1a61:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a66:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a6a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    1a6e:	7d 08                	jge    1a78 <_ZN11try_int_seq4sortENS_3ArrEm+0x4f8>
    1a70:	48 ff cb             	dec    %rbx
    1a73:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a78:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a7c:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1a81:	49 89 dc             	mov    %rbx,%r12
    1a84:	49 3b d9             	cmp    %r9,%rbx
    1a87:	7d 64                	jge    1aed <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1a89:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1a90:	00 
    1a91:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1a96:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1a9a:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    1a9e:	7d 08                	jge    1aa8 <_ZN11try_int_seq4sortENS_3ArrEm+0x528>
    1aa0:	48 ff cb             	dec    %rbx
    1aa3:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1aa8:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1aac:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1ab1:	49 89 dc             	mov    %rbx,%r12
    1ab4:	49 3b d9             	cmp    %r9,%rbx
    1ab7:	7d 34                	jge    1aed <_ZN11try_int_seq4sortENS_3ArrEm+0x56d>
    1ab9:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1ac0:	00 
    1ac1:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1ac6:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1aca:	45 3b 5d fc          	cmp    -0x4(%r13),%r11d
    1ace:	7d 08                	jge    1ad8 <_ZN11try_int_seq4sortENS_3ArrEm+0x558>
    1ad0:	48 ff cb             	dec    %rbx
    1ad3:	4c 8d 6c 9c 40       	lea    0x40(%rsp,%rbx,4),%r13
    1ad8:	45 8b 5d 00          	mov    0x0(%r13),%r11d
    1adc:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1ae1:	49 89 dc             	mov    %rbx,%r12
    1ae4:	49 3b d9             	cmp    %r9,%rbx
    1ae7:	0f 8c 68 fe ff ff    	jl     1955 <_ZN11try_int_seq4sortENS_3ArrEm+0x3d5>
    1aed:	48 85 c9             	test   %rcx,%rcx
    1af0:	75 1b                	jne    1b0d <_ZN11try_int_seq4sortENS_3ArrEm+0x58d>
    1af2:	49 3b da             	cmp    %r10,%rbx
    1af5:	75 16                	jne    1b0d <_ZN11try_int_seq4sortENS_3ArrEm+0x58d>
    1af7:	48 8d 1c 5d 02 00 00 	lea    0x2(,%rbx,2),%rbx
    1afe:	00 
    1aff:	44 8b 5c 9c 3c       	mov    0x3c(%rsp,%rbx,4),%r11d
    1b04:	46 89 5c a4 40       	mov    %r11d,0x40(%rsp,%r12,4)
    1b09:	4c 8d 63 ff          	lea    -0x1(%rbx),%r12
    1b0d:	4d 8d 5c 24 ff       	lea    -0x1(%r12),%r11
    1b12:	49 c1 eb 3f          	shr    $0x3f,%r11
    1b16:	4f 8d 5c 1c ff       	lea    -0x1(%r12,%r11,1),%r11
    1b1b:	49 d1 fb             	sar    %r11
    1b1e:	4c 3b e5             	cmp    %rbp,%r12
    1b21:	7e 27                	jle    1b4a <_ZN11try_int_seq4sortENS_3ArrEm+0x5ca>
    1b23:	42 8b 5c 9c 40       	mov    0x40(%rsp,%r11,4),%ebx
    1b28:	41 3b df             	cmp    %r15d,%ebx
    1b2b:	7d 1d                	jge    1b4a <_ZN11try_int_seq4sortENS_3ArrEm+0x5ca>
    1b2d:	42 89 5c a4 40       	mov    %ebx,0x40(%rsp,%r12,4)
    1b32:	49 8d 5b ff          	lea    -0x1(%r11),%rbx
    1b36:	48 c1 eb 3f          	shr    $0x3f,%rbx
    1b3a:	4d 89 dc             	mov    %r11,%r12
    1b3d:	4d 8d 5c 1b ff       	lea    -0x1(%r11,%rbx,1),%r11
    1b42:	49 d1 fb             	sar    %r11
    1b45:	4c 3b e5             	cmp    %rbp,%r12
    1b48:	7f d9                	jg     1b23 <_ZN11try_int_seq4sortENS_3ArrEm+0x5a3>
    1b4a:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1b4f:	46 89 7c a4 40       	mov    %r15d,0x40(%rsp,%r12,4)
    1b54:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
    1b58:	0f 85 d9 fd ff ff    	jne    1937 <_ZN11try_int_seq4sortENS_3ArrEm+0x3b7>
    1b5e:	8b 54 24 40          	mov    0x40(%rsp),%edx
    1b62:	33 c9                	xor    %ecx,%ecx
    1b64:	48 ff c1             	inc    %rcx
    1b67:	45 33 db             	xor    %r11d,%r11d
    1b6a:	33 ff                	xor    %edi,%edi
    1b6c:	45 33 c9             	xor    %r9d,%r9d
    1b6f:	4c 8d 14 8d 00 00 00 	lea    0x0(,%rcx,4),%r10
    1b76:	00 
    1b77:	49 f7 da             	neg    %r10
    1b7a:	4d 03 d0             	add    %r8,%r10
    1b7d:	41 8b 1a             	mov    (%r10),%ebx
    1b80:	41 89 12             	mov    %edx,(%r10)
    1b83:	4c 8d 54 8c 40       	lea    0x40(%rsp,%rcx,4),%r10
    1b88:	49 f7 da             	neg    %r10
    1b8b:	4d 03 d0             	add    %r8,%r10
    1b8e:	49 c1 fa 02          	sar    $0x2,%r10
    1b92:	4d 85 d2             	test   %r10,%r10
    1b95:	40 0f 9e c7          	setle  %dil
    1b99:	49 8d 7c 3a ff       	lea    -0x1(%r10,%rdi,1),%rdi
    1b9e:	48 d1 ff             	sar    %rdi
    1ba1:	48 85 ff             	test   %rdi,%rdi
    1ba4:	7e 5c                	jle    1c02 <_ZN11try_int_seq4sortENS_3ArrEm+0x682>
    1ba6:	4e 8d 0c 4d 02 00 00 	lea    0x2(,%r9,2),%r9
    1bad:	00 
    1bae:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
    1bb3:	41 8b 2f             	mov    (%r15),%ebp
    1bb6:	41 3b 6f fc          	cmp    -0x4(%r15),%ebp
    1bba:	7d 08                	jge    1bc4 <_ZN11try_int_seq4sortENS_3ArrEm+0x644>
    1bbc:	49 ff c9             	dec    %r9
    1bbf:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
    1bc4:	41 8b 2f             	mov    (%r15),%ebp
    1bc7:	42 89 6c 9c 40       	mov    %ebp,0x40(%rsp,%r11,4)
    1bcc:	4d 89 cb             	mov    %r9,%r11
    1bcf:	4c 3b cf             	cmp    %rdi,%r9
    1bd2:	7d 2e                	jge    1c02 <_ZN11try_int_seq4sortENS_3ArrEm+0x682>
    1bd4:	4e 8d 0c 4d 02 00 00 	lea    0x2(,%r9,2),%r9
    1bdb:	00 
    1bdc:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
    1be1:	41 8b 2f             	mov    (%r15),%ebp
    1be4:	41 3b 6f fc          	cmp    -0x4(%r15),%ebp
    1be8:	7d 08                	jge    1bf2 <_ZN11try_int_seq4sortENS_3ArrEm+0x672>
    1bea:	49 ff c9             	dec    %r9
    1bed:	4e 8d 7c 8c 40       	lea    0x40(%rsp,%r9,4),%r15
    1bf2:	41 8b 2f             	mov    (%r15),%ebp
    1bf5:	42 89 6c 9c 40       	mov    %ebp,0x40(%rsp,%r11,4)
    1bfa:	4d 89 cb             	mov    %r9,%r11
    1bfd:	4c 3b cf             	cmp    %rdi,%r9
    1c00:	7c a4                	jl     1ba6 <_ZN11try_int_seq4sortENS_3ArrEm+0x626>
    1c02:	49 f7 c2 01 00 00 00 	test   $0x1,%r10
    1c09:	75 2b                	jne    1c36 <_ZN11try_int_seq4sortENS_3ArrEm+0x6b6>
    1c0b:	49 8d 7a fe          	lea    -0x2(%r10),%rdi
    1c0f:	48 c1 ef 3f          	shr    $0x3f,%rdi
    1c13:	49 8d 7c 3a fe       	lea    -0x2(%r10,%rdi,1),%rdi
    1c18:	48 d1 ff             	sar    %rdi
    1c1b:	4c 3b cf             	cmp    %rdi,%r9
    1c1e:	75 16                	jne    1c36 <_ZN11try_int_seq4sortENS_3ArrEm+0x6b6>
    1c20:	4e 8d 0c 4d 02 00 00 	lea    0x2(,%r9,2),%r9
    1c27:	00 
    1c28:	42 8b 7c 8c 3c       	mov    0x3c(%rsp,%r9,4),%edi
    1c2d:	42 89 7c 9c 40       	mov    %edi,0x40(%rsp,%r11,4)
    1c32:	4d 8d 59 ff          	lea    -0x1(%r9),%r11
    1c36:	49 8d 7b ff          	lea    -0x1(%r11),%rdi
    1c3a:	48 c1 ef 3f          	shr    $0x3f,%rdi
    1c3e:	49 8d 7c 3b ff       	lea    -0x1(%r11,%rdi,1),%rdi
    1c43:	48 d1 ff             	sar    %rdi
    1c46:	4d 85 db             	test   %r11,%r11
    1c49:	7e 27                	jle    1c72 <_ZN11try_int_seq4sortENS_3ArrEm+0x6f2>
    1c4b:	44 8b 4c bc 40       	mov    0x40(%rsp,%rdi,4),%r9d
    1c50:	44 3b cb             	cmp    %ebx,%r9d
    1c53:	7d 1d                	jge    1c72 <_ZN11try_int_seq4sortENS_3ArrEm+0x6f2>
    1c55:	46 89 4c 9c 40       	mov    %r9d,0x40(%rsp,%r11,4)
    1c5a:	4c 8d 4f ff          	lea    -0x1(%rdi),%r9
    1c5e:	49 c1 e9 3f          	shr    $0x3f,%r9
    1c62:	49 89 fb             	mov    %rdi,%r11
    1c65:	4a 8d 7c 0f ff       	lea    -0x1(%rdi,%r9,1),%rdi
    1c6a:	48 d1 ff             	sar    %rdi
    1c6d:	4d 85 db             	test   %r11,%r11
    1c70:	7f d9                	jg     1c4b <_ZN11try_int_seq4sortENS_3ArrEm+0x6cb>
    1c72:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1c77:	42 89 5c 9c 40       	mov    %ebx,0x40(%rsp,%r11,4)
    1c7c:	49 83 fa 01          	cmp    $0x1,%r10
    1c80:	0f 8f de fe ff ff    	jg     1b64 <_ZN11try_int_seq4sortENS_3ArrEm+0x5e4>
    1c86:	e9 11 fb ff ff       	jmpq   179c <_ZN11try_int_seq4sortENS_3ArrEm+0x21c>
    1c8b:	48 3b f0             	cmp    %rax,%rsi
    1c8e:	0f 84 06 f9 ff ff    	je     159a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>
    1c94:	33 c9                	xor    %ecx,%ecx
    1c96:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    1c9b:	33 d2                	xor    %edx,%edx
    1c9d:	48 3b f8             	cmp    %rax,%rdi
    1ca0:	0f 84 f4 f8 ff ff    	je     159a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>
    1ca6:	49 89 c0             	mov    %rax,%r8
    1ca9:	48 89 d5             	mov    %rdx,%rbp
    1cac:	4c 2b c7             	sub    %rdi,%r8
    1caf:	49 89 cc             	mov    %rcx,%r12
    1cb2:	49 83 c0 03          	add    $0x3,%r8
    1cb6:	49 89 f7             	mov    %rsi,%r15
    1cb9:	49 d1 f8             	sar    %r8
    1cbc:	49 c1 e8 3e          	shr    $0x3e,%r8
    1cc0:	49 03 c0             	add    %r8,%rax
    1cc3:	48 2b c7             	sub    %rdi,%rax
    1cc6:	48 83 c0 03          	add    $0x3,%rax
    1cca:	48 c1 f8 02          	sar    $0x2,%rax
    1cce:	4c 89 34 24          	mov    %r14,(%rsp)
    1cd2:	48 89 c3             	mov    %rax,%rbx
    1cd5:	49 89 fe             	mov    %rdi,%r14
    1cd8:	46 8b 6c 35 00       	mov    0x0(%rbp,%r14,1),%r13d
    1cdd:	44 3b 6c 24 40       	cmp    0x40(%rsp),%r13d
    1ce2:	7d 2b                	jge    1d0f <_ZN11try_int_seq4sortENS_3ArrEm+0x78f>
    1ce4:	48 8d 55 04          	lea    0x4(%rbp),%rdx
    1ce8:	48 c1 fa 02          	sar    $0x2,%rdx
    1cec:	48 85 d2             	test   %rdx,%rdx
    1cef:	74 17                	je     1d08 <_ZN11try_int_seq4sortENS_3ArrEm+0x788>
    1cf1:	48 c1 e2 02          	shl    $0x2,%rdx
    1cf5:	4d 89 f0             	mov    %r14,%r8
    1cf8:	4c 2b c2             	sub    %rdx,%r8
    1cfb:	4c 89 fe             	mov    %r15,%rsi
    1cfe:	4a 8d 7c 05 04       	lea    0x4(%rbp,%r8,1),%rdi
    1d03:	e8 00 00 00 00       	callq  1d08 <_ZN11try_int_seq4sortENS_3ArrEm+0x788>
    1d08:	44 89 6c 24 40       	mov    %r13d,0x40(%rsp)
    1d0d:	eb 48                	jmp    1d57 <_ZN11try_int_seq4sortENS_3ArrEm+0x7d7>
    1d0f:	44 8b 54 2c 40       	mov    0x40(%rsp,%rbp,1),%r10d
    1d14:	4d 8d 1c 2e          	lea    (%r14,%rbp,1),%r11
    1d18:	45 3b ea             	cmp    %r10d,%r13d
    1d1b:	7d 36                	jge    1d53 <_ZN11try_int_seq4sortENS_3ArrEm+0x7d3>
    1d1d:	45 33 c9             	xor    %r9d,%r9d
    1d20:	4d 8d 04 2e          	lea    (%r14,%rbp,1),%r8
    1d24:	49 ff c1             	inc    %r9
    1d27:	45 89 13             	mov    %r10d,(%r11)
    1d2a:	4a 8d 04 cd 00 00 00 	lea    0x0(,%r9,8),%rax
    1d31:	00 
    1d32:	48 f7 d8             	neg    %rax
    1d35:	49 03 c0             	add    %r8,%rax
    1d38:	44 8b 10             	mov    (%rax),%r10d
    1d3b:	4c 8d 58 04          	lea    0x4(%rax),%r11
    1d3f:	45 3b ea             	cmp    %r10d,%r13d
    1d42:	7d 0f                	jge    1d53 <_ZN11try_int_seq4sortENS_3ArrEm+0x7d3>
    1d44:	45 89 13             	mov    %r10d,(%r11)
    1d47:	49 89 c3             	mov    %rax,%r11
    1d4a:	44 8b 50 fc          	mov    -0x4(%rax),%r10d
    1d4e:	45 3b ea             	cmp    %r10d,%r13d
    1d51:	7c d1                	jl     1d24 <_ZN11try_int_seq4sortENS_3ArrEm+0x7a4>
    1d53:	90                   	nop
    1d54:	45 89 2b             	mov    %r13d,(%r11)
    1d57:	49 ff c4             	inc    %r12
    1d5a:	48 83 c5 04          	add    $0x4,%rbp
    1d5e:	4c 3b e3             	cmp    %rbx,%r12
    1d61:	0f 82 71 ff ff ff    	jb     1cd8 <_ZN11try_int_seq4sortENS_3ArrEm+0x758>
    1d67:	4c 8b 34 24          	mov    (%rsp),%r14
    1d6b:	e9 2a f8 ff ff       	jmpq   159a <_ZN11try_int_seq4sortENS_3ArrEm+0x1a>

0000000000001d70 <_ZN11try_int_seq4fillENS_3ArrEm>:
    1d70:	55                   	push   %rbp
    1d71:	48 89 e5             	mov    %rsp,%rbp
    1d74:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    1d78:	48 89 fa             	mov    %rdi,%rdx
    1d7b:	48 85 d2             	test   %rdx,%rdx
    1d7e:	76 15                	jbe    1d95 <_ZN11try_int_seq4fillENS_3ArrEm+0x25>
    1d80:	48 83 fa 18          	cmp    $0x18,%rdx
    1d84:	7e 17                	jle    1d9d <_ZN11try_int_seq4fillENS_3ArrEm+0x2d>
    1d86:	48 c1 e2 02          	shl    $0x2,%rdx
    1d8a:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    1d8e:	33 f6                	xor    %esi,%esi
    1d90:	e8 00 00 00 00       	callq  1d95 <_ZN11try_int_seq4fillENS_3ArrEm+0x25>
    1d95:	c5 f8 77             	vzeroupper 
    1d98:	48 89 ec             	mov    %rbp,%rsp
    1d9b:	5d                   	pop    %rbp
    1d9c:	c3                   	retq   
    1d9d:	48 83 fa 08          	cmp    $0x8,%rdx
    1da1:	7c 33                	jl     1dd6 <_ZN11try_int_seq4fillENS_3ArrEm+0x66>
    1da3:	48 89 d0             	mov    %rdx,%rax
    1da6:	33 c9                	xor    %ecx,%ecx
    1da8:	c5 fd ef c0          	vpxor  %ymm0,%ymm0,%ymm0
    1dac:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    1db0:	c5 fe 7f 44 8d 10    	vmovdqu %ymm0,0x10(%rbp,%rcx,4)
    1db6:	48 83 c1 08          	add    $0x8,%rcx
    1dba:	48 3b c8             	cmp    %rax,%rcx
    1dbd:	72 f1                	jb     1db0 <_ZN11try_int_seq4fillENS_3ArrEm+0x40>
    1dbf:	48 3b c2             	cmp    %rdx,%rax
    1dc2:	73 d1                	jae    1d95 <_ZN11try_int_seq4fillENS_3ArrEm+0x25>
    1dc4:	c7 44 85 10 00 00 00 	movl   $0x0,0x10(%rbp,%rax,4)
    1dcb:	00 
    1dcc:	48 ff c0             	inc    %rax
    1dcf:	48 3b c2             	cmp    %rdx,%rax
    1dd2:	72 f0                	jb     1dc4 <_ZN11try_int_seq4fillENS_3ArrEm+0x54>
    1dd4:	eb bf                	jmp    1d95 <_ZN11try_int_seq4fillENS_3ArrEm+0x25>
    1dd6:	33 c0                	xor    %eax,%eax
    1dd8:	eb e5                	jmp    1dbf <_ZN11try_int_seq4fillENS_3ArrEm+0x4f>
    1dda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001de0 <_ZN11try_int_seq9transformENS_3ArrES0_m>:
    1de0:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1de5:	48 8d 34 ba          	lea    (%rdx,%rdi,4),%rsi
    1de9:	48 3b d6             	cmp    %rsi,%rdx
    1dec:	0f 84 a5 00 00 00    	je     1e97 <_ZN11try_int_seq9transformENS_3ArrES0_m+0xb7>
    1df2:	48 89 f0             	mov    %rsi,%rax
    1df5:	48 2b c2             	sub    %rdx,%rax
    1df8:	48 83 c0 03          	add    $0x3,%rax
    1dfc:	48 d1 f8             	sar    %rax
    1dff:	48 c1 e8 3e          	shr    $0x3e,%rax
    1e03:	48 03 f0             	add    %rax,%rsi
    1e06:	48 2b f2             	sub    %rdx,%rsi
    1e09:	48 83 c6 03          	add    $0x3,%rsi
    1e0d:	48 c1 fe 02          	sar    $0x2,%rsi
    1e11:	48 83 fe 08          	cmp    $0x8,%rsi
    1e15:	7c 67                	jl     1e7e <_ZN11try_int_seq9transformENS_3ArrES0_m+0x9e>
    1e17:	48 81 fe f9 00 00 00 	cmp    $0xf9,%rsi
    1e1e:	7c 7b                	jl     1e9b <_ZN11try_int_seq9transformENS_3ArrES0_m+0xbb>
    1e20:	48 83 e2 1f          	and    $0x1f,%rdx
    1e24:	74 0b                	je     1e31 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x51>
    1e26:	48 f7 da             	neg    %rdx
    1e29:	48 83 c2 20          	add    $0x20,%rdx
    1e2d:	48 c1 ea 02          	shr    $0x2,%rdx
    1e31:	48 8d 42 08          	lea    0x8(%rdx),%rax
    1e35:	48 3b f0             	cmp    %rax,%rsi
    1e38:	7c 44                	jl     1e7e <_ZN11try_int_seq9transformENS_3ArrES0_m+0x9e>
    1e3a:	48 89 f1             	mov    %rsi,%rcx
    1e3d:	33 c0                	xor    %eax,%eax
    1e3f:	48 2b ca             	sub    %rdx,%rcx
    1e42:	48 83 e1 07          	and    $0x7,%rcx
    1e46:	48 f7 d9             	neg    %rcx
    1e49:	48 03 ce             	add    %rsi,%rcx
    1e4c:	48 85 d2             	test   %rdx,%rdx
    1e4f:	76 12                	jbe    1e63 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x83>
    1e51:	8b 7c 84 08          	mov    0x8(%rsp,%rax,4),%edi
    1e55:	03 ff                	add    %edi,%edi
    1e57:	89 7c 84 08          	mov    %edi,0x8(%rsp,%rax,4)
    1e5b:	48 ff c0             	inc    %rax
    1e5e:	48 3b c2             	cmp    %rdx,%rax
    1e61:	72 ee                	jb     1e51 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x71>
    1e63:	c5 fe 6f 44 94 08    	vmovdqu 0x8(%rsp,%rdx,4),%ymm0
    1e69:	c5 fd fe c8          	vpaddd %ymm0,%ymm0,%ymm1
    1e6d:	c5 fe 7f 4c 94 08    	vmovdqu %ymm1,0x8(%rsp,%rdx,4)
    1e73:	48 83 c2 08          	add    $0x8,%rdx
    1e77:	48 3b d1             	cmp    %rcx,%rdx
    1e7a:	72 e7                	jb     1e63 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x83>
    1e7c:	eb 02                	jmp    1e80 <_ZN11try_int_seq9transformENS_3ArrES0_m+0xa0>
    1e7e:	33 c9                	xor    %ecx,%ecx
    1e80:	48 3b ce             	cmp    %rsi,%rcx
    1e83:	73 12                	jae    1e97 <_ZN11try_int_seq9transformENS_3ArrES0_m+0xb7>
    1e85:	8b 44 8c 08          	mov    0x8(%rsp,%rcx,4),%eax
    1e89:	03 c0                	add    %eax,%eax
    1e8b:	89 44 8c 08          	mov    %eax,0x8(%rsp,%rcx,4)
    1e8f:	48 ff c1             	inc    %rcx
    1e92:	48 3b ce             	cmp    %rsi,%rcx
    1e95:	72 ee                	jb     1e85 <_ZN11try_int_seq9transformENS_3ArrES0_m+0xa5>
    1e97:	c5 f8 77             	vzeroupper 
    1e9a:	c3                   	retq   
    1e9b:	48 89 f1             	mov    %rsi,%rcx
    1e9e:	33 d2                	xor    %edx,%edx
    1ea0:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    1ea4:	eb bd                	jmp    1e63 <_ZN11try_int_seq9transformENS_3ArrES0_m+0x83>
    1ea6:	0f 1f 00             	nopl   (%rax)
    1ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001eb0 <_ZN11try_int_seq11transform32ENS_3ArrES0_m>:
    1eb0:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1eb5:	48 c1 e7 05          	shl    $0x5,%rdi
    1eb9:	48 03 fa             	add    %rdx,%rdi
    1ebc:	48 3b d7             	cmp    %rdi,%rdx
    1ebf:	0f 84 a5 00 00 00    	je     1f6a <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xba>
    1ec5:	48 89 f8             	mov    %rdi,%rax
    1ec8:	48 2b c2             	sub    %rdx,%rax
    1ecb:	48 83 c0 03          	add    $0x3,%rax
    1ecf:	48 d1 f8             	sar    %rax
    1ed2:	48 c1 e8 3e          	shr    $0x3e,%rax
    1ed6:	48 03 f8             	add    %rax,%rdi
    1ed9:	48 2b fa             	sub    %rdx,%rdi
    1edc:	48 83 c7 03          	add    $0x3,%rdi
    1ee0:	48 c1 ff 02          	sar    $0x2,%rdi
    1ee4:	48 83 ff 08          	cmp    $0x8,%rdi
    1ee8:	7c 67                	jl     1f51 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xa1>
    1eea:	48 81 ff f9 00 00 00 	cmp    $0xf9,%rdi
    1ef1:	7c 7b                	jl     1f6e <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xbe>
    1ef3:	48 83 e2 1f          	and    $0x1f,%rdx
    1ef7:	74 0b                	je     1f04 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x54>
    1ef9:	48 f7 da             	neg    %rdx
    1efc:	48 83 c2 20          	add    $0x20,%rdx
    1f00:	48 c1 ea 02          	shr    $0x2,%rdx
    1f04:	48 8d 42 08          	lea    0x8(%rdx),%rax
    1f08:	48 3b f8             	cmp    %rax,%rdi
    1f0b:	7c 44                	jl     1f51 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xa1>
    1f0d:	48 89 f9             	mov    %rdi,%rcx
    1f10:	33 c0                	xor    %eax,%eax
    1f12:	48 2b ca             	sub    %rdx,%rcx
    1f15:	48 83 e1 07          	and    $0x7,%rcx
    1f19:	48 f7 d9             	neg    %rcx
    1f1c:	48 03 cf             	add    %rdi,%rcx
    1f1f:	48 85 d2             	test   %rdx,%rdx
    1f22:	76 12                	jbe    1f36 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x86>
    1f24:	8b 74 84 08          	mov    0x8(%rsp,%rax,4),%esi
    1f28:	03 f6                	add    %esi,%esi
    1f2a:	89 74 84 08          	mov    %esi,0x8(%rsp,%rax,4)
    1f2e:	48 ff c0             	inc    %rax
    1f31:	48 3b c2             	cmp    %rdx,%rax
    1f34:	72 ee                	jb     1f24 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x74>
    1f36:	c5 fe 6f 44 94 08    	vmovdqu 0x8(%rsp,%rdx,4),%ymm0
    1f3c:	c5 fd fe c8          	vpaddd %ymm0,%ymm0,%ymm1
    1f40:	c5 fe 7f 4c 94 08    	vmovdqu %ymm1,0x8(%rsp,%rdx,4)
    1f46:	48 83 c2 08          	add    $0x8,%rdx
    1f4a:	48 3b d1             	cmp    %rcx,%rdx
    1f4d:	72 e7                	jb     1f36 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x86>
    1f4f:	eb 02                	jmp    1f53 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xa3>
    1f51:	33 c9                	xor    %ecx,%ecx
    1f53:	48 3b cf             	cmp    %rdi,%rcx
    1f56:	73 12                	jae    1f6a <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xba>
    1f58:	8b 44 8c 08          	mov    0x8(%rsp,%rcx,4),%eax
    1f5c:	03 c0                	add    %eax,%eax
    1f5e:	89 44 8c 08          	mov    %eax,0x8(%rsp,%rcx,4)
    1f62:	48 ff c1             	inc    %rcx
    1f65:	48 3b cf             	cmp    %rdi,%rcx
    1f68:	72 ee                	jb     1f58 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0xa8>
    1f6a:	c5 f8 77             	vzeroupper 
    1f6d:	c3                   	retq   
    1f6e:	48 89 f9             	mov    %rdi,%rcx
    1f71:	33 d2                	xor    %edx,%edx
    1f73:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    1f77:	eb bd                	jmp    1f36 <_ZN11try_int_seq11transform32ENS_3ArrES0_m+0x86>
    1f79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001f80 <_ZN13try_float_seq4sortENS_3ArrEm>:
    1f80:	41 54                	push   %r12
    1f82:	41 55                	push   %r13
    1f84:	41 56                	push   %r14
    1f86:	41 57                	push   %r15
    1f88:	48 83 ec 18          	sub    $0x18,%rsp
    1f8c:	4c 8d 54 24 40       	lea    0x40(%rsp),%r10
    1f91:	4d 8d 0c ba          	lea    (%r10,%rdi,4),%r9
    1f95:	4d 3b d1             	cmp    %r9,%r10
    1f98:	75 0d                	jne    1fa7 <_ZN13try_float_seq4sortENS_3ArrEm+0x27>
    1f9a:	48 83 c4 18          	add    $0x18,%rsp
    1f9e:	41 5f                	pop    %r15
    1fa0:	41 5e                	pop    %r14
    1fa2:	41 5d                	pop    %r13
    1fa4:	41 5c                	pop    %r12
    1fa6:	c3                   	retq   
    1fa7:	4c 89 c8             	mov    %r9,%rax
    1faa:	4c 89 ce             	mov    %r9,%rsi
    1fad:	49 2b c2             	sub    %r10,%rax
    1fb0:	48 c1 f8 02          	sar    $0x2,%rax
    1fb4:	f3 48 0f bd d0       	lzcnt  %rax,%rdx
    1fb9:	48 03 d2             	add    %rdx,%rdx
    1fbc:	48 f7 da             	neg    %rdx
    1fbf:	48 83 c2 7e          	add    $0x7e,%rdx
    1fc3:	48 83 f8 10          	cmp    $0x10,%rax
    1fc7:	0f 8e 73 07 00 00    	jle    2740 <_ZN13try_float_seq4sortENS_3ArrEm+0x7c0>
    1fcd:	49 89 d7             	mov    %rdx,%r15
    1fd0:	4d 89 cd             	mov    %r9,%r13
    1fd3:	4d 89 d6             	mov    %r10,%r14
    1fd6:	48 89 f0             	mov    %rsi,%rax
    1fd9:	49 2b c6             	sub    %r14,%rax
    1fdc:	48 c1 f8 02          	sar    $0x2,%rax
    1fe0:	4d 85 ff             	test   %r15,%r15
    1fe3:	0f 84 98 03 00 00    	je     2381 <_ZN13try_float_seq4sortENS_3ArrEm+0x401>
    1fe9:	48 89 c1             	mov    %rax,%rcx
    1fec:	49 ff cf             	dec    %r15
    1fef:	48 c1 e9 3f          	shr    $0x3f,%rcx
    1ff3:	48 03 c1             	add    %rcx,%rax
    1ff6:	48 d1 f8             	sar    %rax
    1ff9:	c5 fa 10 44 24 44    	vmovss 0x44(%rsp),%xmm0
    1fff:	c5 fa 10 4e fc       	vmovss -0x4(%rsi),%xmm1
    2004:	c5 fa 10 54 84 40    	vmovss 0x40(%rsp,%rax,4),%xmm2
    200a:	c5 f8 2f d0          	vcomiss %xmm0,%xmm2
    200e:	76 33                	jbe    2043 <_ZN13try_float_seq4sortENS_3ArrEm+0xc3>
    2010:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
    2014:	77 19                	ja     202f <_ZN13try_float_seq4sortENS_3ArrEm+0xaf>
    2016:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
    201a:	76 35                	jbe    2051 <_ZN13try_float_seq4sortENS_3ArrEm+0xd1>
    201c:	8b 44 24 40          	mov    0x40(%rsp),%eax
    2020:	c5 f8 28 d1          	vmovaps %xmm1,%xmm2
    2024:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
    202a:	89 46 fc             	mov    %eax,-0x4(%rsi)
    202d:	eb 34                	jmp    2063 <_ZN13try_float_seq4sortENS_3ArrEm+0xe3>
    202f:	8b 4c 24 40          	mov    0x40(%rsp),%ecx
    2033:	48 c1 e0 02          	shl    $0x2,%rax
    2037:	c5 fa 11 54 24 40    	vmovss %xmm2,0x40(%rsp)
    203d:	89 4c 04 40          	mov    %ecx,0x40(%rsp,%rax,1)
    2041:	eb 20                	jmp    2063 <_ZN13try_float_seq4sortENS_3ArrEm+0xe3>
    2043:	c5 f8 2f c8          	vcomiss %xmm0,%xmm1
    2047:	77 08                	ja     2051 <_ZN13try_float_seq4sortENS_3ArrEm+0xd1>
    2049:	c5 f8 2f ca          	vcomiss %xmm2,%xmm1
    204d:	77 cd                	ja     201c <_ZN13try_float_seq4sortENS_3ArrEm+0x9c>
    204f:	eb de                	jmp    202f <_ZN13try_float_seq4sortENS_3ArrEm+0xaf>
    2051:	8b 44 24 40          	mov    0x40(%rsp),%eax
    2055:	c5 f8 28 d0          	vmovaps %xmm0,%xmm2
    2059:	c5 fa 11 44 24 40    	vmovss %xmm0,0x40(%rsp)
    205f:	89 44 24 44          	mov    %eax,0x44(%rsp)
    2063:	48 89 f0             	mov    %rsi,%rax
    2066:	4c 8d 64 24 44       	lea    0x44(%rsp),%r12
    206b:	eb 14                	jmp    2081 <_ZN13try_float_seq4sortENS_3ArrEm+0x101>
    206d:	c4 c1 7a 11 04 24    	vmovss %xmm0,(%r12)
    2073:	49 83 c4 04          	add    $0x4,%r12
    2077:	c5 fa 11 08          	vmovss %xmm1,(%rax)
    207b:	c5 fa 10 54 24 40    	vmovss 0x40(%rsp),%xmm2
    2081:	c4 c1 7a 10 0c 24    	vmovss (%r12),%xmm1
    2087:	4d 89 e0             	mov    %r12,%r8
    208a:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    208e:	0f 86 93 00 00 00    	jbe    2127 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    2094:	33 c9                	xor    %ecx,%ecx
    2096:	48 83 c1 20          	add    $0x20,%rcx
    209a:	4d 8d 1c 08          	lea    (%r8,%rcx,1),%r11
    209e:	c4 c1 7a 10 4b e4    	vmovss -0x1c(%r11),%xmm1
    20a4:	4d 8d 64 08 e4       	lea    -0x1c(%r8,%rcx,1),%r12
    20a9:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20ad:	76 78                	jbe    2127 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20af:	c4 c1 7a 10 4b e8    	vmovss -0x18(%r11),%xmm1
    20b5:	4d 8d 64 08 e8       	lea    -0x18(%r8,%rcx,1),%r12
    20ba:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20be:	76 67                	jbe    2127 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20c0:	c4 c1 7a 10 4b ec    	vmovss -0x14(%r11),%xmm1
    20c6:	4d 8d 64 08 ec       	lea    -0x14(%r8,%rcx,1),%r12
    20cb:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20cf:	76 56                	jbe    2127 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20d1:	c4 c1 7a 10 4b f0    	vmovss -0x10(%r11),%xmm1
    20d7:	4d 8d 64 08 f0       	lea    -0x10(%r8,%rcx,1),%r12
    20dc:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20e0:	76 45                	jbe    2127 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20e2:	c4 c1 7a 10 4b f4    	vmovss -0xc(%r11),%xmm1
    20e8:	4d 8d 64 08 f4       	lea    -0xc(%r8,%rcx,1),%r12
    20ed:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    20f1:	76 34                	jbe    2127 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    20f3:	c4 c1 7a 10 4b f8    	vmovss -0x8(%r11),%xmm1
    20f9:	4d 8d 64 08 f8       	lea    -0x8(%r8,%rcx,1),%r12
    20fe:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    2102:	76 23                	jbe    2127 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    2104:	c4 c1 7a 10 4b fc    	vmovss -0x4(%r11),%xmm1
    210a:	4d 8d 64 08 fc       	lea    -0x4(%r8,%rcx,1),%r12
    210f:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    2113:	76 12                	jbe    2127 <_ZN13try_float_seq4sortENS_3ArrEm+0x1a7>
    2115:	c4 c1 7a 10 0b       	vmovss (%r11),%xmm1
    211a:	4d 89 dc             	mov    %r11,%r12
    211d:	c5 f8 2f d1          	vcomiss %xmm1,%xmm2
    2121:	0f 87 6f ff ff ff    	ja     2096 <_ZN13try_float_seq4sortENS_3ArrEm+0x116>
    2127:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    212b:	49 89 c0             	mov    %rax,%r8
    212e:	c5 fa 10 00          	vmovss (%rax),%xmm0
    2132:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2136:	0f 86 93 00 00 00    	jbe    21cf <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    213c:	33 c9                	xor    %ecx,%ecx
    213e:	48 83 c1 e0          	add    $0xffffffffffffffe0,%rcx
    2142:	4d 8d 1c 08          	lea    (%r8,%rcx,1),%r11
    2146:	c4 c1 7a 10 43 1c    	vmovss 0x1c(%r11),%xmm0
    214c:	49 8d 44 08 1c       	lea    0x1c(%r8,%rcx,1),%rax
    2151:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2155:	76 78                	jbe    21cf <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    2157:	c4 c1 7a 10 43 18    	vmovss 0x18(%r11),%xmm0
    215d:	49 8d 44 08 18       	lea    0x18(%r8,%rcx,1),%rax
    2162:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2166:	76 67                	jbe    21cf <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    2168:	c4 c1 7a 10 43 14    	vmovss 0x14(%r11),%xmm0
    216e:	49 8d 44 08 14       	lea    0x14(%r8,%rcx,1),%rax
    2173:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2177:	76 56                	jbe    21cf <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    2179:	c4 c1 7a 10 43 10    	vmovss 0x10(%r11),%xmm0
    217f:	49 8d 44 08 10       	lea    0x10(%r8,%rcx,1),%rax
    2184:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2188:	76 45                	jbe    21cf <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    218a:	c4 c1 7a 10 43 0c    	vmovss 0xc(%r11),%xmm0
    2190:	49 8d 44 08 0c       	lea    0xc(%r8,%rcx,1),%rax
    2195:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    2199:	76 34                	jbe    21cf <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    219b:	c4 c1 7a 10 43 08    	vmovss 0x8(%r11),%xmm0
    21a1:	49 8d 44 08 08       	lea    0x8(%r8,%rcx,1),%rax
    21a6:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    21aa:	76 23                	jbe    21cf <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    21ac:	c4 c1 7a 10 43 04    	vmovss 0x4(%r11),%xmm0
    21b2:	49 8d 44 08 04       	lea    0x4(%r8,%rcx,1),%rax
    21b7:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    21bb:	76 12                	jbe    21cf <_ZN13try_float_seq4sortENS_3ArrEm+0x24f>
    21bd:	c4 c1 7a 10 03       	vmovss (%r11),%xmm0
    21c2:	4c 89 d8             	mov    %r11,%rax
    21c5:	c5 f8 2f c2          	vcomiss %xmm2,%xmm0
    21c9:	0f 87 6f ff ff ff    	ja     213e <_ZN13try_float_seq4sortENS_3ArrEm+0x1be>
    21cf:	4c 3b e0             	cmp    %rax,%r12
    21d2:	0f 82 95 fe ff ff    	jb     206d <_ZN13try_float_seq4sortENS_3ArrEm+0xed>
    21d8:	4c 89 e7             	mov    %r12,%rdi
    21db:	4c 89 fa             	mov    %r15,%rdx
    21de:	e8 00 00 00 00       	callq  21e3 <_ZN13try_float_seq4sortENS_3ArrEm+0x263>
    21e3:	4c 89 e6             	mov    %r12,%rsi
    21e6:	4d 2b e6             	sub    %r14,%r12
    21e9:	49 c1 fc 02          	sar    $0x2,%r12
    21ed:	49 83 fc 10          	cmp    $0x10,%r12
    21f1:	0f 8f df fd ff ff    	jg     1fd6 <_ZN13try_float_seq4sortENS_3ArrEm+0x56>
    21f7:	4d 89 e9             	mov    %r13,%r9
    21fa:	4d 89 f2             	mov    %r14,%r10
    21fd:	48 8d 84 24 80 00 00 	lea    0x80(%rsp),%rax
    2204:	00 
    2205:	4c 3b d0             	cmp    %rax,%r10
    2208:	0f 84 e2 00 00 00    	je     22f0 <_ZN13try_float_seq4sortENS_3ArrEm+0x370>
    220e:	33 c9                	xor    %ecx,%ecx
    2210:	48 8d 74 24 44       	lea    0x44(%rsp),%rsi
    2215:	33 d2                	xor    %edx,%edx
    2217:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    221c:	49 89 c5             	mov    %rax,%r13
    221f:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
    2224:	49 89 d7             	mov    %rdx,%r15
    2227:	48 89 cd             	mov    %rcx,%rbp
    222a:	49 89 f4             	mov    %rsi,%r12
    222d:	4c 89 cb             	mov    %r9,%rbx
    2230:	4d 89 d6             	mov    %r10,%r14
    2233:	c4 81 7a 10 0c 27    	vmovss (%r15,%r12,1),%xmm1
    2239:	c5 fa 10 44 24 40    	vmovss 0x40(%rsp),%xmm0
    223f:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    2243:	76 36                	jbe    227b <_ZN13try_float_seq4sortENS_3ArrEm+0x2fb>
    2245:	49 8d 57 04          	lea    0x4(%r15),%rdx
    2249:	48 c1 fa 02          	sar    $0x2,%rdx
    224d:	48 85 d2             	test   %rdx,%rdx
    2250:	74 21                	je     2273 <_ZN13try_float_seq4sortENS_3ArrEm+0x2f3>
    2252:	48 c1 e2 02          	shl    $0x2,%rdx
    2256:	4d 89 e0             	mov    %r12,%r8
    2259:	4c 2b c2             	sub    %rdx,%r8
    225c:	4c 89 f6             	mov    %r14,%rsi
    225f:	c5 fa 11 0c 24       	vmovss %xmm1,(%rsp)
    2264:	4b 8d 7c 07 04       	lea    0x4(%r15,%r8,1),%rdi
    2269:	e8 00 00 00 00       	callq  226e <_ZN13try_float_seq4sortENS_3ArrEm+0x2ee>
    226e:	c5 fa 10 0c 24       	vmovss (%rsp),%xmm1
    2273:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
    2279:	eb 54                	jmp    22cf <_ZN13try_float_seq4sortENS_3ArrEm+0x34f>
    227b:	c4 a1 7a 10 44 3c 40 	vmovss 0x40(%rsp,%r15,1),%xmm0
    2282:	4f 8d 1c 3c          	lea    (%r12,%r15,1),%r11
    2286:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    228a:	76 3e                	jbe    22ca <_ZN13try_float_seq4sortENS_3ArrEm+0x34a>
    228c:	45 33 c0             	xor    %r8d,%r8d
    228f:	4b 8d 3c 3c          	lea    (%r12,%r15,1),%rdi
    2293:	49 ff c0             	inc    %r8
    2296:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    229b:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
    22a2:	00 
    22a3:	48 f7 d8             	neg    %rax
    22a6:	48 03 c7             	add    %rdi,%rax
    22a9:	c5 fa 10 00          	vmovss (%rax),%xmm0
    22ad:	4c 8d 58 04          	lea    0x4(%rax),%r11
    22b1:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    22b5:	76 13                	jbe    22ca <_ZN13try_float_seq4sortENS_3ArrEm+0x34a>
    22b7:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    22bc:	49 89 c3             	mov    %rax,%r11
    22bf:	c5 fa 10 40 fc       	vmovss -0x4(%rax),%xmm0
    22c4:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    22c8:	77 c9                	ja     2293 <_ZN13try_float_seq4sortENS_3ArrEm+0x313>
    22ca:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    22cf:	48 ff c5             	inc    %rbp
    22d2:	49 83 c7 04          	add    $0x4,%r15
    22d6:	48 83 fd 0f          	cmp    $0xf,%rbp
    22da:	0f 82 53 ff ff ff    	jb     2233 <_ZN13try_float_seq4sortENS_3ArrEm+0x2b3>
    22e0:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
    22e5:	49 89 d9             	mov    %rbx,%r9
    22e8:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    22ed:	4c 89 e8             	mov    %r13,%rax
    22f0:	33 d2                	xor    %edx,%edx
    22f2:	49 3b c1             	cmp    %r9,%rax
    22f5:	0f 84 9f fc ff ff    	je     1f9a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    22fb:	4c 89 c9             	mov    %r9,%rcx
    22fe:	48 2b c8             	sub    %rax,%rcx
    2301:	48 83 c1 03          	add    $0x3,%rcx
    2305:	48 d1 f9             	sar    %rcx
    2308:	48 c1 e9 3e          	shr    $0x3e,%rcx
    230c:	4c 03 c9             	add    %rcx,%r9
    230f:	4c 2b c8             	sub    %rax,%r9
    2312:	49 83 c1 03          	add    $0x3,%r9
    2316:	49 c1 f9 02          	sar    $0x2,%r9
    231a:	c5 fa 10 0c 90       	vmovss (%rax,%rdx,4),%xmm1
    231f:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
    2323:	c5 fa 10 44 94 7c    	vmovss 0x7c(%rsp,%rdx,4),%xmm0
    2329:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    232d:	76 3d                	jbe    236c <_ZN13try_float_seq4sortENS_3ArrEm+0x3ec>
    232f:	33 f6                	xor    %esi,%esi
    2331:	48 8d 0c 90          	lea    (%rax,%rdx,4),%rcx
    2335:	48 ff c6             	inc    %rsi
    2338:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
    233c:	4c 8d 04 f5 00 00 00 	lea    0x0(,%rsi,8),%r8
    2343:	00 
    2344:	49 f7 d8             	neg    %r8
    2347:	4c 03 c1             	add    %rcx,%r8
    234a:	c4 c1 7a 10 00       	vmovss (%r8),%xmm0
    234f:	49 8d 78 04          	lea    0x4(%r8),%rdi
    2353:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    2357:	76 13                	jbe    236c <_ZN13try_float_seq4sortENS_3ArrEm+0x3ec>
    2359:	c5 fa 11 07          	vmovss %xmm0,(%rdi)
    235d:	4c 89 c7             	mov    %r8,%rdi
    2360:	c4 c1 7a 10 40 fc    	vmovss -0x4(%r8),%xmm0
    2366:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    236a:	77 c9                	ja     2335 <_ZN13try_float_seq4sortENS_3ArrEm+0x3b5>
    236c:	0f 1f 40 00          	nopl   0x0(%rax)
    2370:	48 ff c2             	inc    %rdx
    2373:	c5 fa 11 0f          	vmovss %xmm1,(%rdi)
    2377:	49 3b d1             	cmp    %r9,%rdx
    237a:	72 9e                	jb     231a <_ZN13try_float_seq4sortENS_3ArrEm+0x39a>
    237c:	e9 19 fc ff ff       	jmpq   1f9a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    2381:	4d 89 e9             	mov    %r13,%r9
    2384:	4d 89 f2             	mov    %r14,%r10
    2387:	48 83 f8 02          	cmp    $0x2,%rax
    238b:	7d 0f                	jge    239c <_ZN13try_float_seq4sortENS_3ArrEm+0x41c>
    238d:	48 83 f8 01          	cmp    $0x1,%rax
    2391:	0f 8f 6d 02 00 00    	jg     2604 <_ZN13try_float_seq4sortENS_3ArrEm+0x684>
    2397:	e9 61 fe ff ff       	jmpq   21fd <_ZN13try_float_seq4sortENS_3ArrEm+0x27d>
    239c:	48 8d 78 fe          	lea    -0x2(%rax),%rdi
    23a0:	48 c1 ef 3f          	shr    $0x3f,%rdi
    23a4:	33 d2                	xor    %edx,%edx
    23a6:	48 85 c0             	test   %rax,%rax
    23a9:	0f 9e c2             	setle  %dl
    23ac:	4c 8d 44 38 fe       	lea    -0x2(%rax,%rdi,1),%r8
    23b1:	49 d1 f8             	sar    %r8
    23b4:	48 8d 4c 10 ff       	lea    -0x1(%rax,%rdx,1),%rcx
    23b9:	48 83 e0 01          	and    $0x1,%rax
    23bd:	48 d1 f9             	sar    %rcx
    23c0:	4a 8d 7c 84 40       	lea    0x40(%rsp,%r8,4),%rdi
    23c5:	4c 89 c2             	mov    %r8,%rdx
    23c8:	49 ff c8             	dec    %r8
    23cb:	48 83 c7 fc          	add    $0xfffffffffffffffc,%rdi
    23cf:	c5 fa 10 47 04       	vmovss 0x4(%rdi),%xmm0
    23d4:	4d 8d 60 01          	lea    0x1(%r8),%r12
    23d8:	4d 89 e5             	mov    %r12,%r13
    23db:	4d 89 e3             	mov    %r12,%r11
    23de:	4c 3b e1             	cmp    %rcx,%r12
    23e1:	0f 8d a8 01 00 00    	jge    258f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    23e7:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    23ee:	00 
    23ef:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    23f4:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    23fa:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    23ff:	76 08                	jbe    2409 <_ZN13try_float_seq4sortENS_3ArrEm+0x489>
    2401:	49 ff cb             	dec    %r11
    2404:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2409:	45 8b 36             	mov    (%r14),%r14d
    240c:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    2411:	4d 89 dd             	mov    %r11,%r13
    2414:	4c 3b d9             	cmp    %rcx,%r11
    2417:	0f 8d 72 01 00 00    	jge    258f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    241d:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    2424:	00 
    2425:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    242a:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    2430:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    2435:	76 08                	jbe    243f <_ZN13try_float_seq4sortENS_3ArrEm+0x4bf>
    2437:	49 ff cb             	dec    %r11
    243a:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    243f:	45 8b 36             	mov    (%r14),%r14d
    2442:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    2447:	4d 89 dd             	mov    %r11,%r13
    244a:	4c 3b d9             	cmp    %rcx,%r11
    244d:	0f 8d 3c 01 00 00    	jge    258f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    2453:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    245a:	00 
    245b:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2460:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    2466:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    246b:	76 08                	jbe    2475 <_ZN13try_float_seq4sortENS_3ArrEm+0x4f5>
    246d:	49 ff cb             	dec    %r11
    2470:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2475:	45 8b 36             	mov    (%r14),%r14d
    2478:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    247d:	4d 89 dd             	mov    %r11,%r13
    2480:	4c 3b d9             	cmp    %rcx,%r11
    2483:	0f 8d 06 01 00 00    	jge    258f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    2489:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    2490:	00 
    2491:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2496:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    249c:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    24a1:	76 08                	jbe    24ab <_ZN13try_float_seq4sortENS_3ArrEm+0x52b>
    24a3:	49 ff cb             	dec    %r11
    24a6:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    24ab:	45 8b 36             	mov    (%r14),%r14d
    24ae:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    24b3:	4d 89 dd             	mov    %r11,%r13
    24b6:	4c 3b d9             	cmp    %rcx,%r11
    24b9:	0f 8d d0 00 00 00    	jge    258f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    24bf:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    24c6:	00 
    24c7:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    24cc:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    24d2:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    24d7:	76 08                	jbe    24e1 <_ZN13try_float_seq4sortENS_3ArrEm+0x561>
    24d9:	49 ff cb             	dec    %r11
    24dc:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    24e1:	45 8b 36             	mov    (%r14),%r14d
    24e4:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    24e9:	4d 89 dd             	mov    %r11,%r13
    24ec:	4c 3b d9             	cmp    %rcx,%r11
    24ef:	0f 8d 9a 00 00 00    	jge    258f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    24f5:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    24fc:	00 
    24fd:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2502:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    2508:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    250d:	76 08                	jbe    2517 <_ZN13try_float_seq4sortENS_3ArrEm+0x597>
    250f:	49 ff cb             	dec    %r11
    2512:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2517:	45 8b 36             	mov    (%r14),%r14d
    251a:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    251f:	4d 89 dd             	mov    %r11,%r13
    2522:	4c 3b d9             	cmp    %rcx,%r11
    2525:	7d 68                	jge    258f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    2527:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    252e:	00 
    252f:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2534:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    253a:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    253f:	76 08                	jbe    2549 <_ZN13try_float_seq4sortENS_3ArrEm+0x5c9>
    2541:	49 ff cb             	dec    %r11
    2544:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2549:	45 8b 36             	mov    (%r14),%r14d
    254c:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    2551:	4d 89 dd             	mov    %r11,%r13
    2554:	4c 3b d9             	cmp    %rcx,%r11
    2557:	7d 36                	jge    258f <_ZN13try_float_seq4sortENS_3ArrEm+0x60f>
    2559:	4e 8d 1c 5d 02 00 00 	lea    0x2(,%r11,2),%r11
    2560:	00 
    2561:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    2566:	c4 c1 7a 10 4e fc    	vmovss -0x4(%r14),%xmm1
    256c:	c4 c1 78 2f 0e       	vcomiss (%r14),%xmm1
    2571:	76 08                	jbe    257b <_ZN13try_float_seq4sortENS_3ArrEm+0x5fb>
    2573:	49 ff cb             	dec    %r11
    2576:	4e 8d 74 9c 40       	lea    0x40(%rsp,%r11,4),%r14
    257b:	45 8b 36             	mov    (%r14),%r14d
    257e:	46 89 74 ac 40       	mov    %r14d,0x40(%rsp,%r13,4)
    2583:	4d 89 dd             	mov    %r11,%r13
    2586:	4c 3b d9             	cmp    %rcx,%r11
    2589:	0f 8c 58 fe ff ff    	jl     23e7 <_ZN13try_float_seq4sortENS_3ArrEm+0x467>
    258f:	48 85 c0             	test   %rax,%rax
    2592:	75 1b                	jne    25af <_ZN13try_float_seq4sortENS_3ArrEm+0x62f>
    2594:	4c 3b da             	cmp    %rdx,%r11
    2597:	75 16                	jne    25af <_ZN13try_float_seq4sortENS_3ArrEm+0x62f>
    2599:	4e 8d 34 5d 02 00 00 	lea    0x2(,%r11,2),%r14
    25a0:	00 
    25a1:	46 8b 5c b4 3c       	mov    0x3c(%rsp,%r14,4),%r11d
    25a6:	46 89 5c ac 40       	mov    %r11d,0x40(%rsp,%r13,4)
    25ab:	4d 8d 6e ff          	lea    -0x1(%r14),%r13
    25af:	4d 8d 5d ff          	lea    -0x1(%r13),%r11
    25b3:	49 c1 eb 3f          	shr    $0x3f,%r11
    25b7:	4f 8d 5c 1d ff       	lea    -0x1(%r13,%r11,1),%r11
    25bc:	49 d1 fb             	sar    %r11
    25bf:	4d 3b ec             	cmp    %r12,%r13
    25c2:	7e 2c                	jle    25f0 <_ZN13try_float_seq4sortENS_3ArrEm+0x670>
    25c4:	c4 a1 7a 10 4c 9c 40 	vmovss 0x40(%rsp,%r11,4),%xmm1
    25cb:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    25cf:	76 1f                	jbe    25f0 <_ZN13try_float_seq4sortENS_3ArrEm+0x670>
    25d1:	c4 a1 7a 11 4c ac 40 	vmovss %xmm1,0x40(%rsp,%r13,4)
    25d8:	4d 8d 73 ff          	lea    -0x1(%r11),%r14
    25dc:	49 c1 ee 3f          	shr    $0x3f,%r14
    25e0:	4d 89 dd             	mov    %r11,%r13
    25e3:	4f 8d 5c 33 ff       	lea    -0x1(%r11,%r14,1),%r11
    25e8:	49 d1 fb             	sar    %r11
    25eb:	4d 3b ec             	cmp    %r12,%r13
    25ee:	7f d4                	jg     25c4 <_ZN13try_float_seq4sortENS_3ArrEm+0x644>
    25f0:	0f 1f 00             	nopl   (%rax)
    25f3:	c4 a1 7a 11 44 ac 40 	vmovss %xmm0,0x40(%rsp,%r13,4)
    25fa:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
    25fe:	0f 85 c4 fd ff ff    	jne    23c8 <_ZN13try_float_seq4sortENS_3ArrEm+0x448>
    2604:	44 8b 5c 24 40       	mov    0x40(%rsp),%r11d
    2609:	45 33 c0             	xor    %r8d,%r8d
    260c:	49 ff c0             	inc    %r8
    260f:	33 ff                	xor    %edi,%edi
    2611:	33 c0                	xor    %eax,%eax
    2613:	33 d2                	xor    %edx,%edx
    2615:	4a 8d 0c 85 00 00 00 	lea    0x0(,%r8,4),%rcx
    261c:	00 
    261d:	48 f7 d9             	neg    %rcx
    2620:	48 03 ce             	add    %rsi,%rcx
    2623:	c5 fa 10 01          	vmovss (%rcx),%xmm0
    2627:	44 89 19             	mov    %r11d,(%rcx)
    262a:	4a 8d 4c 84 40       	lea    0x40(%rsp,%r8,4),%rcx
    262f:	48 f7 d9             	neg    %rcx
    2632:	48 03 ce             	add    %rsi,%rcx
    2635:	48 c1 f9 02          	sar    $0x2,%rcx
    2639:	48 85 c9             	test   %rcx,%rcx
    263c:	0f 9e c0             	setle  %al
    263f:	48 8d 44 01 ff       	lea    -0x1(%rcx,%rax,1),%rax
    2644:	48 d1 f8             	sar    %rax
    2647:	48 85 c0             	test   %rax,%rax
    264a:	7e 6a                	jle    26b6 <_ZN13try_float_seq4sortENS_3ArrEm+0x736>
    264c:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    2653:	00 
    2654:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    2659:	c4 c1 7a 10 4c 24 fc 	vmovss -0x4(%r12),%xmm1
    2660:	c4 c1 78 2f 0c 24    	vcomiss (%r12),%xmm1
    2666:	76 08                	jbe    2670 <_ZN13try_float_seq4sortENS_3ArrEm+0x6f0>
    2668:	48 ff ca             	dec    %rdx
    266b:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    2670:	45 8b 24 24          	mov    (%r12),%r12d
    2674:	44 89 64 bc 40       	mov    %r12d,0x40(%rsp,%rdi,4)
    2679:	48 89 d7             	mov    %rdx,%rdi
    267c:	48 3b d0             	cmp    %rax,%rdx
    267f:	7d 35                	jge    26b6 <_ZN13try_float_seq4sortENS_3ArrEm+0x736>
    2681:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    2688:	00 
    2689:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    268e:	c4 c1 7a 10 4c 24 fc 	vmovss -0x4(%r12),%xmm1
    2695:	c4 c1 78 2f 0c 24    	vcomiss (%r12),%xmm1
    269b:	76 08                	jbe    26a5 <_ZN13try_float_seq4sortENS_3ArrEm+0x725>
    269d:	48 ff ca             	dec    %rdx
    26a0:	4c 8d 64 94 40       	lea    0x40(%rsp,%rdx,4),%r12
    26a5:	45 8b 24 24          	mov    (%r12),%r12d
    26a9:	44 89 64 bc 40       	mov    %r12d,0x40(%rsp,%rdi,4)
    26ae:	48 89 d7             	mov    %rdx,%rdi
    26b1:	48 3b d0             	cmp    %rax,%rdx
    26b4:	7c 96                	jl     264c <_ZN13try_float_seq4sortENS_3ArrEm+0x6cc>
    26b6:	48 f7 c1 01 00 00 00 	test   $0x1,%rcx
    26bd:	75 29                	jne    26e8 <_ZN13try_float_seq4sortENS_3ArrEm+0x768>
    26bf:	48 8d 41 fe          	lea    -0x2(%rcx),%rax
    26c3:	48 c1 e8 3f          	shr    $0x3f,%rax
    26c7:	4c 8d 64 01 fe       	lea    -0x2(%rcx,%rax,1),%r12
    26cc:	49 d1 fc             	sar    %r12
    26cf:	49 3b d4             	cmp    %r12,%rdx
    26d2:	75 14                	jne    26e8 <_ZN13try_float_seq4sortENS_3ArrEm+0x768>
    26d4:	48 8d 14 55 02 00 00 	lea    0x2(,%rdx,2),%rdx
    26db:	00 
    26dc:	8b 44 94 3c          	mov    0x3c(%rsp,%rdx,4),%eax
    26e0:	89 44 bc 40          	mov    %eax,0x40(%rsp,%rdi,4)
    26e4:	48 8d 7a ff          	lea    -0x1(%rdx),%rdi
    26e8:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
    26ec:	48 c1 e8 3f          	shr    $0x3f,%rax
    26f0:	48 8d 44 07 ff       	lea    -0x1(%rdi,%rax,1),%rax
    26f5:	48 d1 f8             	sar    %rax
    26f8:	48 85 ff             	test   %rdi,%rdi
    26fb:	7e 2a                	jle    2727 <_ZN13try_float_seq4sortENS_3ArrEm+0x7a7>
    26fd:	c5 fa 10 4c 84 40    	vmovss 0x40(%rsp,%rax,4),%xmm1
    2703:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    2707:	76 1e                	jbe    2727 <_ZN13try_float_seq4sortENS_3ArrEm+0x7a7>
    2709:	c5 fa 11 4c bc 40    	vmovss %xmm1,0x40(%rsp,%rdi,4)
    270f:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    2713:	48 c1 ea 3f          	shr    $0x3f,%rdx
    2717:	48 89 c7             	mov    %rax,%rdi
    271a:	48 8d 44 10 ff       	lea    -0x1(%rax,%rdx,1),%rax
    271f:	48 d1 f8             	sar    %rax
    2722:	48 85 ff             	test   %rdi,%rdi
    2725:	7f d6                	jg     26fd <_ZN13try_float_seq4sortENS_3ArrEm+0x77d>
    2727:	0f 1f 40 00          	nopl   0x0(%rax)
    272b:	c5 fa 11 44 bc 40    	vmovss %xmm0,0x40(%rsp,%rdi,4)
    2731:	48 83 f9 01          	cmp    $0x1,%rcx
    2735:	0f 8f d1 fe ff ff    	jg     260c <_ZN13try_float_seq4sortENS_3ArrEm+0x68c>
    273b:	e9 bd fa ff ff       	jmpq   21fd <_ZN13try_float_seq4sortENS_3ArrEm+0x27d>
    2740:	4d 3b d1             	cmp    %r9,%r10
    2743:	0f 84 51 f8 ff ff    	je     1f9a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    2749:	33 d2                	xor    %edx,%edx
    274b:	48 8d 4c 24 44       	lea    0x44(%rsp),%rcx
    2750:	33 c0                	xor    %eax,%eax
    2752:	49 3b c9             	cmp    %r9,%rcx
    2755:	0f 84 3f f8 ff ff    	je     1f9a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    275b:	4c 89 ce             	mov    %r9,%rsi
    275e:	49 89 c4             	mov    %rax,%r12
    2761:	48 2b f1             	sub    %rcx,%rsi
    2764:	49 89 d5             	mov    %rdx,%r13
    2767:	48 83 c6 03          	add    $0x3,%rsi
    276b:	49 89 ce             	mov    %rcx,%r14
    276e:	48 d1 fe             	sar    %rsi
    2771:	4d 89 d7             	mov    %r10,%r15
    2774:	48 c1 ee 3e          	shr    $0x3e,%rsi
    2778:	4c 03 ce             	add    %rsi,%r9
    277b:	4c 2b c9             	sub    %rcx,%r9
    277e:	49 83 c1 03          	add    $0x3,%r9
    2782:	49 c1 f9 02          	sar    $0x2,%r9
    2786:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
    278b:	4c 89 cb             	mov    %r9,%rbx
    278e:	c4 81 7a 10 0c 34    	vmovss (%r12,%r14,1),%xmm1
    2794:	c5 fa 10 44 24 40    	vmovss 0x40(%rsp),%xmm0
    279a:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    279e:	76 37                	jbe    27d7 <_ZN13try_float_seq4sortENS_3ArrEm+0x857>
    27a0:	49 8d 54 24 04       	lea    0x4(%r12),%rdx
    27a5:	48 c1 fa 02          	sar    $0x2,%rdx
    27a9:	48 85 d2             	test   %rdx,%rdx
    27ac:	74 21                	je     27cf <_ZN13try_float_seq4sortENS_3ArrEm+0x84f>
    27ae:	48 c1 e2 02          	shl    $0x2,%rdx
    27b2:	4d 89 f0             	mov    %r14,%r8
    27b5:	4c 2b c2             	sub    %rdx,%r8
    27b8:	4c 89 fe             	mov    %r15,%rsi
    27bb:	c5 fa 11 0c 24       	vmovss %xmm1,(%rsp)
    27c0:	4b 8d 7c 04 04       	lea    0x4(%r12,%r8,1),%rdi
    27c5:	e8 00 00 00 00       	callq  27ca <_ZN13try_float_seq4sortENS_3ArrEm+0x84a>
    27ca:	c5 fa 10 0c 24       	vmovss (%rsp),%xmm1
    27cf:	c5 fa 11 4c 24 40    	vmovss %xmm1,0x40(%rsp)
    27d5:	eb 54                	jmp    282b <_ZN13try_float_seq4sortENS_3ArrEm+0x8ab>
    27d7:	c4 a1 7a 10 44 24 40 	vmovss 0x40(%rsp,%r12,1),%xmm0
    27de:	4f 8d 1c 26          	lea    (%r14,%r12,1),%r11
    27e2:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    27e6:	76 3e                	jbe    2826 <_ZN13try_float_seq4sortENS_3ArrEm+0x8a6>
    27e8:	45 33 c0             	xor    %r8d,%r8d
    27eb:	4b 8d 3c 26          	lea    (%r14,%r12,1),%rdi
    27ef:	49 ff c0             	inc    %r8
    27f2:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    27f7:	4a 8d 04 c5 00 00 00 	lea    0x0(,%r8,8),%rax
    27fe:	00 
    27ff:	48 f7 d8             	neg    %rax
    2802:	48 03 c7             	add    %rdi,%rax
    2805:	c5 fa 10 00          	vmovss (%rax),%xmm0
    2809:	4c 8d 58 04          	lea    0x4(%rax),%r11
    280d:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    2811:	76 13                	jbe    2826 <_ZN13try_float_seq4sortENS_3ArrEm+0x8a6>
    2813:	c4 c1 7a 11 03       	vmovss %xmm0,(%r11)
    2818:	49 89 c3             	mov    %rax,%r11
    281b:	c5 fa 10 40 fc       	vmovss -0x4(%rax),%xmm0
    2820:	c5 f8 2f c1          	vcomiss %xmm1,%xmm0
    2824:	77 c9                	ja     27ef <_ZN13try_float_seq4sortENS_3ArrEm+0x86f>
    2826:	c4 c1 7a 11 0b       	vmovss %xmm1,(%r11)
    282b:	49 ff c5             	inc    %r13
    282e:	49 83 c4 04          	add    $0x4,%r12
    2832:	4c 3b eb             	cmp    %rbx,%r13
    2835:	0f 82 53 ff ff ff    	jb     278e <_ZN13try_float_seq4sortENS_3ArrEm+0x80e>
    283b:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    2840:	e9 55 f7 ff ff       	jmpq   1f9a <_ZN13try_float_seq4sortENS_3ArrEm+0x1a>
    2845:	0f 1f 40 00          	nopl   0x0(%rax)
    2849:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002850 <_ZN13try_float_seq4fillENS_3ArrEm>:
    2850:	55                   	push   %rbp
    2851:	48 89 e5             	mov    %rsp,%rbp
    2854:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    2858:	48 89 fa             	mov    %rdi,%rdx
    285b:	48 85 d2             	test   %rdx,%rdx
    285e:	76 15                	jbe    2875 <_ZN13try_float_seq4fillENS_3ArrEm+0x25>
    2860:	48 83 fa 18          	cmp    $0x18,%rdx
    2864:	7e 17                	jle    287d <_ZN13try_float_seq4fillENS_3ArrEm+0x2d>
    2866:	48 c1 e2 02          	shl    $0x2,%rdx
    286a:	48 8d 7d 10          	lea    0x10(%rbp),%rdi
    286e:	33 f6                	xor    %esi,%esi
    2870:	e8 00 00 00 00       	callq  2875 <_ZN13try_float_seq4fillENS_3ArrEm+0x25>
    2875:	c5 f8 77             	vzeroupper 
    2878:	48 89 ec             	mov    %rbp,%rsp
    287b:	5d                   	pop    %rbp
    287c:	c3                   	retq   
    287d:	48 83 fa 08          	cmp    $0x8,%rdx
    2881:	7c 31                	jl     28b4 <_ZN13try_float_seq4fillENS_3ArrEm+0x64>
    2883:	48 89 d0             	mov    %rdx,%rax
    2886:	33 c9                	xor    %ecx,%ecx
    2888:	c5 fc 57 c0          	vxorps %ymm0,%ymm0,%ymm0
    288c:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    2890:	c5 fc 11 44 8d 10    	vmovups %ymm0,0x10(%rbp,%rcx,4)
    2896:	48 83 c1 08          	add    $0x8,%rcx
    289a:	48 3b c8             	cmp    %rax,%rcx
    289d:	72 f1                	jb     2890 <_ZN13try_float_seq4fillENS_3ArrEm+0x40>
    289f:	48 3b c2             	cmp    %rdx,%rax
    28a2:	73 d1                	jae    2875 <_ZN13try_float_seq4fillENS_3ArrEm+0x25>
    28a4:	33 c9                	xor    %ecx,%ecx
    28a6:	89 4c 85 10          	mov    %ecx,0x10(%rbp,%rax,4)
    28aa:	48 ff c0             	inc    %rax
    28ad:	48 3b c2             	cmp    %rdx,%rax
    28b0:	72 f4                	jb     28a6 <_ZN13try_float_seq4fillENS_3ArrEm+0x56>
    28b2:	eb c1                	jmp    2875 <_ZN13try_float_seq4fillENS_3ArrEm+0x25>
    28b4:	33 c0                	xor    %eax,%eax
    28b6:	eb e7                	jmp    289f <_ZN13try_float_seq4fillENS_3ArrEm+0x4f>
    28b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    28bf:	00 

00000000000028c0 <_ZN13try_float_seq9transformENS_3ArrES0_m>:
    28c0:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    28c5:	48 8d 04 b9          	lea    (%rcx,%rdi,4),%rax
    28c9:	48 3b c8             	cmp    %rax,%rcx
    28cc:	0f 84 1b 01 00 00    	je     29ed <_ZN13try_float_seq9transformENS_3ArrES0_m+0x12d>
    28d2:	48 89 c2             	mov    %rax,%rdx
    28d5:	48 2b d1             	sub    %rcx,%rdx
    28d8:	48 83 c2 03          	add    $0x3,%rdx
    28dc:	48 d1 fa             	sar    %rdx
    28df:	48 c1 ea 3e          	shr    $0x3e,%rdx
    28e3:	48 03 c2             	add    %rdx,%rax
    28e6:	48 2b c1             	sub    %rcx,%rax
    28e9:	48 83 c0 03          	add    $0x3,%rax
    28ed:	48 c1 f8 02          	sar    $0x2,%rax
    28f1:	48 83 f8 10          	cmp    $0x10,%rax
    28f5:	0f 8c 8e 00 00 00    	jl     2989 <_ZN13try_float_seq9transformENS_3ArrES0_m+0xc9>
    28fb:	48 83 f8 1d          	cmp    $0x1d,%rax
    28ff:	0f 8c ec 00 00 00    	jl     29f1 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x131>
    2905:	48 83 e1 1f          	and    $0x1f,%rcx
    2909:	74 0b                	je     2916 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x56>
    290b:	48 f7 d9             	neg    %rcx
    290e:	48 83 c1 20          	add    $0x20,%rcx
    2912:	48 c1 e9 02          	shr    $0x2,%rcx
    2916:	48 8d 51 10          	lea    0x10(%rcx),%rdx
    291a:	48 3b c2             	cmp    %rdx,%rax
    291d:	7c 6a                	jl     2989 <_ZN13try_float_seq9transformENS_3ArrES0_m+0xc9>
    291f:	48 89 c7             	mov    %rax,%rdi
    2922:	33 d2                	xor    %edx,%edx
    2924:	48 2b f9             	sub    %rcx,%rdi
    2927:	48 83 e7 0f          	and    $0xf,%rdi
    292b:	48 f7 df             	neg    %rdi
    292e:	48 03 f8             	add    %rax,%rdi
    2931:	48 85 c9             	test   %rcx,%rcx
    2934:	76 1e                	jbe    2954 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x94>
    2936:	c5 fa 2c 74 94 08    	vcvttss2si 0x8(%rsp,%rdx,4),%esi
    293c:	03 f6                	add    %esi,%esi
    293e:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2942:	c5 fa 2a c6          	vcvtsi2ss %esi,%xmm0,%xmm0
    2946:	c5 fa 11 44 94 08    	vmovss %xmm0,0x8(%rsp,%rdx,4)
    294c:	48 ff c2             	inc    %rdx
    294f:	48 3b d1             	cmp    %rcx,%rdx
    2952:	72 e2                	jb     2936 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x76>
    2954:	c5 fe 5b 44 8c 08    	vcvttps2dq 0x8(%rsp,%rcx,4),%ymm0
    295a:	c5 fe 5b 5c 8c 28    	vcvttps2dq 0x28(%rsp,%rcx,4),%ymm3
    2960:	c5 f5 72 f0 01       	vpslld $0x1,%ymm0,%ymm1
    2965:	c5 dd 72 f3 01       	vpslld $0x1,%ymm3,%ymm4
    296a:	c5 fc 5b d1          	vcvtdq2ps %ymm1,%ymm2
    296e:	c5 fc 5b ec          	vcvtdq2ps %ymm4,%ymm5
    2972:	c5 fc 11 54 8c 08    	vmovups %ymm2,0x8(%rsp,%rcx,4)
    2978:	c5 fc 11 6c 8c 28    	vmovups %ymm5,0x28(%rsp,%rcx,4)
    297e:	48 83 c1 10          	add    $0x10,%rcx
    2982:	48 3b cf             	cmp    %rdi,%rcx
    2985:	72 cd                	jb     2954 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x94>
    2987:	eb 02                	jmp    298b <_ZN13try_float_seq9transformENS_3ArrES0_m+0xcb>
    2989:	33 ff                	xor    %edi,%edi
    298b:	48 8d 57 01          	lea    0x1(%rdi),%rdx
    298f:	48 3b d0             	cmp    %rax,%rdx
    2992:	77 59                	ja     29ed <_ZN13try_float_seq9transformENS_3ArrES0_m+0x12d>
    2994:	48 2b c7             	sub    %rdi,%rax
    2997:	48 83 f8 04          	cmp    $0x4,%rax
    299b:	7c 62                	jl     29ff <_ZN13try_float_seq9transformENS_3ArrES0_m+0x13f>
    299d:	48 89 c6             	mov    %rax,%rsi
    29a0:	33 c9                	xor    %ecx,%ecx
    29a2:	48 83 e6 fc          	and    $0xfffffffffffffffc,%rsi
    29a6:	48 8d 54 bc 08       	lea    0x8(%rsp,%rdi,4),%rdx
    29ab:	c5 fa 5b 04 8a       	vcvttps2dq (%rdx,%rcx,4),%xmm0
    29b0:	c5 f1 72 f0 01       	vpslld $0x1,%xmm0,%xmm1
    29b5:	c5 f8 5b d1          	vcvtdq2ps %xmm1,%xmm2
    29b9:	c5 f8 11 14 8a       	vmovups %xmm2,(%rdx,%rcx,4)
    29be:	48 83 c1 04          	add    $0x4,%rcx
    29c2:	48 3b ce             	cmp    %rsi,%rcx
    29c5:	72 e4                	jb     29ab <_ZN13try_float_seq9transformENS_3ArrES0_m+0xeb>
    29c7:	48 3b f0             	cmp    %rax,%rsi
    29ca:	73 21                	jae    29ed <_ZN13try_float_seq9transformENS_3ArrES0_m+0x12d>
    29cc:	48 8d 54 bc 08       	lea    0x8(%rsp,%rdi,4),%rdx
    29d1:	c5 fa 2c 0c b2       	vcvttss2si (%rdx,%rsi,4),%ecx
    29d6:	03 c9                	add    %ecx,%ecx
    29d8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    29dc:	c5 fa 2a c1          	vcvtsi2ss %ecx,%xmm0,%xmm0
    29e0:	c5 fa 11 04 b2       	vmovss %xmm0,(%rdx,%rsi,4)
    29e5:	48 ff c6             	inc    %rsi
    29e8:	48 3b f0             	cmp    %rax,%rsi
    29eb:	72 e4                	jb     29d1 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x111>
    29ed:	c5 f8 77             	vzeroupper 
    29f0:	c3                   	retq   
    29f1:	48 89 c7             	mov    %rax,%rdi
    29f4:	33 c9                	xor    %ecx,%ecx
    29f6:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
    29fa:	e9 55 ff ff ff       	jmpq   2954 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x94>
    29ff:	33 f6                	xor    %esi,%esi
    2a01:	eb c4                	jmp    29c7 <_ZN13try_float_seq9transformENS_3ArrES0_m+0x107>
    2a03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2a0f:	00 

0000000000002a10 <_ZN13try_float_seq11transform32ENS_3ArrES0_m>:
    2a10:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    2a15:	48 c1 e7 05          	shl    $0x5,%rdi
    2a19:	48 03 fa             	add    %rdx,%rdi
    2a1c:	48 3b d7             	cmp    %rdi,%rdx
    2a1f:	0f 84 1b 01 00 00    	je     2b40 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x130>
    2a25:	48 89 f8             	mov    %rdi,%rax
    2a28:	48 2b c2             	sub    %rdx,%rax
    2a2b:	48 83 c0 03          	add    $0x3,%rax
    2a2f:	48 d1 f8             	sar    %rax
    2a32:	48 c1 e8 3e          	shr    $0x3e,%rax
    2a36:	48 03 f8             	add    %rax,%rdi
    2a39:	48 2b fa             	sub    %rdx,%rdi
    2a3c:	48 83 c7 03          	add    $0x3,%rdi
    2a40:	48 c1 ff 02          	sar    $0x2,%rdi
    2a44:	48 83 ff 10          	cmp    $0x10,%rdi
    2a48:	0f 8c 8e 00 00 00    	jl     2adc <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0xcc>
    2a4e:	48 83 ff 1d          	cmp    $0x1d,%rdi
    2a52:	0f 8c ec 00 00 00    	jl     2b44 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x134>
    2a58:	48 83 e2 1f          	and    $0x1f,%rdx
    2a5c:	74 0b                	je     2a69 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x59>
    2a5e:	48 f7 da             	neg    %rdx
    2a61:	48 83 c2 20          	add    $0x20,%rdx
    2a65:	48 c1 ea 02          	shr    $0x2,%rdx
    2a69:	48 8d 42 10          	lea    0x10(%rdx),%rax
    2a6d:	48 3b f8             	cmp    %rax,%rdi
    2a70:	7c 6a                	jl     2adc <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0xcc>
    2a72:	48 89 fe             	mov    %rdi,%rsi
    2a75:	33 c0                	xor    %eax,%eax
    2a77:	48 2b f2             	sub    %rdx,%rsi
    2a7a:	48 83 e6 0f          	and    $0xf,%rsi
    2a7e:	48 f7 de             	neg    %rsi
    2a81:	48 03 f7             	add    %rdi,%rsi
    2a84:	48 85 d2             	test   %rdx,%rdx
    2a87:	76 1e                	jbe    2aa7 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x97>
    2a89:	c5 fa 2c 4c 84 08    	vcvttss2si 0x8(%rsp,%rax,4),%ecx
    2a8f:	03 c9                	add    %ecx,%ecx
    2a91:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2a95:	c5 fa 2a c1          	vcvtsi2ss %ecx,%xmm0,%xmm0
    2a99:	c5 fa 11 44 84 08    	vmovss %xmm0,0x8(%rsp,%rax,4)
    2a9f:	48 ff c0             	inc    %rax
    2aa2:	48 3b c2             	cmp    %rdx,%rax
    2aa5:	72 e2                	jb     2a89 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x79>
    2aa7:	c5 fe 5b 44 94 08    	vcvttps2dq 0x8(%rsp,%rdx,4),%ymm0
    2aad:	c5 fe 5b 5c 94 28    	vcvttps2dq 0x28(%rsp,%rdx,4),%ymm3
    2ab3:	c5 f5 72 f0 01       	vpslld $0x1,%ymm0,%ymm1
    2ab8:	c5 dd 72 f3 01       	vpslld $0x1,%ymm3,%ymm4
    2abd:	c5 fc 5b d1          	vcvtdq2ps %ymm1,%ymm2
    2ac1:	c5 fc 5b ec          	vcvtdq2ps %ymm4,%ymm5
    2ac5:	c5 fc 11 54 94 08    	vmovups %ymm2,0x8(%rsp,%rdx,4)
    2acb:	c5 fc 11 6c 94 28    	vmovups %ymm5,0x28(%rsp,%rdx,4)
    2ad1:	48 83 c2 10          	add    $0x10,%rdx
    2ad5:	48 3b d6             	cmp    %rsi,%rdx
    2ad8:	72 cd                	jb     2aa7 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x97>
    2ada:	eb 02                	jmp    2ade <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0xce>
    2adc:	33 f6                	xor    %esi,%esi
    2ade:	48 8d 46 01          	lea    0x1(%rsi),%rax
    2ae2:	48 3b c7             	cmp    %rdi,%rax
    2ae5:	77 59                	ja     2b40 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x130>
    2ae7:	48 2b fe             	sub    %rsi,%rdi
    2aea:	48 83 ff 04          	cmp    $0x4,%rdi
    2aee:	7c 62                	jl     2b52 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x142>
    2af0:	48 89 f9             	mov    %rdi,%rcx
    2af3:	33 d2                	xor    %edx,%edx
    2af5:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
    2af9:	48 8d 44 b4 08       	lea    0x8(%rsp,%rsi,4),%rax
    2afe:	c5 fa 5b 04 90       	vcvttps2dq (%rax,%rdx,4),%xmm0
    2b03:	c5 f1 72 f0 01       	vpslld $0x1,%xmm0,%xmm1
    2b08:	c5 f8 5b d1          	vcvtdq2ps %xmm1,%xmm2
    2b0c:	c5 f8 11 14 90       	vmovups %xmm2,(%rax,%rdx,4)
    2b11:	48 83 c2 04          	add    $0x4,%rdx
    2b15:	48 3b d1             	cmp    %rcx,%rdx
    2b18:	72 e4                	jb     2afe <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0xee>
    2b1a:	48 3b cf             	cmp    %rdi,%rcx
    2b1d:	73 21                	jae    2b40 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x130>
    2b1f:	48 8d 44 b4 08       	lea    0x8(%rsp,%rsi,4),%rax
    2b24:	c5 fa 2c 14 88       	vcvttss2si (%rax,%rcx,4),%edx
    2b29:	03 d2                	add    %edx,%edx
    2b2b:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2b2f:	c5 fa 2a c2          	vcvtsi2ss %edx,%xmm0,%xmm0
    2b33:	c5 fa 11 04 88       	vmovss %xmm0,(%rax,%rcx,4)
    2b38:	48 ff c1             	inc    %rcx
    2b3b:	48 3b cf             	cmp    %rdi,%rcx
    2b3e:	72 e4                	jb     2b24 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x114>
    2b40:	c5 f8 77             	vzeroupper 
    2b43:	c3                   	retq   
    2b44:	48 89 fe             	mov    %rdi,%rsi
    2b47:	33 d2                	xor    %edx,%edx
    2b49:	48 83 e6 f0          	and    $0xfffffffffffffff0,%rsi
    2b4d:	e9 55 ff ff ff       	jmpq   2aa7 <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x97>
    2b52:	33 c9                	xor    %ecx,%ecx
    2b54:	eb c4                	jmp    2b1a <_ZN13try_float_seq11transform32ENS_3ArrES0_m+0x10a>
    2b56:	0f 1f 00             	nopl   (%rax)
    2b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

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
