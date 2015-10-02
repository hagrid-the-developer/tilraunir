	.globl	rectifier_avx_asm_1
	.type	rectifier_avx_asm_1,@function
	.align	16
rectifier_avx_asm_1:
	#rdi -- pointer to array
	#rsi -- length of the array (number of floats)
	vxorps %ymm0,%ymm0,%ymm0
	lea (%rdi, %rsi, 4), %rdi
	mov %rsi, %r11
	shr $0x3, %r11
1:	je 2f # if length/8 == 0
	sub $0x20, %rdi
	vmovups (%rdi), %ymm1
	vmaxps %ymm0, %ymm1, %ymm1
	vmovups %ymm1, (%rdi)
	dec %r11
	jmp 1b
2:	mov %rsi, %r11
	shr $0x3, %r11
	shl $0x3, %r11
	sub %r11, %rsi # First index: %r11, length: %rsi
3:	je 4f
	sub $0x4, %rdi
	vmovss (%rdi), %xmm1
	vmaxss %xmm0, %xmm1, %xmm1 # xmm0 should be zero because ymm0 is zero
	movss %xmm1, (%rdi)
	dec %rsi
	jmp 3b
4:	ret
	
	.size rectifier_avx_asm_1,.-rectifier_avx_asm_1
