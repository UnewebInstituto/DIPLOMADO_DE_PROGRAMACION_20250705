Algoritmo ejemplo21_ordenamiento_metodo_burbuja
	// declaraci�n de variables
	Dimensionar notas(6)
	Definir contador Como Entero
	Definir i Como Entero
	Definir j Como Entero
	Definir aux Como Entero
	Definir n Como Entero
	// inicializaci�n de variables
	contador <- 0
	Limpiar Pantalla
	Escribir 'INGRESO DE NOTAS'
	// la captura de datos se hace a trav�s de Mientras
	Mientras contador<6 Hacer
		Escribir 'Ingrese la calificaci�n del estudiante ', contador+1, ':'
		Leer notas[contador]
		contador <- contador+1
	FinMientras
	Escribir ' '
	Escribir 'Reporte de notas antes de ordenar'
	// la salida antes de ordenar se hace a trav�s de un Repetir
	contador <- 0
	Repetir
		Escribir notas[contador]
		contador <- contador+1
	Hasta Que contador=6
	// ordenamiento del arreglo de notas
	// tama�o del arreglo
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
	Escribir ' '
	Escribir 'Reporte de notas despu�s de ordenar'
	contador <- 0
	Repetir
		Escribir notas[contador]
		contador <- contador+1
	Hasta Que contador=6
FinAlgoritmo
