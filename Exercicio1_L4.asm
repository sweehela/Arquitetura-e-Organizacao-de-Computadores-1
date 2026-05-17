.data
a: .half 30
b: .half 5
y: .space 4

.text
.globl main

main:
	#endereço base da .data
    	lui $t7, 0x1001
	# a
    	lh $t0, 0($t7)
	# b
    	lh $t1, 2($t7)
	# a = b
    	beq $t0, $t1, multiplicacao
divisao:
	# a / b
    	div $t0, $t1
    	mflo $t2
    	j salvar
multiplicacao:
	# a * b
    	mult $t0, $t1
    	mflo $t2
salvar:
    sw $t2, 4($t7)