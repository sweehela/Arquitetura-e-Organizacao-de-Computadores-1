# Faça um programa que some os números decimais 326, -211, 311 e -684 e escreva o resultado no registrador $t0.
.text
.globl main

main:
	addi $t0, $zero, 0      # inicia com 0
    	addi $t0, $t0, 326      # +326
    	addi $t0, $t0, -211     # -211
   	addi $t0, $t0, 311      # +311
   	addi $t0, $t0, -684     # -684

    	addi $v0, $zero, 10     # saída
syscall