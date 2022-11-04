.data

.text

ori $8, $0, 0xffff
addi $8, $8, 2



addu $4, $0, $8
ori $2, $0, 1
syscall

ori $2, $0, 10
syscall 