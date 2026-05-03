# Escreva 0xAAAAAAAA em $t1. Faça um shift de um bit para a direita desse valor e coloque o resultado em $t2, deixando $t1 inalterado. Em $t3, $t4 e $t5 coloque 
#os resultados das operações or, and e xor entre $t1 e $t2, respectivamente. Em comentários no final do código, explique os resultados obtidos, mostrando os
#valores binários.
.text
.globl main

main:
	# t1 = 0xAAAAAAAA
	lui $t1, 0xAAAA
	ori $t1, $t1, 0xAAAA
	
	srl $t2, $t1, 1 # shift 1 bit
	
	# 10101010 (t1) or 01010101 (t2) = 11111111
	# 0xFFFFFFFF
	or $t3, $t1, $t2
	
	# 10101010 (t1) and 01010101 (t2) = 00000000
	# 0x00000000
	and $t4, $t1, $t2
	
	# 10101010 (t1) xor 01010101 (t2) = 11111111
	# 0xFFFFFFFF
	xor $t5, $t1, $t2
	
addi $v0, $zero, 10
syscall