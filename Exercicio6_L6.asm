.data
msg1: .asciiz "Km: "
msg2: .asciiz "Litros: "
.text
.globl main

main:
    li $s0, 0x10010000
loop:
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0
    beqz $t0, fim
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0
    div $t0, $t1
    mflo $t2
    sw $t2, 0($s0)
    addi $s0, $s0, 4
    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 11
    li $a0, 10
    syscall
    j loop
fim:
    li $v0, 10
    syscall