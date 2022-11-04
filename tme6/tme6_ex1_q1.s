# $8 = adresse de la chaine[i]
# $9 = i 
# $10 = 10 
# $11 = resultat de calculs (quotient,reste,denominateur)

.data
chaine: .space 11

.text
#lire l'entier au clavier
ori $2, $0, 5
syscall

addiu $29, $29, -16	# pointeur de pile

lui $16, 0x1001
sb $0, 10($16)

# i = 9
addiu $9,$0,9
sw $9, 0($29)		# stocke i

#stocke l'entier
sw $2, 4($29)		# stocke nb


# denominateur = 10
addiu $10,$0,10

# Si i < 0, sors de la boucle
Loop:
	bltz $9, Exit	# condition de sortie
	lw $11, 4($29)	#11 = nb	
	div $11, $10		
	
	mflo $11
	sw $11 , 4($29)
	
	
	mfhi $12		# reste
	addiu $14,$12,0x0030	# addition pour stocker le caractere chaine[i]
	addu $13, $9, $16 #&tab[i]
	sb $14, 0($13)
				# stocke dans adresse de chaine[i]
	
	addiu $9, $9, -1		# i = i-1
	sw $9 , 0($29)
	
	j Loop
Exit:
	
# affichage

or $4, $0, $16       
ori $2, $0, 4
syscall

addiu $29, $29, 4
ori $2, $0, 10
syscall
