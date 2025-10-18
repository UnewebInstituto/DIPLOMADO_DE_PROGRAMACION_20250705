Algoritmo Ejemplo14_Ciclo_Infinito_con_pregunta
	// Declaración de variable
	Definir continuar Como Caracter
	// Inicialización de variable
	continuar <- 'S'
	// Definir ciclo
	Mientras continuar = 'S' o continuar = 's' Hacer
		Escribir 'Se seleccionó Si continuar...'
		Escribir 'Acciones contenidas en el ciclo'
		Escribir ''
		Escribir '¿Usted desea continuar S/N:?'
		Leer continuar
	FinMientras
	Escribir 'Usted seleccionó No continuar...'
FinAlgoritmo
