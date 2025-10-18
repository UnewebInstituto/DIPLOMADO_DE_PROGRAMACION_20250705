Algoritmo Ejemplo21_Ordenamiento_metodo_burbuja
	// declaracion de variables
	Dimensionar notas(6)
	Definir contador Como Entero
	Definir i Como Entero
	Definir j Como Entero
	Definir n Como Entero
	Definir aux Como Entero
	// inicializacion de variables
	contador <- 0
	n <- 6
	i <- 1
	Limpiar Pantalla
	Escribir 'Ingreso de Notas'
	// la captura de datos se hace a travez de un mientras 
	Mientras contador<6 Hacer
		Escribir 'Ingrese la calificacion del estudiante ', contador+1, ':'
		Leer notas[contador]
		contador <- contador+1
	FinMientras
	Escribir ''
	Escribir 'Reporte de Notas antes de Ordenar'
	// La salida antes de ordenar se hace a travez de un Repetir 
	contador <- 0
	Repetir
		Escribir notas[contador]
		contador <- contador+1
	Hasta Que contador=6
	// Ordenamiento del arreglo de notas
	// tamaño del arreglo
	n <- 6
	i <- 1
	Mientras i<=n-1 Hacer
		j <- 0
		Mientras j<n-i Hacer
			Si notas[j]>notas[j+1] Entonces
				aux <- notas[j]
				notas[j] <- notas[j+1]
				notas[j+1]<-aux
			FinSi
			j <- j+1
		FinMientras
		i <- i+1
	FinMientras
	Escribir ''
	Escribir 'REPORTE DE NOTAS DESPUÉS DE ORDENAR'
	// La salida antes de ordenar se hace a través de un Repetir
	contador <- 0
	Repetir
		Escribir notas[contador]
		contador <- contador+1
	Hasta Que contador=6
FinAlgoritmo
