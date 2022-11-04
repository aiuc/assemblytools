.data
chaine: .space 11

.text
lui $16, 0x1001
addiu $29, $29, -16
sb $0, 10($16)

ori $2, $0, 5
syscall

addiu $8,$0,-1
ori $10, $10, 10

ori $12, $0, 9	

loop:
	divu $2, $10			
	mflo $2
	mfhi $9		# reste
	addiu $9,$9,0x030	# addition pour stocker le caractere chaine[i]
	addu $14, $16, $12
	sb $9, 0($14)
	
	addiu $12, $12, -1 # i = i-1
	bne $12, $8, loop
	
or $4, $0, $16       
ori $2, $0, 4
syscall

addiu $29, $29, 4
ori $2, $0, 10
syscall
