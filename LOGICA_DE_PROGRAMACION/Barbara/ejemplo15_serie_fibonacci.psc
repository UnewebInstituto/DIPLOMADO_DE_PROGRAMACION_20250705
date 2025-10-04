Algoritmo ejemplo15_serie_fibonacci
	// declaración de variables
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir n Como Entero
	Definir contador Como Entero
	Definir suma Como Entero
	Definir continuar Como Cadena
	// inicialización de variable
	continuar <- 'S'
	// Definir ciclo
	Mientras continuar='S' O continuar='s' Hacer
		// inicialización de variables en el ciclo
		n1 <- 1
		n2 <- 1
		suma <- 0
		contador <- 2
		n <- 0
		Escribir '¿Cantidad de elementos en la serie?'
		Leer n
		Escribir n1
		Escribir n2
		Mientras contador<n Hacer
			suma <- n1+n2
			Escribir suma
			n1 <- n2
			n2 <- suma
			contador <- contador+1
		FinMientras
		Escribir ''
		Escribir '¿Desea generar una nueva serie S/N?:'
		Leer continuar
	FinMientras
	Escribir 'Usted seleccionó No generar una nueva serie'
FinAlgoritmo
