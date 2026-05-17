.data
n: .word 4
A: .space 4
.text
.globl main

main:
	# $t0 = endereço de n
	lui $t0, 0x1001
	# $t1 = n
	lw $t1, 0($t0)
	# $t2 = A
	addi $t2, $zero, 1
	# $t3 = 1
	addi $t3, $zero, 0
for:
	slt $t4, $t1, $t3
	bne $t4, $zero, fim
	srl $t5, $t3, 1
	add $t6, $t1, $t5
	mult $t2, $t6
	mflo $t2
	addi $t3, $t3, 1
	j for
fim:
	sw $t2, 4($t0)
	addi $v0, $zero, 10
	syscall