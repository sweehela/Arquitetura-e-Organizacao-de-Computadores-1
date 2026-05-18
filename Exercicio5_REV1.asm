.data
vetor: .word -3, 7, 10, 15, -1, 20, 8, 12
.text
.globl main

main:
	addi $s0, $zero, 5
	addi $s1, $zero, 12
	
	lui $s3, 0x1001
	
	addi $s4, $zero, 8
	
	# $t0 = i
	addi $t0, $zero, 0
	# $s2 = contador
	addi $s2, $zero, 0
for:
	slt $t1, $t0, $s4
	beq $t1, $zero, fim
	
	sll $t2, $t0, 2
	add $t3, $s3, $t2
	
	lw $t4, 0($t3)
	
	slt $t5, $t4, $s0
	bne $t5, $zero, proximo
	
	slt $t5, $s1, $t4
	bne $t5, $zero, proximo
	
	# contador++
	addi $s2, $s2, 1
proximo:
	# i++
	addi $t0, $t0, 1
	j for
fim:
	addi $v0, $zero, 10
	syscall