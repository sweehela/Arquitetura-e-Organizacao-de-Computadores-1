# Escreva a sequência 0x12345678 em $t1. A seguir, escreva um código que inverta a sequência, escrevendo 0x87654321 em $t2. Obviamente o código deve inverter 
#os bits de $t1 e não simplesmente escrever 0x87654321 diretamente em $t2.

.text
.globl main

main:
	# t1 = 0x12345678
	lui $t1, 0x1234
	ori $t1, $t1, 0x5678
	
	addi $t2, $zero, 0
	addi $t3, $zero, 8 # contador de 32 bits
	
loop:
	andi $t4, $t1, 15 # ultimos 4 bits
	sll $t2, $t2, 4
	or $t2, $t2, $t4 # adiciona os ultimos 4 bits
	srl $t1, $t1, 4 # remove os ultimos 4 bits de t1
	
	addi $t3, $t3, -1
	bne $t3, $zero, loop
	
addi $v0, $zero, 10
syscall