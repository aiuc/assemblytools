.data
ch : .asciiz "switzerland"

.text
lui $8, 0x1001
lbu $9, 0($8) #load byte unsigned !
xor $15, $15, $15 # s=$15=0
or $10, $10, $10 # dernier charactere de chaine


while:

beq $9, $10, fin
addiu $15, $15, 1 #compteur
addiu $8, $8, 1
lbu $9, 0($8) # important
j while

fin:
ori $4, $15, 0
ori $2, $0, 1
syscall

ori $2, $0, 10
syscall

