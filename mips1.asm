########## HELLO WORLD
.text
.globl main
main:
	li $a0,0                        # inicia o total
        li $a1,1                        # inicia o contador
Loop:
	add $a0,$a0,$a1                # adiciona o contador no total
        addi $a1,$a1,1                # incrementa o contador
        jal scanf
        ble $a1,2,Loop                #verifica se terminou e faz o loop
        j fim
scanf:
	li $v0, 4 #syscall de print string
        la $a0, prompt #conteudo para printar
        syscall
	li $v0, 5 #syscall para ler inteiros
        syscall
        move $t0, $v0 #coloca valor no registrador temporario
        jr $ra
        
fim:
	li $v0,10                        # termina
        syscall
.data
prompt: .asciiz "Digite um n�mero inteiro: "
