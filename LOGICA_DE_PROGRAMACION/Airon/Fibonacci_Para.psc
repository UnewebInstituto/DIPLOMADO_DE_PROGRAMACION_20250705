Algoritmo Fibonacci_Para
	Definir n, a, b, c, i Como Entero
	Definir continuar Como Caracter
	
	Repetir
	escribir "¿Cuántos términos de Fibonacci deseas ver?"
	Leer n	
	a <- 1
	b <- 1
	continuar <- 'S'
	
	Escribir "Serie de Fibonacci:"
	Escribir a
	escribir b
	
	para i <- 1 hasta n-2 Con Paso 1
		c <- a + b
		Escribir c
		a <- b
		b <- c 
	FinPara
	
	Escribir "¿Deseas generar otra serie? (S/N)"
	Leer continuar
Hasta Que continuar = "N" o continuar = "n"
FinAlgoritmo
