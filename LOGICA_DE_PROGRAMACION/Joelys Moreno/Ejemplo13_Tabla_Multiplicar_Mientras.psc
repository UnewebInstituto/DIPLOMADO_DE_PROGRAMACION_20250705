Algoritmo Ejemplo13_Tabla_Multiplicar_Mientras
	// Decñaracion de Variable
	Definir multiplicando Como Entero
	Definir multiplicador Como Entero
	// Inicializacion y ciclo 
	multiplicando <- 1
	Mientras multiplicando<10 Hacer
		Escribir 'tabla de multiplicar del ', ., multiplicando
		multiplicador <- 1
		Mientras multiplicador<10 Hacer
			Escribir multiplicando, 'x', multiplicador, '=', (multiplicando*multiplicador)
			multiplicador <- multiplicador+1
		FinMientras
		multiplicando <- multiplicando+1
		Escribir ''
	FinMientras
FinAlgoritmo
