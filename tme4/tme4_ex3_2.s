.data

ch: .asciiz "coucou" 


.text

lui $7,0x1001 #10010000



lbu $8, 0($7)
lbu $9, 1($7)

sb $8, 1($7)
sb $9, 0($7)

or $4, $0, $7
ori $2, $0, 4
syscall
