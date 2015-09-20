	.globl	meave_rwspinlock_write_lock_helper
	.type	meave_rwspinlock_write_lock_helper,@function
	.align	16
meave_rwspinlock_write_lock_helper:
1:	LOCK
	subl	$0x01000000, (%rdi)      #sets ZF according to final value of (%rdi)
	jne	2f
	ret

	.align	16
2:	LOCK
	addl	$0x01000000, (%rdi)
3:	rep
	nop                               # rep + nop -- do nothing for a while
	cmpl	$0x01000000, (%rdi)
	je	1b
	jmp	3b
	.size	meave_rwspinlock_write_lock_helper,.-meave_rwspinlock_write_lock_helper
