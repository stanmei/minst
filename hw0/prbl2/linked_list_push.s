	.file	1 "linked_list_push.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.globl	Push
	.set	nomips16
	.set	nomicromips
	.ent	Push
	.type	Push, @function
Push:
	.frame	$fp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$fp,48($sp)
	sd	$28,40($sp)
	move	$fp,$sp
	lui	$28,%hi(%neg(%gp_rel(Push)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(Push)))
	sd	$4,16($fp)
	move	$2,$5
	sll	$2,$2,0
	sw	$2,24($fp)
	li	$4,16			# 0x10
	ld	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	sd	$2,0($fp)
	ld	$2,0($fp)
	beq	$2,$0,.L3
	nop

	ld	$2,0($fp)
	lw	$3,24($fp)
	sw	$3,0($2)
	ld	$2,16($fp)
	ld	$3,0($2)
	ld	$2,0($fp)
	sd	$3,8($2)
	ld	$2,16($fp)
	ld	$3,0($fp)
	sd	$3,0($2)
.L3:
	nop
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	Push
	.size	Push, .-Push
	.ident	"GCC: (Debian 6.3.0-18) 6.3.0 20170516"
