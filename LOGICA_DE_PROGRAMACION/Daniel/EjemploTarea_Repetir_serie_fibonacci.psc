Algoritmo EjemploTarea_Repetir_Serie_Fibonnaci
	// Declaraci�n de variable
	Definir continuar Como Cadena
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir n Como Entero
	Definir contador Como Entero
	Definir suma Como Entero
	// Inicializaci�n de variable
	continuar <- 'S'
	// Definir ciclo
	Repetir
		// Inicializaci�n de variables en el ciclo
		n1 <- 1
		n2 <- 1
		suma <- 0
		contador <- 2
		n <- 0
		Escribir '�Cantidad de elementos en la Serie:?'
		Leer n
		Escribir n1
		Escribir n2
		Repetir
			suma <- n1+n2
			Escribir suma
			n1 <- n2
			n2 <- suma
			contador <- contador+1
		Hasta Que contador=n
		Escribir '�Usted desea generar una nueva serie S/N:?'
		Leer continuar
	Hasta Que continuar<>'S' Y continuar<>'s'
	Escribir 'Usted seleccion� No continuar...'
FinAlgoritmo
