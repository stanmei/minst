#include "linked_list.h"
#include <malloc.h>

void Append(struct node** aRef, struct node** bRef){
    struct node* current;

    if(*aRef == NULL){  //special case if a is empty
        *aRef = *bRef;    
    } else {    //otherwise, find the end of a, and append b
        current = *aRef;
        while(current->next != NULL){   // find the last node
            current = current->next;    
        }

        current->next = *bRef;  //hand the b list off the last node
    }
    
    *bRef = NULL;
}

void Push(struct node** headRef, int newData){
    struct node* newNode = (struct node*)malloc(sizeof(struct node));
    
    if(newNode){
        newNode->data = newData;
        newNode->next = *headRef;
        *headRef = newNode;
    }
}
