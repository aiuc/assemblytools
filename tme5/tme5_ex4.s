.data:
val: .word 4
tab: .word 3,123,9,5,100,-1

.text:
lui $8, 0x1001 # $8=(tab+0)
lw $9, 0($8) 
addiu $8, $8, 4
xor $15, $15, $15 # $9=max=0


loop:
lw $10, 0($8)
bltz $10, fin
slt $11, $10, $9
beq $11, $0, else
addiu $15, $15,1

else:
addiu $8, $8, 4
j loop


fin:
ori $4, $15, 0
ori $2, $0, 1
syscall

ori $2, $0, 10
syscall
