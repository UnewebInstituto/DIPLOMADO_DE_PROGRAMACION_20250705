Algoritmo Ejemplo14_Ciclo_Infinito_con_Pregunta
	// Declaración de Variables
	Definir continuar Como Cadena
	// Iniciañización de variables
	continuar <- 'S'
	// Definir ciclo
	Mientras continuar='S' O continuar='s' Hacer
		Escribir 'Se seleccionó continuar'
		Escribir 'Acciones contenidas en el ciclo'
		Escribir ''
		Escribir 'Usted desea continuar S/N: ?'
		Leer continuar
	FinMientras
	Escribir 'Usted selccionó no continuar'
FinAlgoritmo
