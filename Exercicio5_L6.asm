.data
tamanho: .word 7
vetor1: .word -30,-23,56,-43,72,-18,71
vetor2: .word 45,23,21,-23,-82,0,69
soma:   .word 0,0,0,0,0,0,0
.text
.globl main

main:
    la $t0, vetor1
    la $t1, vetor2
    la $t2, soma
    lw $t3, tamanho
loop:
    beqz $t3, fim
    lw $t4, 0($t0)
    lw $t5, 0($t1)
    add $t6, $t4, $t5
    sw $t6, 0($t2)
    addi $t0, $t0, 4
    addi $t1, $t1, 4
    addi $t2, $t2, 4
    addi $t3, $t3, -1
    j loop
fim:
    li $v0, 10
    syscall