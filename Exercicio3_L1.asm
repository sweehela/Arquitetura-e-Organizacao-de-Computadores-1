# Faça um programa que calcule a seguinte equação:
# y = 3x^2 - 5x + 13
# Armazene x no registrador $t5 com a instrução addi $t5, $zero, x, substituindo x pelo valor desejado, e sempre que 
# precisar o valor de x, utilize o valor armazenado no registrador $t5. Armazene o resultado y no registrador $t6.
.text
.globl main

main:
    # valores:
    	addi $t5, $zero, 2     # x = 2

    # x^2
    	mult $t5, $t5          # hi/lo = x * x
    	mflo $t0               # t0 = x^2

    # 3x^2
    	add $t1, $t0, $t0      # t1 = 2x^2
    	add $t1, $t1, $t0      # t1 = 3x^2

    # 5x
    	add $t2, $t5, $t5      # t2 = 2x
    	add $t2, $t2, $t5      # t2 = 3x
    	add $t2, $t2, $t5      # t2 = 4x
    	add $t2, $t2, $t5      # t2 = 5x

    # 3x^2 - 5x
    	sub $t3, $t1, $t2      # t3 = 3x^2 - 5x

    # +13
    	addi $t6, $t3, 13      # t6 = y

addi $v0, $zero, 10
syscall