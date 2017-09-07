/*
 * refer to: http://www.cs.usfca.edu/~peter/cs315/code/parallel/spinlock.c
 * 
 */

#include "lock.h"

long lock = 0;  //global var

void Acquire(void){
    while(lock == LOCKED);
    lock = LOCKED;
}

void Relinquish(void){
    lock = UNLOCKED;    
}
