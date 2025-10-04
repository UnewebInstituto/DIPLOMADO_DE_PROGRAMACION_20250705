Algoritmo Ejemplo14_ciclo_infinito_con_pregunta
	//Declaracion de Variable
	definir continuar como caracter
	//inicializacion de variable
	continuar <- 'S' 
	//definir ciclo infinito
	Mientras continuar = 'S' o continuar = 's' Hacer
		Escribir 'Se selecciono Si Continuar'
		Escribir 'Acciones contenidas en el ciclo'
		Escribir ''
		Escribir '¿Usted desea continuar? S/N'
		Leer continuar
	FinMientras
	Escribir 'Usted selecciono no continuar'
FinAlgoritmo
