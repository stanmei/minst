#include "linked_list.h"
#include <malloc.h>

void Push(struct node** headRef, int newData){
    struct node* newNode = (struct node*)malloc(sizeof(struct node));
    
    if(newNode){
        newNode->data = newData;
        newNode->next = *headRef;
        *headRef = newNode;
    }
}
