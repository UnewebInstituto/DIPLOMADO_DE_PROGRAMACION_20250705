Proceso Ejemplo15_serie_fibonacci
	// Declaracion de variables
	Definir continuar Como Cadena
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir n Como Entero
	Definir contador Como Entero
	Definir suma Como Entero
	// Inicializacion de variable
	continuar <- 'S'
	// Definir ciclo
	Mientras continuar='S' O continuar='s' Hacer
		// Inicializacion de variables en el ciclo
		n1 <- 1
		n2 <- 1
		suma <- 0
		contador <- 2
		n <- 0
		Escribir '¿Cantidad de elementos en la serie:?'
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
		Escribir '¿Desea continuar una nueva serie S/N?:'
		Leer continuar
	FinMientras
	Escribir 'Usted seleccinó No generar una nueva serie'
FinProceso
