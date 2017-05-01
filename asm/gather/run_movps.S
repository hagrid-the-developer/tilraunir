	.globl run_movps
	.type  run_movps,@function
	.align 16
run_movps:
	# rdi -- src
	# rsi -- len_div_32
1:	vmovaps (%rdi), %ymm0
	lea 0x20(%rdi), %rdi
	dec %rsi
	jne 1b
	ret
