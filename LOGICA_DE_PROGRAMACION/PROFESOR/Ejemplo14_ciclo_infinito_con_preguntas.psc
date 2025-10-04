Proceso Ejemplo14_ciclo_infinito_con_preguntas
	// Declaracion de variables
	Definir continuar Como Caracter
	// Inicializacion de variable
	continuar <- 'S'
	// Definir el ciclo 
	Mientras continuar='S' O continuar='s' Hacer
		Escribir 'Se seleccionó Si Continuar'
		Escribir 'Acciones contenidas en el ciclo'
		Escribir ''
		Escribir '¿Usted desea continuar S/N:?'
		Leer continuar
	FinMientras
	Escribir 'Usted seleccionó No Continuar'
FinProceso
