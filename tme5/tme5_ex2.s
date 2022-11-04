.data:
a: .space 4
.align 2
b: .space 4
.align 2

.text:
lui $8, 0x1001
lw $9, 0($8) # p=$9
lw $10, 4($8)

ori $2, $0, 5
syscall
or $9, $0, $2

ori $2, $0, 5
syscall
or $10, $0, $2

loop:
beq $9, $10, fin

slt $11, $10, $9 # $11=1 si $8=a<b
beq $11, $0, else

subu $9, $9, $10

else:

subu $10, $10, $9
j loop


fin:
ori $4, $9, 0
ori $2, $0, 1
syscall

ori $4, $10, 0
ori $2, $0, 1
syscall

ori $2, $0, 10
syscall