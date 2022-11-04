.data

ch: .asciiz "coucou"


.text

lui $7,0x1001 #10010000


or $4, $0, $7
ori $2, $0, 4
syscall
