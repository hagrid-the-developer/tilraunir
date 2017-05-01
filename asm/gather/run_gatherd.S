	.globl run_gatherd
	.type  run_gatherd,@function
	.align 16
run_gatherd:
	# rdi -- src
	# rsi -- len_div_32
	# ymm0 -- steps
	vcmpeqps %ymm10, %ymm10, %ymm10
1:	vgatherdps %ymm10, (%rdi, %ymm0, 4), %ymm1
	lea 0x4(%rdi), %rdi
	dec %rsi
	jne 1b
	ret
