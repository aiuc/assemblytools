.data:
p: .space 4
.align 2
q: .space 4
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

xor $15, $15, $15 # s=$15=0
addiu $10, $10, -1

loop:


slt $11, $10, $9 #$11=1 si q<p
bne $11, $0, fin

while:
addu $15, $15, $9 #s=s+p
subu $14, $9, $10 # $14=p-q
addiu $9, $9, 1 #$8 = p+1
bne $14, $0, while


fin:
ori $4, $15, 0
ori $2, $0, 1
syscall

ori $2, $0, 10
syscall