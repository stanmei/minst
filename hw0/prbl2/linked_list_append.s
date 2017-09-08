	.file	1 "linked_list_append.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	Append
	.set	nomips16
	.set	nomicromips
	.ent	Append
	.type	Append, @function
Append:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	lw	$2,24($fp)
	lw	$2,0($2)
	bne	$2,$0,$L2
	nop

	lw	$2,28($fp)
	lw	$3,0($2)
	lw	$2,24($fp)
	sw	$3,0($2)
	b	$L3
	nop

$L2:
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,8($fp)
	b	$L4
	nop

$L5:
	lw	$2,8($fp)
	lw	$2,4($2)
	sw	$2,8($fp)
$L4:
	lw	$2,8($fp)
	lw	$2,4($2)
	bne	$2,$0,$L5
	nop

	lw	$2,28($fp)
	lw	$3,0($2)
	lw	$2,8($fp)
	sw	$3,4($2)
$L3:
	lw	$2,28($fp)
	sw	$0,0($2)
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	Append
	.size	Append, .-Append
	.ident	"GCC: (Debian 6.3.0-18) 6.3.0 20170516"
