/*
 * This code refer to: http://www.geeksforgeeks.org/linked-list-set-2-inserting-a-node/
 *
 */
#include "linked_list.h"
#include <malloc.h>

void append(struct list* list, int new_data){
    
    struct node* new_node = (struct node*) malloc(sizeof(struct node));
    new_node->data = new_data;
    new_node->next = NULL;

    if( list == NULL ){
        printf("null list");
        return;
    }
    
    if( list->head == NULL ){
        list->head = new_node;
        list->tail = list->head;
    }else{
        struct node* old_node = __sync_lock_test_and_set( &(list->tail), new_node );
        if( old_node != NULL ){  // this condition must be added, it may call NULL pointer exception at the very beginning (uneasy to reproduce)
            old_node->next = new_node;
        }
    }
}

void printList(struct list* list){
    struct list* tmp = list;

    while(tmp->head != tmp->tail){
        printf( "%d ", tmp->head->data );
        tmp->head = tmp->head->next;
    }    

    printf("\n");
}
