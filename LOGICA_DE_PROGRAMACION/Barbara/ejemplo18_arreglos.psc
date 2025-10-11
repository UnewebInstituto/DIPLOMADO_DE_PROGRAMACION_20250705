Algoritmo ejemplo18_arreglos
	//declaracion de variables
	definir contador Como Entero
	dimensionar alumnos[6]
	//inicializar alumnos
	alumnos[0] <- 'YTZALI'
	alumnos[1] <- 'BARBARA'
	alumnos[2] <- 'JOELYS'
	alumnos[3] <- 'AIRON'
	alumnos[4] <- 'FRAYNER'
	alumnos[5] <- 'DANIEL'
	//Proceso 
	Limpiar Pantalla
	escribir '*** REPORTE DE ESTUDIANTES ***'
	Escribir '*** DIPLOMADO DE PROGRAMACIÓN ***'
	Para contador <- 0 Hasta 5 Con Paso 1 Hacer
		escribir alumnos[contador]
	FinPara
FinAlgoritmo
