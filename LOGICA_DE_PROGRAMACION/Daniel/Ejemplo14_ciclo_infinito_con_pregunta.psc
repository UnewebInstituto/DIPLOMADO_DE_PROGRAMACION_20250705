Algoritmo Ejemplo14_ciclo_infinito_con_pregunta
	//Declaracion de variable 
	Definir continuar Como Caracter
	//inicializacion de variable
	continuar <- 'S'
	//Definir ciclo 
	Mientras continuar = 'S' o continuar = 's' Hacer
		Escribir 'Se selecciono continuar'
		Escribir 'Acciones contenidas en el ciclo'
		Escribir ''
		Escribir '¿Usted desea Continuar S/N:?'
		Leer continuar
	FinMientras
	Escribir 'Usted selecciono no Continuar..'
FinAlgoritmo
