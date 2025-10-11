Algoritmo Ejemplo19_Matrices
	//Declaracion de variable
	Definir fila como entero
	definir columna como entero
	Dimensionar alumnos[3,2]
	//Inicializacion
	alumnos[0,0] <- 'Ytzali'
	alumnos[0,1] <- 'Barbara'
	alumnos[1,0] <- 'Joely'
	alumnos[1,1] <- 'Airon'
	alumnos[2,0] <- 'Frayner'
	alumnos[2,1] <- 'Daniel'
	//Proceso 
	Limpiar Pantalla
	Escribir '*** REPORTE DE ESTUDIANTES ***'
	Escribir '*** DIPLOMADO DE PROGRAMACION ***'
	Para fila <-0 hasta 2 con paso 1 Hacer
		para columna <-0 hasta 1 con paso 1 Hacer
			escribir alumnos[filas,columnas]
		FinPara
	FinPara
FinAlgoritmo
