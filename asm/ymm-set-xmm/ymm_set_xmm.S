	.globl ymm_set_xmm
	.type  ymm_set_xmm,@function
	.align 16
ymm_set_xmm:
	vpcmpeqd %ymm0, %ymm0, %ymm0
	vpcmpeqd %xmm0, %xmm0, %xmm0
	ret
