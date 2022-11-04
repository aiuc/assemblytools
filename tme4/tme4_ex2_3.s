.data
v2: .byte 0xFF


.text
lui $7,0x1001 #10010000
lb $8, 0($7)
lbu $9, 0($7)


ori $4, $8, 0
ori $2, $0, 1
syscall


ori $4, $9, 0
ori $2, $0, 1
syscall

ori $2, $0, 10
syscall
