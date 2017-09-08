	.file	1 "linked_list_main.c"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
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
	lui	$28,%hi(%neg(%gp_rel(main)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(main)))
	sd	$0,8($fp)
	sd	$0,16($fp)
	li	$2,1			# 0x1
	sw	$2,0($fp)
	b	.L2
	nop

.L3:
	lw	$3,0($fp)
	daddiu	$2,$fp,8
	move	$5,$3
	move	$4,$2
	ld	$2,%call16(Push)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,Push
1:	jalr	$25
	nop

	lw	$3,0($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	move	$3,$2
	daddiu	$2,$fp,16
	move	$5,$3
	move	$4,$2
	ld	$2,%call16(Push)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,Push
1:	jalr	$25
	nop

	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L2:
	lw	$2,0($fp)
	slt	$2,$2,4
	bne	$2,$0,.L3
	nop

	daddiu	$3,$fp,16
	daddiu	$2,$fp,8
	move	$5,$3
	move	$4,$2
	ld	$2,%call16(Append)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,Append
1:	jalr	$25
	nop

	move	$2,$0
	move	$sp,$fp
	ld	$31,56($sp)
	ld	$fp,48($sp)
	ld	$28,40($sp)
	daddiu	$sp,$sp,64
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-18) 6.3.0 20170516"
