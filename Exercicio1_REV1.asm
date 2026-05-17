.data
vetor: .space 32
.text
.globl main

main:
	# $t0 = i
	addi $t0, $zero, 0
	# $t1 = endereço base do vetor
	lui $t1, 0x1001
for:
	# if(i <= 8) encerra o loop
	slti $t2, $t0, 8
	beq $t2, $zero, fim
	# i % 2
	andi $t3, $t0, 1
	# != 0
	bne $t3, $zero, impar
par:
	sll $t4, $t0, 2
	add $t5, $t1, $t4
	# i * 2
	sll $t6, $t0, 1
	sw $t6, 0($t5)
	j proximo
impar:
	sll $t4, $t0, 2
	add $t5, $t1, $t4
	lw $t6, 0($t5)
	addi $t7, $t5, -4
	lw $t8, 0($t7)
	add $t9, $t6, $t8
	sw $t9, 0($t5)
proximo:
	#i++
	addi $t0, $t0, 1
	j for
fim:
	addi $v0, $zero, 10
	syscall