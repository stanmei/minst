	.file	1 "linked_list_main.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$0,28($fp)
	sw	$0,32($fp)
	li	$2,1			# 0x1
	sw	$2,24($fp)
	b	$L2
	nop

$L3:
	addiu	$2,$fp,28
	lw	$5,24($fp)
	move	$4,$2
	lw	$2,%call16(Push)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,Push
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$3,$2,$3
	addiu	$2,$fp,32
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(Push)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,Push
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L2:
	lw	$2,24($fp)
	slt	$2,$2,4
	bne	$2,$0,$L3
	nop

	addiu	$3,$fp,32
	addiu	$2,$fp,28
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(Append)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,Append
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-18) 6.3.0 20170516"
