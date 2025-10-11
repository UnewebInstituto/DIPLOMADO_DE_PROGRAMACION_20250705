Algoritmo Fibonacci_Repetir
	Definir n, a, b, c, contador Como Entero
	escribir "¿Cuántos términos de Fibonacci deseas ver?"
	Leer n
	
	a<-1
	b<-1
	contador<-2
	Escribir "Serie de Fibonacci:"
	Escribir a
	escribir b
	
	Repetir
		c <- a+b
		Escribir c
		a<-b
		b<-c
		contador<- contador + 1
	Hasta Que contador = n
	
FinAlgoritmo
