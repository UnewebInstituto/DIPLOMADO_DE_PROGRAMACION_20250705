Algoritmo Ejemplo14_Ciclo_Infinito_con_pregunta
	// Declaraci�n de variable
	Definir continuar Como Caracter
	// Inicializaci�n de variable
	continuar <- 'S'
	// Definir ciclo
	Mientras continuar = 'S' o continuar = 's' Hacer
		Escribir 'Se seleccion� Si continuar...'
		Escribir 'Acciones contenidas en el ciclo'
		Escribir ''
		Escribir '�Usted desea continuar S/N:?'
		Leer continuar
	FinMientras
	Escribir 'Usted seleccion� No continuar...'
FinAlgoritmo
