Algoritmo Ejemplo20_Matrices
	//Declaracion de variable
	definir fila como entero
	definir columna como entero
	Dimensionar alumnos[3,2]
	//Inicializacion
	alumnos[0,0] <- 'Ytzali'
	alumnos[0,1] <- 'Barbara'
	alumnos[1,0] <- 'Joely'
	alumnos[1,1] <- 'Airon'
	alumnos[2,0] <- 'Frayner'
	alumnos[2,1] <- 'Daniel'
	salida <- ''
	//Proceso 
	Limpiar Pantalla
	Escribir '*** REPORTE DE ESTUDIANTES ***'
	Escribir '*** DIPLOMADO DE PROGRAMACION ***'
	Para fila <-0 hasta 2 con paso 1 Hacer
		salida <- ''
		para columna <-0 hasta 1 con paso 1 Hacer
			salida <- concatenar(salida+' ', alumnos[fila,columna])
			
		FinPara
		escribir salida
	FinPara
FinAlgoritmo
