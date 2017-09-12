struct node{
    int data;
    struct node* next;
};

struct list{
    struct node* head;
    struct node* tail;
};
void append(struct list* list, int new_data);
void printList(struct list* node);
