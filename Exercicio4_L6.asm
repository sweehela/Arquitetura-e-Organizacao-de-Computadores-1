.data
vetor: .word 1,2,3,4,5
.text
.globl main

main:
    la $t0, vetor # início
    la $t1, vetor
    addi $t1, $t1, 16 # último elemento
    li $t2, 2 # duas trocas
loop:
    beqz $t2, fim
    lw $t3, 0($t0)
    lw $t4, 0($t1)
    sw $t4, 0($t0)
    sw $t3, 0($t1)
    addi $t0, $t0, 4
    addi $t1, $t1, -4
    addi $t2, $t2, -1
    j loop
fim:
    li $v0, 10
    syscall