.data
a: .word -3
b: .word 7
c: .word 5
d: .word -2
e: .word 8
x: .word 4
y: .space 4

.text
.globl main

main:
    # endereço base da .data
    lui $t0, 0x1001
    ori $t0, $t0, 0x0000

    # carregar valores
    lw $t1, 0($t0)     # a
    lw $t2, 4($t0)     # b
    lw $t3, 8($t0)     # c
    lw $t4, 12($t0)    # d
    lw $t5, 16($t0)    # e
    lw $t6, 20($t0)    # x

    # t7 = -a
    sub $t7, $zero, $t1

    # t7 = (-a)x
    mult $t7, $t6
    mflo $t7

    # t7 = (-a)x + b
    add $t7, $t7, $t2

    # t7 = (...)x
    mult $t7, $t6
    mflo $t7

    # t7 = (...) - c
    sub $t7, $t7, $t3

    # t7 = (...)x
    mult $t7, $t6
    mflo $t7

    # t7 = (...) + d
    add $t7, $t7, $t4

    # t7 = (...)x
    mult $t7, $t6
    mflo $t7

    # t7 = (...) - e
    sub $t7, $t7, $t5

    # armazenar y
    sw $t7, 24($t0)

    addi $v0, $zero, 10
    syscall