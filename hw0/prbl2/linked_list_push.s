	.file	1 "linked_list_push.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	Push
	.set	nomips16
	.set	nomicromips
	.ent	Push
	.type	Push, @function
Push:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	li	$4,8			# 0x8
	lw	$2,%call16(malloc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,malloc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L3
	nop

	lw	$2,24($fp)
	lw	$3,44($fp)
	sw	$3,0($2)
	lw	$2,40($fp)
	lw	$3,0($2)
	lw	$2,24($fp)
	sw	$3,4($2)
	lw	$2,40($fp)
	lw	$3,24($fp)
	sw	$3,0($2)
$L3:
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	Push
	.size	Push, .-Push
	.ident	"GCC: (Debian 6.3.0-18) 6.3.0 20170516"
