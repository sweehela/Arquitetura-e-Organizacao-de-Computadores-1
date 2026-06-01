.data
string: .asciiz "meu professor e muito bom"
.text
.globl main

main:
    la $t0, string
    li $t1, 1 # primeira letra deve ser maiúscula
loop:
    lb $t2, 0($t0)
    beqz $t2, fim
    li $t3, 32
    beq $t2, $t3, espaco
    beqz $t1, prox
    addi $t2, $t2, -32
    sb $t2, 0($t0)
    li $t1, 0
    j prox
espaco:
    li $t1, 1
prox:
    addi $t0, $t0, 1
    j loop
fim:
    li $v0, 10
    syscall