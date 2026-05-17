.data
x: .word 7
y: .space 4

.text
.globl main

main:
	# base da .data
    	lui $t7, 0x1001
	# x	
	lw $t0, 0($t7)
	# f1 = 1
    	ori $t1, $zero, 1
    	# f2 = 1
    	ori $t2, $zero, 1	
    	# verifica x = 1
    	ori $t3, $zero, 1
    	beq $t0, $t3, salvar1
    	# verifica x = 2
    	ori $t3, $zero, 2
    	beq $t0, $t3, salvar1	
    	# contador = 3
    	ori $t4, $zero, 3
loop:	
	# f3 = f1 + f2
    	add $t5, $t1, $t2
    	# atualiza valores
    	add $t1, $t2, $zero
    	add $t2, $t5, $zero
    	# contador++
    	addi $t4, $t4, 1
    	# continua enquanto contador <= x
    	slt $t6, $t0, $t4
    	beq $t6, $zero, loop

    	sw $t2, 4($t7)

    	j fim
salvar1:
	# salva 1 em y
    	sw $t1, 4($t7)
fim: