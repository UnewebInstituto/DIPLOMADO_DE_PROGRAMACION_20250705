Algoritmo ejemplo19_Matrices
	//declaracion de variables
	definir fila Como Entero
	definir columna Como Entero
	definir salida Como Caracter
	dimensionar alumnos[3,2]
	//Inicializacion
	alumnos[0,0] <- "Ytzali"
	alumnos[0,1] <- "Barbara"
	alumnos[1,0] <- "Joelys"
	alumnos[1,1] <- "Airon"
	alumnos[2,0] <- "Frayner"
	alumnos[2,1] <- "Daniel"
	salida <- ""
	//Proceso 
	Limpiar Pantalla
	escribir "*** Reporte de Estudiantes ***"
	Escribir "*** Diplomado de Programacion ***"
	para fila <- 0 hasta 2 Con Paso 1 Hacer
		salida <- ""
		para columna <- 0 hasta 1 con paso 1 Hacer
			salida <- Concatenar(salida+" ", alumnos[fila, columna])
		FinPara
		Escribir salida
	FinPara
	
FinAlgoritmo
