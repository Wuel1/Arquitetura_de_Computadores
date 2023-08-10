#Operações lógicas | Host-id de máscara
add $t1, $zero, 217
add $t2, $zero, 192

xor $t3,$t2,$t1 

#Armazenando Variaveis
.data
a: .word 10

.text
lw $t0, a #Carregue um valor na memória dentro desse registrador
addi $t0, $t0, 1
sw $t0, a #Coloque o valor do registrador na váriavel

lw $t4, a 
sll $t4, $t4, 1