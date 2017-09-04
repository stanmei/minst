#include <stdio.h>
#include <string.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>

void* thread_function(void *arg);
int create_and_run_thread(void);
void run_thread(void);

