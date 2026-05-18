.text
.globl main

main:
	ori $t1, $zero, 13
	# $t2 = 0
	addi $t2, $zero, 0
while:
	beq $t1, $zero, fim
	srl $t1, $t1, 1
	# contador++
	addi $t2, $t2, 1
	j while
fim:
	addi $v0, $zero, 10
	syscall