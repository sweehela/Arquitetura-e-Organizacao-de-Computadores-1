# Escreva um programa que calcule o valor de 4x - 2y + 3z (armazene os valores de x, y e z em $t1, $t2 e $t3, 
# respectivamente) e coloque o resultado em $t7.
.text
.globl main

main:
    # valores:
    	addi $t1, $zero, 2     # x = 2
    	addi $t2, $zero, 3     # y = 3
    	addi $t3, $zero, 4     # z = 4

    # 4x
    	add $t4, $t1, $t1      # t4 = 2x
    	add $t4, $t4, $t1      # t4 = 3x
    	add $t4, $t4, $t1      # t4 = 4x

    # 2y
    	add $t5, $t2, $t2      # t5 = 2y

    # 3z
    	add $t6, $t3, $t3      # t6 = 2z
    	add $t6, $t6, $t3      # t6 = 3z

    # 4x - 2y
    	sub $t7, $t4, $t5      # t7 = 4x - 2y

    # +3z
    	add $t7, $t7, $t6      # t7 = 4x - 2y + 3z

addi $v0, $zero, 10
syscall