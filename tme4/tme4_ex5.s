# 4 23 12 3 8 1

.data

tab: .word 4 23 12 3 8 1
.align 2
s: .space 4
.align 2
p: .space 4
.align 2
.text

lui $16,0x1001 #10010000

lw $17, 12($16)
sw $17, 24($16) # $17=s


lw $18, 16($16)
sw $18, 28($16)

addiu $19 , $17 , 1
sw $19, 0($16)


addu $20 , $18 , $17
sw $20, 4($16)

lw $21, 20($16)
sw $21, 8($16)

ori $2, $0, 10
syscall
