Algoritmo ejemplo14_ciclo_infinito_con_preguntas
	// declaraci�n de varibles
	Definir continuar Como Cadena
	// inicializaci�n de variable
	continuar <- 'S'
	Mientras continuar='S' O continuar='s' Hacer
		Escribir 'Se seleccion� continuar'
		Escribir 'Acciones contenidas en el ciclo'
		Escribir ''
		Escribir '�Usted desea continuar S/N?:'
		Leer continuar
	FinMientras
	Escribir 'Usted seleccion� No continuar'
FinAlgoritmo
