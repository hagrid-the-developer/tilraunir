
./test:     file format elf64-x86-64


Disassembly of section .init:

0000000000400600 <_init>:
_init():
  400600:	48 83 ec 08          	sub    $0x8,%rsp
  400604:	48 8b 05 ed 09 20 00 	mov    0x2009ed(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40060b:	48 85 c0             	test   %rax,%rax
  40060e:	74 05                	je     400615 <_init+0x15>
  400610:	e8 6b 00 00 00       	callq  400680 <__gmon_start__@plt>
  400615:	48 83 c4 08          	add    $0x8,%rsp
  400619:	c3                   	retq   

Disassembly of section .plt:

0000000000400620 <free@plt-0x10>:
  400620:	ff 35 e2 09 20 00    	pushq  0x2009e2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400626:	ff 25 e4 09 20 00    	jmpq   *0x2009e4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40062c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400630 <free@plt>:
  400630:	ff 25 e2 09 20 00    	jmpq   *0x2009e2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400636:	68 00 00 00 00       	pushq  $0x0
  40063b:	e9 e0 ff ff ff       	jmpq   400620 <_init+0x20>

0000000000400640 <abort@plt>:
  400640:	ff 25 da 09 20 00    	jmpq   *0x2009da(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400646:	68 01 00 00 00       	pushq  $0x1
  40064b:	e9 d0 ff ff ff       	jmpq   400620 <_init+0x20>

0000000000400650 <__stack_chk_fail@plt>:
  400650:	ff 25 d2 09 20 00    	jmpq   *0x2009d2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400656:	68 02 00 00 00       	pushq  $0x2
  40065b:	e9 c0 ff ff ff       	jmpq   400620 <_init+0x20>

0000000000400660 <gettimeofday@plt>:
  400660:	ff 25 ca 09 20 00    	jmpq   *0x2009ca(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400666:	68 03 00 00 00       	pushq  $0x3
  40066b:	e9 b0 ff ff ff       	jmpq   400620 <_init+0x20>

0000000000400670 <__libc_start_main@plt>:
  400670:	ff 25 c2 09 20 00    	jmpq   *0x2009c2(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400676:	68 04 00 00 00       	pushq  $0x4
  40067b:	e9 a0 ff ff ff       	jmpq   400620 <_init+0x20>

0000000000400680 <__gmon_start__@plt>:
  400680:	ff 25 ba 09 20 00    	jmpq   *0x2009ba(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400686:	68 05 00 00 00       	pushq  $0x5
  40068b:	e9 90 ff ff ff       	jmpq   400620 <_init+0x20>

0000000000400690 <exit@plt>:
  400690:	ff 25 b2 09 20 00    	jmpq   *0x2009b2(%rip)        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400696:	68 06 00 00 00       	pushq  $0x6
  40069b:	e9 80 ff ff ff       	jmpq   400620 <_init+0x20>

00000000004006a0 <fwrite@plt>:
  4006a0:	ff 25 aa 09 20 00    	jmpq   *0x2009aa(%rip)        # 601050 <_GLOBAL_OFFSET_TABLE_+0x50>
  4006a6:	68 07 00 00 00       	pushq  $0x7
  4006ab:	e9 70 ff ff ff       	jmpq   400620 <_init+0x20>

00000000004006b0 <__fprintf_chk@plt>:
  4006b0:	ff 25 a2 09 20 00    	jmpq   *0x2009a2(%rip)        # 601058 <_GLOBAL_OFFSET_TABLE_+0x58>
  4006b6:	68 08 00 00 00       	pushq  $0x8
  4006bb:	e9 60 ff ff ff       	jmpq   400620 <_init+0x20>

00000000004006c0 <posix_memalign@plt>:
  4006c0:	ff 25 9a 09 20 00    	jmpq   *0x20099a(%rip)        # 601060 <_GLOBAL_OFFSET_TABLE_+0x60>
  4006c6:	68 09 00 00 00       	pushq  $0x9
  4006cb:	e9 50 ff ff ff       	jmpq   400620 <_init+0x20>

Disassembly of section .text:

00000000004006d0 <main>:
main():
  4006d0:	55                   	push   %rbp
  4006d1:	ba 00 00 02 20       	mov    $0x20020000,%edx
  4006d6:	be 20 00 00 00       	mov    $0x20,%esi
  4006db:	48 89 e5             	mov    %rsp,%rbp
  4006de:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  4006e2:	48 83 ec 70          	sub    $0x70,%rsp
  4006e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4006ed:	00 00 
  4006ef:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  4006f4:	31 c0                	xor    %eax,%eax
  4006f6:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4006fb:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
  400702:	00 00 
  400704:	e8 b7 ff ff ff       	callq  4006c0 <posix_memalign@plt>
  400709:	85 c0                	test   %eax,%eax
  40070b:	0f 85 0d 01 00 00    	jne    40081e <main+0x14e>
  400711:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  400716:	31 c0                	xor    %eax,%eax
  400718:	c5 fa 10 0d 50 03 00 	vmovss 0x350(%rip),%xmm1        # 400a70 <_IO_stdin_used+0x40>
  40071f:	00 
  400720:	c4 e1 fa 2a c0       	vcvtsi2ss %rax,%xmm0,%xmm0
  400725:	c5 fa 59 c1          	vmulss %xmm1,%xmm0,%xmm0
  400729:	c5 fa 11 04 82       	vmovss %xmm0,(%rdx,%rax,4)
  40072e:	48 83 c0 01          	add    $0x1,%rax
  400732:	48 3d 00 80 00 08    	cmp    $0x8008000,%rax
  400738:	75 e6                	jne    400720 <main+0x50>
  40073a:	e8 31 02 00 00       	callq  400970 <(anonymous namespace)::gettime()>
  40073f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  400744:	be 00 00 40 00       	mov    $0x400000,%esi
  400749:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  40074f:	e8 ec 01 00 00       	callq  400940 <run_movps>
  400754:	e8 17 02 00 00       	callq  400970 <(anonymous namespace)::gettime()>
  400759:	ba 4f 0a 40 00       	mov    $0x400a4f,%edx
  40075e:	be 01 00 00 00       	mov    $0x1,%esi
  400763:	48 8b 3d 0e 09 20 00 	mov    0x20090e(%rip),%rdi        # 601078 <__TMC_END__>
  40076a:	b8 01 00 00 00       	mov    $0x1,%eax
  40076f:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
  400775:	e8 36 ff ff ff       	callq  4006b0 <__fprintf_chk@plt>
  40077a:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  400781:	00 
  400782:	c7 44 24 34 00 00 08 	movl   $0x80000,0x34(%rsp)
  400789:	00 
  40078a:	c7 44 24 38 00 00 10 	movl   $0x100000,0x38(%rsp)
  400791:	00 
  400792:	c7 44 24 3c 00 00 18 	movl   $0x180000,0x3c(%rsp)
  400799:	00 
  40079a:	c7 44 24 40 00 00 20 	movl   $0x200000,0x40(%rsp)
  4007a1:	00 
  4007a2:	c7 44 24 44 00 00 28 	movl   $0x280000,0x44(%rsp)
  4007a9:	00 
  4007aa:	c7 44 24 48 00 00 30 	movl   $0x300000,0x48(%rsp)
  4007b1:	00 
  4007b2:	c7 44 24 4c 00 00 38 	movl   $0x380000,0x4c(%rsp)
  4007b9:	00 
  4007ba:	e8 b1 01 00 00       	callq  400970 <(anonymous namespace)::gettime()>
  4007bf:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4007c4:	be 00 00 08 00       	mov    $0x80000,%esi
  4007c9:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  4007cf:	c5 fd 6f 44 24 30    	vmovdqa 0x30(%rsp),%ymm0
  4007d5:	e8 76 01 00 00       	callq  400950 <run_gatherd>
  4007da:	e8 91 01 00 00       	callq  400970 <(anonymous namespace)::gettime()>
  4007df:	ba 59 0a 40 00       	mov    $0x400a59,%edx
  4007e4:	be 01 00 00 00       	mov    $0x1,%esi
  4007e9:	48 8b 3d 88 08 20 00 	mov    0x200888(%rip),%rdi        # 601078 <__TMC_END__>
  4007f0:	b8 01 00 00 00       	mov    $0x1,%eax
  4007f5:	c5 fb 5c 44 24 08    	vsubsd 0x8(%rsp),%xmm0,%xmm0
  4007fb:	e8 b0 fe ff ff       	callq  4006b0 <__fprintf_chk@plt>
  400800:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  400805:	e8 26 fe ff ff       	callq  400630 <free@plt>
  40080a:	31 c0                	xor    %eax,%eax
  40080c:	48 8b 4c 24 68       	mov    0x68(%rsp),%rcx
  400811:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  400818:	00 00 
  40081a:	75 27                	jne    400843 <main+0x173>
  40081c:	c9                   	leaveq 
  40081d:	c3                   	retq   
  40081e:	bf 34 0a 40 00       	mov    $0x400a34,%edi
  400823:	ba 1a 00 00 00       	mov    $0x1a,%edx
  400828:	be 01 00 00 00       	mov    $0x1,%esi
  40082d:	48 8b 0d 44 08 20 00 	mov    0x200844(%rip),%rcx        # 601078 <__TMC_END__>
  400834:	e8 67 fe ff ff       	callq  4006a0 <fwrite@plt>
  400839:	bf 01 00 00 00       	mov    $0x1,%edi
  40083e:	e8 4d fe ff ff       	callq  400690 <exit@plt>
  400843:	e8 08 fe ff ff       	callq  400650 <__stack_chk_fail@plt>

0000000000400848 <_start>:
_start():
  400848:	31 ed                	xor    %ebp,%ebp
  40084a:	49 89 d1             	mov    %rdx,%r9
  40084d:	5e                   	pop    %rsi
  40084e:	48 89 e2             	mov    %rsp,%rdx
  400851:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400855:	50                   	push   %rax
  400856:	54                   	push   %rsp
  400857:	49 c7 c0 20 0a 40 00 	mov    $0x400a20,%r8
  40085e:	48 c7 c1 b0 09 40 00 	mov    $0x4009b0,%rcx
  400865:	48 c7 c7 d0 06 40 00 	mov    $0x4006d0,%rdi
  40086c:	e8 ff fd ff ff       	callq  400670 <__libc_start_main@plt>
  400871:	f4                   	hlt    
  400872:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400879:	00 00 00 
  40087c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400880 <deregister_tm_clones>:
deregister_tm_clones():
  400880:	b8 7f 10 60 00       	mov    $0x60107f,%eax
  400885:	55                   	push   %rbp
  400886:	48 2d 78 10 60 00    	sub    $0x601078,%rax
  40088c:	48 83 f8 0e          	cmp    $0xe,%rax
  400890:	48 89 e5             	mov    %rsp,%rbp
  400893:	77 02                	ja     400897 <deregister_tm_clones+0x17>
  400895:	5d                   	pop    %rbp
  400896:	c3                   	retq   
  400897:	b8 00 00 00 00       	mov    $0x0,%eax
  40089c:	48 85 c0             	test   %rax,%rax
  40089f:	74 f4                	je     400895 <deregister_tm_clones+0x15>
  4008a1:	5d                   	pop    %rbp
  4008a2:	bf 78 10 60 00       	mov    $0x601078,%edi
  4008a7:	ff e0                	jmpq   *%rax
  4008a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008b0 <register_tm_clones>:
register_tm_clones():
  4008b0:	b8 78 10 60 00       	mov    $0x601078,%eax
  4008b5:	55                   	push   %rbp
  4008b6:	48 2d 78 10 60 00    	sub    $0x601078,%rax
  4008bc:	48 c1 f8 03          	sar    $0x3,%rax
  4008c0:	48 89 e5             	mov    %rsp,%rbp
  4008c3:	48 89 c2             	mov    %rax,%rdx
  4008c6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4008ca:	48 01 d0             	add    %rdx,%rax
  4008cd:	48 d1 f8             	sar    %rax
  4008d0:	75 02                	jne    4008d4 <register_tm_clones+0x24>
  4008d2:	5d                   	pop    %rbp
  4008d3:	c3                   	retq   
  4008d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4008d9:	48 85 d2             	test   %rdx,%rdx
  4008dc:	74 f4                	je     4008d2 <register_tm_clones+0x22>
  4008de:	5d                   	pop    %rbp
  4008df:	48 89 c6             	mov    %rax,%rsi
  4008e2:	bf 78 10 60 00       	mov    $0x601078,%edi
  4008e7:	ff e2                	jmpq   *%rdx
  4008e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008f0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  4008f0:	80 3d 89 07 20 00 00 	cmpb   $0x0,0x200789(%rip)        # 601080 <completed.6973>
  4008f7:	75 11                	jne    40090a <__do_global_dtors_aux+0x1a>
  4008f9:	55                   	push   %rbp
  4008fa:	48 89 e5             	mov    %rsp,%rbp
  4008fd:	e8 7e ff ff ff       	callq  400880 <deregister_tm_clones>
  400902:	5d                   	pop    %rbp
  400903:	c6 05 76 07 20 00 01 	movb   $0x1,0x200776(%rip)        # 601080 <completed.6973>
  40090a:	f3 c3                	repz retq 
  40090c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400910 <frame_dummy>:
frame_dummy():
  400910:	48 83 3d 08 05 20 00 	cmpq   $0x0,0x200508(%rip)        # 600e20 <__JCR_END__>
  400917:	00 
  400918:	74 1e                	je     400938 <frame_dummy+0x28>
  40091a:	b8 00 00 00 00       	mov    $0x0,%eax
  40091f:	48 85 c0             	test   %rax,%rax
  400922:	74 14                	je     400938 <frame_dummy+0x28>
  400924:	55                   	push   %rbp
  400925:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40092a:	48 89 e5             	mov    %rsp,%rbp
  40092d:	ff d0                	callq  *%rax
  40092f:	5d                   	pop    %rbp
  400930:	e9 7b ff ff ff       	jmpq   4008b0 <register_tm_clones>
  400935:	0f 1f 00             	nopl   (%rax)
  400938:	e9 73 ff ff ff       	jmpq   4008b0 <register_tm_clones>
  40093d:	0f 1f 00             	nopl   (%rax)

0000000000400940 <run_movps>:
run_movps():
  400940:	c5 fc 28 07          	vmovaps (%rdi),%ymm0
  400944:	48 8d 7f 20          	lea    0x20(%rdi),%rdi
  400948:	48 ff ce             	dec    %rsi
  40094b:	75 f3                	jne    400940 <run_movps>
  40094d:	c3                   	retq   
  40094e:	66 90                	xchg   %ax,%ax

0000000000400950 <run_gatherd>:
run_gatherd():
  400950:	c4 41 2c c2 d2 00    	vcmpeqps %ymm10,%ymm10,%ymm10
  400956:	c4 e2 2d 92 0c 87    	vgatherdps %ymm10,(%rdi,%ymm0,4),%ymm1
  40095c:	48 8d 7f 04          	lea    0x4(%rdi),%rdi
  400960:	48 ff ce             	dec    %rsi
  400963:	75 f1                	jne    400956 <run_gatherd+0x6>
  400965:	c3                   	retq   
  400966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40096d:	00 00 00 

0000000000400970 <(anonymous namespace)::gettime()>:
_ZN12_GLOBAL__N_17gettimeEv():
  400970:	55                   	push   %rbp
  400971:	31 f6                	xor    %esi,%esi
  400973:	48 89 e5             	mov    %rsp,%rbp
  400976:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  40097a:	48 83 ec 20          	sub    $0x20,%rsp
  40097e:	48 89 e7             	mov    %rsp,%rdi
  400981:	e8 da fc ff ff       	callq  400660 <gettimeofday@plt>
  400986:	83 f8 ff             	cmp    $0xffffffff,%eax
  400989:	74 18                	je     4009a3 <(anonymous namespace)::gettime()+0x33>
  40098b:	c4 e1 fb 2a 44 24 08 	vcvtsi2sdq 0x8(%rsp),%xmm0,%xmm0
  400992:	c4 e1 f3 2a 0c 24    	vcvtsi2sdq (%rsp),%xmm1,%xmm1
  400998:	c4 e2 f1 99 05 c7 00 	vfmadd132sd 0xc7(%rip),%xmm1,%xmm0        # 400a68 <_IO_stdin_used+0x38>
  40099f:	00 00 
  4009a1:	c9                   	leaveq 
  4009a2:	c3                   	retq   
  4009a3:	e8 98 fc ff ff       	callq  400640 <abort@plt>
  4009a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009af:	00 

00000000004009b0 <__libc_csu_init>:
__libc_csu_init():
  4009b0:	41 57                	push   %r15
  4009b2:	41 89 ff             	mov    %edi,%r15d
  4009b5:	41 56                	push   %r14
  4009b7:	49 89 f6             	mov    %rsi,%r14
  4009ba:	41 55                	push   %r13
  4009bc:	49 89 d5             	mov    %rdx,%r13
  4009bf:	41 54                	push   %r12
  4009c1:	4c 8d 25 48 04 20 00 	lea    0x200448(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4009c8:	55                   	push   %rbp
  4009c9:	48 8d 2d 48 04 20 00 	lea    0x200448(%rip),%rbp        # 600e18 <__init_array_end>
  4009d0:	53                   	push   %rbx
  4009d1:	4c 29 e5             	sub    %r12,%rbp
  4009d4:	31 db                	xor    %ebx,%ebx
  4009d6:	48 c1 fd 03          	sar    $0x3,%rbp
  4009da:	48 83 ec 08          	sub    $0x8,%rsp
  4009de:	e8 1d fc ff ff       	callq  400600 <_init>
  4009e3:	48 85 ed             	test   %rbp,%rbp
  4009e6:	74 1e                	je     400a06 <__libc_csu_init+0x56>
  4009e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009ef:	00 
  4009f0:	4c 89 ea             	mov    %r13,%rdx
  4009f3:	4c 89 f6             	mov    %r14,%rsi
  4009f6:	44 89 ff             	mov    %r15d,%edi
  4009f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4009fd:	48 83 c3 01          	add    $0x1,%rbx
  400a01:	48 39 eb             	cmp    %rbp,%rbx
  400a04:	75 ea                	jne    4009f0 <__libc_csu_init+0x40>
  400a06:	48 83 c4 08          	add    $0x8,%rsp
  400a0a:	5b                   	pop    %rbx
  400a0b:	5d                   	pop    %rbp
  400a0c:	41 5c                	pop    %r12
  400a0e:	41 5d                	pop    %r13
  400a10:	41 5e                	pop    %r14
  400a12:	41 5f                	pop    %r15
  400a14:	c3                   	retq   
  400a15:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  400a1c:	00 00 00 00 

0000000000400a20 <__libc_csu_fini>:
__libc_csu_fini():
  400a20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400a24 <_fini>:
_fini():
  400a24:	48 83 ec 08          	sub    $0x8,%rsp
  400a28:	48 83 c4 08          	add    $0x8,%rsp
  400a2c:	c3                   	retq   
