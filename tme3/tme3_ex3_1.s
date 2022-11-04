ori $2, $0, 5
syscall
or $9, $0, $2

ori $2, $0, 5
syscall
or $10, $0, $2

div $9, $10

mflo $11

addu $4, $0, $11
ori $2, $0, 1
syscall

mfhi $12

addu $4, $0, $12
ori $2, $0, 1
syscall

mult $10, $11
mflo $11


addu $13, $11, $12
addu $4, $0, $13
ori $2, $0, 1
syscall

ori $2, $0, 10
syscall 