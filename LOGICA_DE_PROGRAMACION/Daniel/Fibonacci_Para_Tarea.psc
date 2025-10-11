Algoritmo Fibonacci_Para_Tarea
	Definir a, b, c, n, i, contador Como Entero
	Definir continuar Como Cadena
	continuar <- 'S'
	Mientras continuar='s' O continuar='S' Hacer
		Escribir '�C�atos t�rminos de Fibonacci desea ver?'
		Leer n
		a <- 1
		b <- 1
		Escribir 'Serie de Fibonacci: '
		Escribir a
		Escribir b
		Para i<-1 Hasta n-2 Con Paso 1 Hacer
			c <- a+b
			Escribir c
			a <- b
			b <- c
		FinPara
		Escribir '�Usted desea generar otra serie? (S/N)'
		Leer continuar
	FinMientras
FinAlgoritmo
