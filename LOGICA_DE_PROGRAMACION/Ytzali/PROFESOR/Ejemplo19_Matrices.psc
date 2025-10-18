Algoritmo Ejemplo19_Matrices
	// Declaración de variables
	Definir fila Como Entero
	Definir columna Como Entero
	Dimensionar alumnos[3,2]
	// Inicialización
	alumnos[0,0] <- 'YTZALI'
	alumnos[0,1] <- 'BARBARA'
	alumnos[1,0] <- 'JOELYS'
	alumnos[1,1] <- 'AIRON'
	alumnos[2,0] <- 'FRAYNER'
	alumnos[2,1] <- 'DANIEL'
	// Proceso
	Limpiar Pantalla
	Escribir '***  REPORTE DE ESTUDIANTES  ***'
	Escribir '*** DIPLOMADO DE PROGRAMACIÓN ***'	
	Para fila<-0 hasta 2 Con Paso 1 Hacer
		para columna<-0 hasta 1 Con Paso 1 Hacer
			Escribir alumnos[fila, columna]
		FinPara
	FinPara
FinAlgoritmo
