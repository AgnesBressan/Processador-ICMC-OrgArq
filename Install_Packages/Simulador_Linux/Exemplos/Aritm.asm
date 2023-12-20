; Teste das instrucoes que vao sendo implementadas!


; 4 Perguntas ao implemantar as instrucoes:
;	1) O Que preciso fazer para esta instrucao?
;	2) Onde Comeca: Pegargcc o que tem que fazer e ir voltando ate' chegar em um registrador (ie. PC)
;	3) Qual e' a Sequencia de Operacoes: Descrever todos os comandos que tem que dar nos cilos de Dec e Exec
;	4) Ja' terminou??? Cumpriu o que tinha que fazer??? O PC esta' pronto para a proxima instrucao (cuidado com Load, Loadn, Store, Jmp, Call)

	; Teste do Pot
	loadn r1, #2
	loadn r2, #2
	pot r3, r1, r2
	loadn r4, #'A'
	add r3, r4, r3
	loadn r0, #1
	outchar r3, r0		; Printa E na linha 1

	; Teste do Porc
	loadn r1, #100
	loadn r2, #20
	porc r3, r1, r2
	loadn r4, #'D'
	add r3, r4, r3
	loadn r0, #3
	outchar r3, r0		; Printa X na linha 3


Fim:	
	halt


ImprimeNumero:	
	push r0
	push r1
	push r2
	push r3
	
	; r3 contem o numero de que será impresso e r0 a posicao onde vai imprimir
	
	loadn r0, #10
	loadn r2, #48	
	
	; Imprimindo a dezena
	div r1, r3, r0	; divide por 10 para imprimir só a dezena
	add r3, r1, r2	; soma 48 ao pra dar o código ASCII do numero
	outchar r3, r0
	
	; Imprimindo a unidade
	inc r0			; incrementa a posicao na tela	
	mul r1, r1, r0	; multiplica o dígito da dezena por 10
	sub r1, r3, r1	; subtrair a dezena do numero e pegar só a unidade
	add r1, r1, r2	; soma 48 ao numero pra dar o código ASCII do número
	outchar r1, r0
	
	pop r3
	pop r2
	pop r1
	pop r0

	rts
	
Dado : var #1  ; O comando VAR aloca bytes de memoria e associa o primeiro byte ao LABEL
static Dado + #0, #'B'

	
	
	
	
	
	
	
	
	
