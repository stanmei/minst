	.file	1 "linked_list_append.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.globl	Append
	.set	nomips16
	.set	nomicromips
	.ent	Append
	.type	Append, @function
Append:
	.frame	$fp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$fp,40($sp)
	move	$fp,$sp
	sd	$4,16($fp)
	sd	$5,24($fp)
	ld	$2,16($fp)
	ld	$2,0($2)
	bne	$2,$0,.L2
	nop

	ld	$2,24($fp)
	ld	$3,0($2)
	ld	$2,16($fp)
	sd	$3,0($2)
	b	.L3
	nop

.L2:
	ld	$2,16($fp)
	ld	$2,0($2)
	sd	$2,0($fp)
	b	.L4
	nop

.L5:
	ld	$2,0($fp)
	ld	$2,8($2)
	sd	$2,0($fp)
.L4:
	ld	$2,0($fp)
	ld	$2,8($2)
	bne	$2,$0,.L5
	nop

	ld	$2,24($fp)
	ld	$3,0($2)
	ld	$2,0($fp)
	sd	$3,8($2)
.L3:
	ld	$2,24($fp)
	sd	$0,0($2)
	nop
	move	$sp,$fp
	ld	$fp,40($sp)
	daddiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	Append
	.size	Append, .-Append
	.ident	"GCC: (Debian 6.3.0-18) 6.3.0 20170516"
