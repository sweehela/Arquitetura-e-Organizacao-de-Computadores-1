.data
y: .space 4

.text
.globl main

main:
	# i = 1
    	ori $t0, $zero, 1
	# soma = 0
    	ori $t1, $zero, 0
	# limite = 333
    	ori $t2, $zero, 333
loop:
	# soma = soma + i
    	add $t1, $t1, $t0
	# i++
    	addi $t0, $t0, 1
	# verifica se i <= 333
    	slt $t3, $t2, $t0
    	beq $t3, $zero, loop
	# endereço da .data
    	lui $t7, 0x1001

	sw $t1, 0($t7)