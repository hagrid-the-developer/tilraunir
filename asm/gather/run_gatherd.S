	.globl run_gatherd
	.type  run_gatherd,@function
	.align 16
run_gatherd:
	# rdi -- src
	# rsi -- len_div_32
	# ymm0 -- steps
1:	vcmpeqps %ymm10, %ymm10, %ymm10
	vgatherdps %ymm10, (%rdi, %ymm0, 4), %ymm1
	lea 0x4(%rdi), %rdi
	dec %rsi
	jne 1b
	ret

	.globl run_gatherd_sum
	.type  run_gatherd_sum,@function
	.align 16
run_gatherd_sum:
	# rdi -- src
	# rsi -- len_div_32
	# ymm0 -- steps
	vxorps %ymm2, %ymm2, %ymm2
1:	vcmpeqps %ymm3, %ymm3, %ymm3
	vgatherdps %ymm3, (%rdi, %ymm0, 4), %ymm1
	vaddps %ymm1, %ymm2, %ymm2
	lea 0x4(%rdi), %rdi
	dec %rsi
	jne 1b
	vmovaps %ymm2, %ymm0
	ret
