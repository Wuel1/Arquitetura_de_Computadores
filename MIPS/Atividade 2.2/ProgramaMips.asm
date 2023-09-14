.data
arr: .word 1, 2, 3, 4, 5
n: .word 5
res: .word 5
x: .word 5

.text
.globl main

main:
    la $t0, arr
    lw $t1, n
    jal sum

    lw $a0, x
    jal recurPar

    j exit

sum:
    lw $t2, n
    li $t3, 0
    li $t4, 0

sum_loop:
    beq $t3, $t2, sum_exit
    lw $t5, 0($t0)
    add $t4, $t4, $t5
    addi $t0, $t0, 4
    addi $t3, $t3, 1
    j sum_loop

sum_exit:
    sw $t4, res
    jr $ra

recurPar:
    andi $t6, $a0, 1
    beqz $t6, recurPar_break
    addi $a0, $a0, -1
    j recurPar

recurPar_break:
    jr $ra

exit:

#O resultado do chamamento da função sum está guardado no registrador t4
#O resultado do chamamento da função RecurPar está guardado no registrador t6
