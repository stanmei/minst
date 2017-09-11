/*
 * refer to: http://www.cs.usfca.edu/~peter/cs315/code/parallel/spinlock.c
 * 
 */

#include "lock.h"

volatile int lock = 0;  //global var

void Acquire(void){
    while(__sync_lock_test_and_set( &lock, 1 ));
}

void Relinquish(void){
    __sync_lock_release( &lock );
}

