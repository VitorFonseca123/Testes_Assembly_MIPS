########## HELLO WORLD
.text
.globl main
main:
        la $a0,$texto                # imprime texto "Hello World"
        li $v0,4
        syscall
        
fim:
	li $v0,10                        # termina
        syscall
.data
$texto:
        .asciiz "Hello World"