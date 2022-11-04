.data
v1: .word -1 #10010000
v2: .word 0xFF #10010000 + 4

.text
lui $7,0x1001 #10010000
lw $8, 0($7)
addiu $8,$8,1
lw $9, 4($7)
addiu $9,$9,1

ori $4, $8, 0
ori $2, $0, 1
syscall


ori $4, $9, 0
ori $2, $0, 1
syscall

ori $2, $0, 10
syscall
