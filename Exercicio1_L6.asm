.data
string: .asciiz "Gosto muito do meu professor de AOC-I."
.text
.globl main

main:
    la $t0, string # leitor
    la $t1, string # escritor
loop:
    lb $t2, 0($t0)
    beqz $t2, fim
    li $t3, 32 # espaço
    beq $t2, $t3, pula
    sb $t2, 0($t1)
    addi $t1, $t1, 1
pula:
    addi $t0, $t0, 1
    j loop
fim:
    sb $zero, 0($t1)
    li $v0, 10
    syscall