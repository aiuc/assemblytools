# 31 32 33 34 35 36 00

.data

tab: .byte 0x31 0x32 0x33 0x34 0x35 0x36 0x00

.text

# pour 3 :

lui $7,0x1001 #10010000
lb $8, 2($7)

addiu $8 , $8 , -48

or $4, $0, $8
ori $2, $0, 1
syscall


# aller a la ligne
ori $2, $0, 11
ori $4, $0, 0x0A
syscall



# pour 4 :

lb $8, 3($7)

addiu $8 , $8 , -48

or $4, $0, $8
ori $2, $0, 1
syscall

# aller a la ligne
ori $2, $0, 11
ori $4, $0, 0x0A
syscall

# pour 5 :

lb $8, 4($7)

addiu $8 , $8 , -48

or $4, $0, $8
ori $2, $0, 1
syscall