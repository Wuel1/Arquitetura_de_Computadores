.data
#Variaveis da Main
array: .word 1,2,3,4,5
n:     .word 5
x:     .word 5
#Variaveis do sum
res:   .word 0

.text

main:
la $t1, array
la $t2, n
lw $a0, 0($t1)
lw $a1, 0($t2)
jal sum



sum:
addi $a2, $zero
beq $a2, $a1,retorna

retorna:
