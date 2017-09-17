/*
 * This code refer to: http://www.geeksforgeeks.org/linked-list-set-2-inserting-a-node/
 *
 */
#include "linked_list.h"
#include <stdio.h>

void append(struct list* list, struct node* new_node){
    
    struct node* old_node = __sync_lock_test_and_set( &(list->tail), new_node );
    
    if(old_node){
        (void)__sync_lock_test_and_set(&(old_node->next), new_node);  
    }else{
        (void)__sync_lock_test_and_set(&(list->head), new_node);
    }
}

/* X86-32 assemble code *
append:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	li	$4,8			# 0x8
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	lw	$3,44($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	sw	$0,4($2)
	lw	$2,40($fp)
	addiu	$3,$2,4
	lw	$4,24($fp)
	.set	noat
1:
	ll	$2,0($3)
	move	$1,$4
	sc	$1,0($3)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	sw	$2,28($fp)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	append
	.size	append, .-append
	.rdata
	.align	2
$LC0:
	.ascii	"%d \000"
	.text
	.align	2
	.globl	printList
	.set	nomips16
	.set	nomicromips
	.ent	printList
	.type	printList, @function

*/

void printList(struct list* list){
    struct list* tmp = list;

    while(tmp->head != tmp->tail){
        printf( "%d ", tmp->head->data );
        tmp->head = tmp->head->next;
    }    

    printf("\n");
}
