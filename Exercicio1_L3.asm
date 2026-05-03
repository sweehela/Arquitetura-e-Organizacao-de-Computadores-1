.data
a: .word 3        # a = 3
b: .word 5        # b = 5
y: .space 4       # espaço para y

.text
.globl main

main:
    # carregar endereço base da .data
    lui $t0, 0x1001
    ori $t0, $t0, 0x0000   # $t0 = &a

    # carregar valores de a e b
    lw $t1, 0($t0)         # $t1 = a
    lw $t2, 4($t0)         # $t2 = b

    # 32ab
    mult $t1, $t2          # a * b
    mflo $t3               # $t3 = ab

    sll $t3, $t3, 5        # $t3 = 32ab (shift left 5 = *32)

    # -3a
    sll $t4, $t1, 1        # $t4 = 2a
    add $t4, $t4, $t1      # $t4 = 3a
    sub $t4, $zero, $t4    # $t4 = -3a

    # 7b
    sll $t5, $t2, 3        # $t5 = 8b
    sub $t5, $t5, $t2      # $t5 = 7b

    # somar tudo
    add $t6, $t3, $t4      # 32ab - 3a
    add $t6, $t6, $t5      # 32ab - 3a + 7b

    addi $t6, $t6, -13     # 32ab - 3a + 7b - 13

    #armazenar resultado em y
    sw $t6, 8($t0)

    addi $v0, $zero, 10
    syscall