Algoritmo ejemplo19_matrices
	//Declaraci�n de variables
	definir fila Como Entero
	definir columna Como Entero
	Definir salida Como Caracter
	Dimensionar alumnos[3,2]
	//Inicializaci�n
	alumnos[0,0] <- "Ytzali"
	alumnos[0,1] <- "B�rbara"
	alumnos[1,0] <- "Airon"
	alumnos[1,1] <- "Joelis"
	alumnos[2,0] <- "Frayner"
	alumnos[2,1] <- "Daniel"
	salida <- ""
	
	//Proceso
	Escribir "*** Reporte de estudiantes ***"
	Escribir "*** Diplomado de Programaci�n ***"
	para fila <- 0 Hasta 2 con paso 1 hacer 
		salida <- ""
		para columna <- 0 hasta 1 con paso 1 Hacer
			salida <- Concatenar(salida+" ", alumnos[fila, columna])
		FinPara
		Escribir salida
	FinPara
FinAlgoritmo

