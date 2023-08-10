addi $t1, $zero, 0

while:bne $t1, 10, adiciona
adiciona: addi $t1, $t1, 1
beq $t1,10, parada
j while

parada: add $t2, $t1, 0

srl $t2, $t1, 1 #Shift | Serve para fazer multiplicação e Divisão (Truncada)
or $t3, $t2, $t1