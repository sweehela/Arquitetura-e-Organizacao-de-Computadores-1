.data
n: .word 5
fat: .space 4
.text
.globl main

main: 
	# $t0 = endereço base
	lui $t0, 0x1001
	# $t1 = n
	lw $t1, 0($t0)
	# $t2 = result
	addi $t2, $zero, 1
	# t$3 = 1
	addi $t3, $zero, 1
for:
	slt $t4, $t1, $t3
	bne $t4, $zero, fim
	
	mult $t2, $t3
	mflo $t2
	
	# i++
	addi $t3, $t3, 1
	j for
fim:
	sw $t2, 4($t0)
	addi $v0, $zero, 10
	syscall