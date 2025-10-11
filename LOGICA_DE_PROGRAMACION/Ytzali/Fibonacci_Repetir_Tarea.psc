Proceso Fibonacci_Repetir
	definir a, b, c, n, contador como entero 
	escribir "¿Cúatos términos de Fibonacci desea ver?"
	Leer n
	
	a <- 0
	b <- 1
	contador <- 1
	Escribir "Serie de Fibonacci: "
	Escribir a 
	escribir b 
	
	Repetir
		c <- a + b
		escribir c
		a <- b 
		b <- c
		contador <- contador + 1
	Hasta Que contador >= n - 1
	
FinProceso
