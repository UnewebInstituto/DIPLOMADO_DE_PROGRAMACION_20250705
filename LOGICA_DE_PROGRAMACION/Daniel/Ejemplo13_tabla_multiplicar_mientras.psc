Algoritmo Ejemplo13_tabla_multiplicar_mientras
	//Declaracion de variable
	Definir multiplicando Como Entero
	Definir multiplicador como entero 
	//Inicializacion y ciclo
	multiplicando <- 1
	mientras multiplicando < 10 Hacer
		Escribir 'Tabla de Multiplicar del ' Multiplicando 
		multiplicador <- 1
		mientras multiplicador < 10 Hacer
			Escribir multiplicando, 'X', multiplicador, '=',  (multiplicando*multiplicador)
			multiplicador <- multiplicador + 1
		FinMientras
		multiplicando <- multiplicando + 1
		Escribir ''
	FinMientras
	
FinAlgoritmo
