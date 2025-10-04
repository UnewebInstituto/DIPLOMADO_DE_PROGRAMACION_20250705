Algoritmo ejemplo13_Tabla_Multiplicar_Mientras
	// Declaración de variables 
	Definir multiplicando Como Entero
	Definir multiplicador Como Entero
	// Inicializacion y ciclo
	multiplicando <- 1
	Mientras multiplicando<10 Hacer
		Escribir 'Tabla de Multiplicar del ', multiplicando
		multiplicador <- 1
		Mientras multiplicador<11 Hacer
			Escribir multiplicando, ' x ', multiplicador, ' = ', (multiplicando*multiplicador)
			multiplicador <- multiplicador+1
		FinMientras
		multiplicando <- multiplicando+1
	FinMientras
FinAlgoritmo
