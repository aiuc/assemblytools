# 31 32 33 34 35 36 00

.data

tab: .byte 0x31 0x32 0x33 0x34 0x35 0x36 0x00

.text


lui $7,0x1001 #10010000
lb $8, 2($7)

or $4, $0, $8
ori $2, $0, 1
syscall

# ques 5 : -30 de hex


