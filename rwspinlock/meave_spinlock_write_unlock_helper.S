	.globl	meave_rwspinlock_write_unlock_helper
	.type	meave_rwspinlock_write_unlock_helper,@function
	.align	16
meave_rwspinlock_write_unlock_helper:
	LOCK
	addl	$0x01000000, (%rdi)
	ret
	.size	meave_rwspinlock_write_unlock_helper,.-meave_rwspinlock_write_unlock_helper
