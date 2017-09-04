#if 0
#include "linked_list.h"
#include <malloc.h>

void atomic_list_append(struct node ** head, int value){
    
}

void insert(struct node** headRef, int newData){
    struct node* newNode = (struct node*)malloc(sizeof(struct node));
    
    if(newNode){
        newNode->data = newData;
        newNode->next = *headRef;
        *headRef = newNode;
    }
}
#endif
