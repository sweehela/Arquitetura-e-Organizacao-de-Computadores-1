# Faça um programa que escreva o valor 0xDECADA70 no registrador $t7, incluindo um dígito hexadecimal por vez (isto é, insira letra por letra, individualmente) 
#no registrador.
.text
.globl main

main:
	addi $t7, $zero, 0
	
	# D = 13
	sll $t7, $t7, 4
	ori $t7, $t7, 0xD
	
	# E = 14
	sll $t7, $t7, 4
	ori $t7, $t7, 0xE
	
	# C = 12
	sll $t7, $t7, 4
	ori $t7, $t7, 0xC
	
	# A = 10
	sll $t7, $t7, 4
	ori $t7, $t7, 0xA
	
	# D = 13
	sll $t7, $t7, 4
	ori $t7, $t7, 0xD
	
	# A = 10
	sll $t7, $t7, 4
	ori $t7, $t7, 0xA
	
	# 7
	sll $t7, $t7, 4
	ori $t7, $t7, 0x7
	
	# 0
	sll $t7, $t7, 4
	ori $t7, $t7, 0x0
addi $v0, $zero, 10
syscall