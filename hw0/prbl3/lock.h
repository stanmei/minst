#ifndef __LOCK__
#define __LOCK__

#define UNLOCKED 0
#define   LOCKED 1

extern long lock;  //global var

void Acquire(void);
void Relinquish(void);

#endif
