.text
.globl main

main:
	# temperatura = 35
    	ori $t0, $zero, 35
    	# flag = 0
    	ori $t1, $zero, 0
    	# verifica temp >= 20
   	ori $t2, $zero, 20
    	slt $t3, $t0, $t2
    	bne $t3, $zero, segunda_faixa
    	# verifica temp <= 40
    	ori $t2, $zero, 40
    	slt $t3, $t2, $t0
    	bne $t3, $zero, segunda_faixa
    	# primeira faixa
    	ori $t1, $zero, 1
    	j fim
segunda_faixa:
	# verifica temp >= 60
    	ori $t2, $zero, 60
    	slt $t3, $t0, $t2
    	bne $t3, $zero, fim
    	# verifica temp <= 80
    	ori $t2, $zero, 80
    	slt $t3, $t2, $t0
    	bne $t3, $zero, fim
    	# segunda faixa
    	ori $t1, $zero, 1
fim: