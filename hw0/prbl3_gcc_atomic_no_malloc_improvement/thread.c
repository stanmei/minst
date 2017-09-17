#include "thread.h"
#include "linked_list.h"

pthread_t tid[2];
int total = 0;
struct list list;

void* thread_function(void *arg){
    pthread_t id = pthread_self();
    
    if( pthread_equal(id, tid[0]) ){

        for(int i = 0; i < 9000000; i++){        
            struct node* new_node = (struct node* )malloc(sizeof(struct node));
            total++;
            new_node->data = total;
            new_node->next = NULL;
            append(&list, new_node);
            printf("1st thread, i=%d, total=%d\n", i, total);
            //printList(&list);
        }
    }else{

        for(int i = 0; i < 9000000; i++){
            struct node* new_node = (struct node* )malloc(sizeof(struct node));
            total++;            
            new_node->data = total;
            new_node->next = NULL;
            append(&list, new_node);
            printf("2nd thread, i=%d, total=%d\n", i, total);
            //printList(&list);
        }
    }

    return NULL;
}

int create_thread(void){
    
    for(int i = 0; i < 10; i++){ 
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
