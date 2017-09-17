struct node{
    int data;
    struct node* next;
};

struct list{
    struct node* head;
    struct node* tail;
};
void append(struct list* list, struct node* p_node);
void printList(struct list* node);
