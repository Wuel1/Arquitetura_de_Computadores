addi $t1 , $zero, 2
addi $t2, $zero, 2 #Vai para o endereço #....4 pois uma instrução precisa de 4 bytes | 32 Bits
beq $t1, $t2, fim
addi $t3, $t2, 0
j acabou
fim:addi $t3, $t1,0
acabou: addi $t4, $zero, 5