.data
vetor: .word 1,2,3,4,5,6,7,8,9,10
.text
.globl main

main:
    li $t0, 1 # assume ordenado
    la $t1, vetor
    li $t2, 9 # 9 comparações
loop:
    beqz $t2, fim
    lw $t3, 0($t1)
    lw $t4, 4($t1)
    bgt $t3, $t4, naoOrdenado
    addi $t1, $t1, 4
    addi $t2, $t2, -1
    j loop
naoOrdenado:
    li $t0, 0
fim:
    li $v0, 10
    syscall