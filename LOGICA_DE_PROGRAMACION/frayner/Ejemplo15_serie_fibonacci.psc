Algoritmo Ejemplo15_serie_fibonacci
	//declaracion de variables
	Definir continuar Como Caracter 
	Definir n1 Como Entero
	definir n2 Como Entero
	Definir n Como Entero
	Definir suma Como Entero
	continuar <- 'S'
	Mientras continuar ='S' o continuar ='s' Hacer
		//inicializacion de variable
		n1 <- 1    
		n2 <- 2  
		suma <- 0 
		contador  <- 2
		n  <- 0
		escribir 'elementos de la serie'
		leer n 
		Escribir n1
		Escribir n2
		Mientras contador <= n Hacer
			suma <- n1 + n2
			Escribir suma
			n1 <- n2
			n2 <- suma
			contador <- contador + 1 
		FinMientras
		Escribir 'desea generar una nueva serie s/n ?'
		leer continuar 
	FinMientras
FinAlgoritmo
