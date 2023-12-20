jmp main

; Declaracao e Inicializacao de variaveis estaticas

; ----------x--------------x-----------
main:	; Inicio do codigo
	loadn r0, #5	; Escolha o numero para o calculo do fatorial
	FAT r1, r0	; Calcula o Fatorial de um numero (colocado em r0) e retorna o valor em r1
	outchar r0, r1

	halt	; Trava a execucao
; Final do codigo