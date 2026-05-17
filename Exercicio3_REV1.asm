.data
a: .word 3
b: .word 2
c: .word 6
mediana: .space 4
.text
.globl main

main:
	lui $t0, 0x1001
	lw $t1, 0($t0)
	lw $t2, 4($t0)
	lw $t3, 8($t0)
	
	slt $t4, $t2, $t1
	slt $t5, $t1, $t3
	
	and $t6, $t4, $t5
	bne $t6, $zero, med_a
	
	slt $t4, $t3, $t1
	slt $t5, $t1, $t2
	
	and $t6, $t4, $t5
	bne $t6, $zero, med_b
	
	slt $t4, $t3, $t2
	slt $t5, $t2, $t1
	
	and $t6, $t4, $t5
	bne $t6, $zero, med_b
	j med_c
med_a:
	sw $t1, 12($t0)
	j fim
med_b:
	sw, $t2, 12($t0)
med_c:
	sw $t3, 12($t0)
fim:
	addi $v0, $zero, 10
	syscall