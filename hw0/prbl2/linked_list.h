struct node{
    int data;
    struct node* next;
};

void Append(struct node** aRef, struct node** bRef);
void Push(struct node** headRef, int newData);
