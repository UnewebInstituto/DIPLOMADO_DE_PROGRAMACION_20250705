Algoritmo ejemplo13_tabla_multiplicar_mientras
	// declaración de variables
	Definir multiplicando Como Entero
	Definir multiplicador Como Entero
	// inicialización y ciclo
	multiplicando <- 1
	Mientras multiplicando<10 Hacer
		Escribir 'Tabla de multiplicar del ', multiplicando
		multiplicador <- 1
		Mientras multiplicador<10 Hacer
			Escribir multiplicando, ' x ', multiplicador, ' = ', (multiplicando*multiplicador)
			multiplicador <- multiplicador+1
		FinMientras
		multiplicando <- multiplicando+1
		Escribir ''
	FinMientras
FinAlgoritmo
