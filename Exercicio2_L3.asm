.data
a: .word 3        # valor de a
y: .space 4       # espaço para y

.text
.globl main

main:
    # endereço base da .data
    lui $t0, 0x1001
    ori $t0, $t0, 0x0000

    # carregar a
    lw $t1, 0($t0)        # $t1 = a

    # t2 = 9
    addi $t2, $zero, 9

    # t2 = 9a
    mult $t2, $t1
    mflo $t2

    # t2 = 9a - 5
    addi $t2, $t2, -5

    # t2 = (9a - 5)a
    mult $t2, $t1
    mflo $t2

    # t2 = (9a - 5)a + 7
    addi $t2, $t2, 7

    # t2 = ((9a - 5)a + 7)a
    mult $t2, $t1
    mflo $t2

    # t2 = ((...)a) + 15
    addi $t2, $t2, 15

    # armazenar em y
    sw $t2, 4($t0)

    addi $v0, $zero, 10
    syscall