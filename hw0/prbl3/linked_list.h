struct node{
    int data;
    struct node* next;
};

void append(struct node** head_ref, int new_data);
void printList(struct node* node);
