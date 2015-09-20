/*
 * http://lxr.free-electrons.com/source/arch/x86/include/asm/atomic.h
 * http://www.intel.com/content/www/us/en/architecture-and-technology/64-ia-32-architectures-software-developer-instruction-set-reference-manual-325383.html
 */

#ifndef MEAVE_RWSPINLOCK_INCLUDED
#define MEAVE_RWSPINLOCK_INCLUDED

#define RWSPINLOCK_BIAS 0x01000000

typedef struct rwspinlock_s {
	volatile int counter;
} rwspinlock_t;

#define RWSPINLOCK_INIT { RWSPINLOCK_BIAS }

#define CPU_RELAX \
do { \
	asm volatile("rep; nop" ::: "memory"); \
} while (0)

#define RWSPINLOCK_READ_LOCK(lock) \
do { \
	for (;;) { \
		if (__sync_sub_and_fetch(&(lock)->counter, 1) >= 0) \
			break; \
		__sync_add_and_fetch(&(lock)->counter, 1); \
		CPU_RELAX; \
	} \
} while(0)

#define RWSPINLOCK_READ_UNLOCK(lock) \
do { \
	__sync_add_and_fetch(&(lock)->counter, 1); \
} while(0)

void meave_rwspinlock_write_lock_helper(rwspinlock_t*);
void meave_rwspinlock_write_unlock_helper(rwspinlock_t*);
#define RWSPINLOCK_WRITE_LOCK(lock) ( meave_rwspinlock_write_lock_helper((lock)) )
#define RWSPINLOCK_WRITE_UNLOCK(lock) ( meave_rwspinlock_write_unlock_helper((lock)) )

#define RWSPINLOCK_READ_TRYLOCK(lock) \
do { \
	if (__sync_sub_and_fetch(&(lock)->counter, 1) >= 0) \
		return 1; \
\
	__sync_add_and_fetch(&(lock)->counter, 1); \
	return 0; \
} while(0)

#define RWSPINLOCK_WRITE_TRYLOCK(lock) \
do { \
	if (__sync_sub_and_fetch(&(lock)->counter, RWSPINLOCK_BIAS) == 0) \
		return 1; \
\
	__sync_add_and_fetch(&(lock)->counter, RWSPINLOCK_BIAS); \
	return 0; \
} while(0)

#endif
