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
	outchar r3, r0		; Printa K na linha 3

	; Teste do Fat
	loadn r1, #3
	loadn r4, #2
	mul r2, r1, r4
	loadn r3, #'A'
	add r2, r2, r3
	loadn r0, #5
	outchar r2, r0		; Printa G na linha 5


Fim:	
	halt

	
Dado : var #1  ; O comando VAR aloca bytes de memoria e associa o primeiro byte ao LABEL
static Dado + #0, #'B'

	
	
	
	
	
	
	
	
	
