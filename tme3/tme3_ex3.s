ori $9, $0, 84
ori $10, $0, 10

div $9, $10

mflo $11

addu $4, $0, $11
ori $2, $0, 1
syscall

mfhi $12

addu $4, $0, $12
ori $2, $0, 1
syscall

ori $2, $0, 10
syscall 