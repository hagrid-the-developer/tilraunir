	.globl	rectifier_avx_asm_1
	.type	rectifier_avx_asm_1,@function
	.align	16
rectifier_avx_asm_1:
	#rdi -- pointer to array
	#rsi -- length of the array (number of floats)
	vxorps %xmm0,%xmm0,%xmm0
	mov %rsi, %r12
	shr $0x3, %r12
1:	je 2f # if length/8 == 0
	sub $0x20, %rdi
	vmovups (%rdi), %xmm1
	vmaxps %xmm0, %xmm1, %xmm1
	vmovups %xmm1, (%rdi)
	dec %r12
	jmp 1b
2:	mov %rsi, %r11
	shr $0x3, %r11
	shl $0x3, %r11
	sub %r11, %rsi # First index: %r11, length: %rsi
3:	je 4f
	sub $0x4, %rdi
	vmovss (%rdi), %xmm1
	vmaxss %xmm0, %xmm1, %xmm1
	movss %xmm1, (%rdi)
	dec %rsi
	jmp 3b
4:	ret
	
	.size rectifier_avx_asm_1,.-rectifier_avx_asm_1
