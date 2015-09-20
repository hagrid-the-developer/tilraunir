/**
 * $ as meave_spinlock_write_lock_helper.S -o meave_spinlock_write_lock_helper.o
 * $ as meave_spinlock_write_unlock_helper.S -o meave_spinlock_write_unlock_helper.o
 * $ gcc -O2 -std=gnu11 -c test.c -lpthread
 * $ gcc -O2 -std=gnu11 -o test meave_spinlock_write_lock_helper.o meave_spinlock_write_unlock_helper.o test.o -lpthread
 * $ ./test
 *
 * It seems that rwspinlock write (un)lock is still slower than pthread spinlock lock/unlock and even
 *   not faster than ptrhead mutex lock/unlock. It is probably not an issue, since rw spinlock is especially
 *   needed for protecting of critical section for short read accesses.
 *
 * It seems that rw spinlock, as is, uses much more operations for write (un)lock than spinlock:
 *
 * * pthread spilock:
 *   - successful lock -> one atomic dec
 *   - unsecceful lock -> one atomic dec per attampt
 *   - unlock -> one non-atomic assigment
 *
 * * rw spinlock:
 *   - successful lock -> one atomic sub
 *   - unsecceful lock -> one atomic sub, one atomic add per attempt
 *   - unlock -> one atomic add
 */

#include <pthread.h>
#include <stdio.h>
#include <assert.h>
#include "rwspinlock.h"
#define COUNT (100*1000*1000)

pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
pthread_spinlock_t spin;
rwspinlock_t rwspin = RWSPINLOCK_INIT;

int cnt = 0;

void *f_pthread_mutex(void *p) {
  for (int k = 0; k < COUNT; k++) {
    pthread_mutex_lock(&lock);
    cnt++;
    pthread_mutex_unlock(&lock);
  }
  return NULL;
}

void *f_pthread_spinlock(void *p) {
  for (int k = 0; k < COUNT; k++) {
    pthread_spin_lock(&spin);
    cnt++;
    pthread_spin_unlock(&spin);
  }
  return NULL;
}

void *f_rw_spinlock(void *p) {
  for (int k = 0; k < COUNT; k++) {
    RWSPINLOCK_WRITE_LOCK(&rwspin);
    cnt++;
    RWSPINLOCK_WRITE_UNLOCK(&rwspin);
  }
  return NULL;
}

void measure(const char *nm, void *(*thread_func)(void *)) {
  pthread_t t1, t2;
  struct timespec ts, te;
  double duration;

  clock_gettime(CLOCK_MONOTONIC, &ts);
  cnt = 0;
  pthread_create(&t1, NULL, thread_func, NULL);
  pthread_create(&t2, NULL, thread_func, NULL);
  pthread_join(t1, NULL);
  pthread_join(t2, NULL);
  assert(cnt == 2*COUNT);
  clock_gettime(CLOCK_MONOTONIC, &te);
  duration = te.tv_sec - ts.tv_sec + (te.tv_nsec - ts.tv_nsec) / 1e9;
  printf("%20s %.2f sec\n", nm, duration);
}

int main(void) {
  pthread_spin_init(&spin, PTHREAD_PROCESS_PRIVATE);
  measure("pthread mutex", f_pthread_mutex);
  measure("pthread spinlock", f_pthread_spinlock);
  measure("rwspinlock", f_rw_spinlock);
  return 0;
}
