/*
 * This code refer to: http://www.geeksforgeeks.org/linked-list-set-2-inserting-a-node/
 *
 */
#include "linked_list.h"
#include <malloc.h>

void append(struct node** head_ref, int new_data){
    
    struct node* new_node = (struct node*) malloc(sizeof(struct node));
    new_node->data = new_data;
    new_node->next = NULL;

    if( *head_ref == NULL ){
        *head_ref = new_node;
        return;
    }
    
    struct node* last = *head_ref;
    while(last->next != NULL)
        last = last->next;

    last->next = new_node;
    
    return;
}

void printList(struct node* node){
    while(node != NULL){
        printf( "%d ", node->data );
        node = node->next;
    }    
    printf("\n");
}
