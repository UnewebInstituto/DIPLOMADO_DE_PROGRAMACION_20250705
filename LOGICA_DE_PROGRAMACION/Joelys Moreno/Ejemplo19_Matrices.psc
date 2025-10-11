Algoritmo Ejemplo19_Matrices
	//Declaracion de variables
	Definir fila como Entero
	Definir columna Como Entero
	dimensionar alumnos[3,2]
	//Inicializar alumnos
	alumnos[0,0] <- 'YTZALI'
	alumnos[0,1] <- 'BARBARA'
	alumnos[1,0] <- 'JOELYS'
	alumnos[1,1] <- 'AIRON'
	alumnos[2,0] <- 'FRAINER'
	alumnos[2,1] <- 'DANIEL'
	//ciclos
	//proceso
	Limpiar Pantalla
	Escribir 'reporte de estudiantes'
	escribir 'Diplomado de programacion'
	para fila<-0 hasta 2 Con Paso 1 Hacer
		para columna<-0 hasta 1 Con Paso 1 Hacer
			escribir alumnos[fila,columna]
		FinPara
	FinPara
	
FinAlgoritmo
