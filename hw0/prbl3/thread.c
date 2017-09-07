#include "thread.h"
#include "lock.h"
#include "linked_list.h"

pthread_t tid[2];
int total = 0;
struct node *head = NULL;

void* thread_function(void *arg){
    pthread_t id = pthread_self();
    
    if( pthread_equal(id, tid[0]) ){

        srand(time(NULL));
        for(int i = 0; i < 1000; i++){        
            Acquire();
            total++;
            append(&head, total);
            printf("1st thread, i=%d, total=%d\n", i, total);
            printList(head);
            Relinquish();

            int sleep_time = rand()%5;
            sleep(sleep_time);
        }
    }else{

        srand(time(NULL));
        for(int i = 0; i < 1000; i++){
            Acquire();
            total++;
            append(&head, total);
            printf("2nd thread, i=%d, total=%d\n", i, total);
            printList(head);
            Relinquish();
            int sleep_time = rand()%5;
            sleep(sleep_time);
        }
    }

    return NULL;
}

int create_thread(void){
    
    for(int i = 0; i < 2; i++){ 
        pthread_create(&tid[i], NULL, &thread_function, NULL);
    }

    printf("created two threads, id: %ld, %ld\n", tid[0], tid[1]);

    return 0;
}

void run_thread(void){
    for(int i = 0; i < 2; i++){
        pthread_join(tid[i], NULL);
    }
}
