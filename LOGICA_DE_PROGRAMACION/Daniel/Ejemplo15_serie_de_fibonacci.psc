Algoritmo Ejemplo15_serie_de_fibonacci
	//Declaracion de variable 
	Definir continuar Como Caracter
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir n Como Entero
	Definir contador Como Entero
	Definir suma Como Entero
	//inicializacion de variable
	continuar <- 'S'
	//Definir ciclo 
	Mientras continuar = 'S' o continuar = 's' Hacer
		//Inicializacion de variable en el ciclo
		n1 <- 1
		n2 <- 1
		suma <- 0
		contador <- 2
		n <- 0
		
		Escribir '¿Cantidad de Elemento en la serie:?'
		Leer n 
		Escribir n1
		Escribir n2
		Mientras contador < n hacer
			//inicializacion de variable en el ciclo
			n1 <- 1
			n2 <- 1
			suma <- 0
			contador <- 2
			n <- 0
			Escribir '¿Usted desea Continuar S/N:?'
			Leer continuar
		FinMientras
		
		
	FinMientras
	Escribir 'Usted selecciono no Continuar..'
FinAlgoritmo
