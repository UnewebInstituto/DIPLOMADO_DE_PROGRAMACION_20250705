Algoritmo Ejemplo15_Serie_Fibonacci
	// Declaración de VAriables
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir n Como Entero
	Definir suma Como Entero
	Definir continuar Como Cadena
	Definir contador Como Entero
	// Inicializacion de variables
	continuar <- 'S'
	// Definir ciclo
	Mientras continuar='S' O continuar='s' Hacer
		n1 <- 1
		n2 <- 1
		contador <- 2
		suma <- 0
		n <- 0
		Escribir 'Elementos de la serie:'
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
		Escribir 'Desea genear una nueva serie?'
		Leer continuar
	FinMientras
FinAlgoritmo
