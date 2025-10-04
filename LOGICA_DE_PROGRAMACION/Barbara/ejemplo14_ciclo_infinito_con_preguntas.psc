Algoritmo ejemplo14_ciclo_infinito_con_preguntas
	// declaración de varibles
	Definir continuar Como Cadena
	// inicialización de variable
	continuar <- 'S'
	Mientras continuar='S' O continuar='s' Hacer
		Escribir 'Se seleccionó continuar'
		Escribir 'Acciones contenidas en el ciclo'
		Escribir ''
		Escribir '¿Usted desea continuar S/N?:'
		Leer continuar
	FinMientras
	Escribir 'Usted seleccionó No continuar'
FinAlgoritmo
