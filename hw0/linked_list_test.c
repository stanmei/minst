#include <stdio.h>
#include "linked_list.h"

int main(){
    struct node* aList = NULL;
    struct node* bList = NULL;

    int i = 1;
    for(; i <=3; i++){
        Push(&aList, i);
        Push(&bList, i*3);
    }
    
    Append(&aList, &bList);
}
