Algoritmo ejemplo19_matrices
	//declaración de variables
	definir fila Como Entero
	Definir columna Como Entero
	definir salida como caracter
	dimensionar alumnos[3,2]
	//inicialización
	alumnos[0,0] <- 'YTZALI'
	alumnos[0,1] <- 'BARBARA'
	alumnos[1,0] <- 'JOELYS'
	alumnos[1,1] <- 'AIRON'
	alumnos[2,0] <- 'FRAYNER'
	alumnos[2,1] <- 'DANIEL'
	salida <- ' ' 
	//Proceso 
	Limpiar Pantalla
	escribir '*** REPORTE DE ESTUDIANTES ***'
	Escribir '*** DIPLOMADO DE PROGRAMACIÓN ***'
	Para fila<-0 Hasta 2 Con Paso 1 Hacer
		salida <- ' '
		para columna<-0 Hasta 1 con paso 1 Hacer
			salida <- Concatenar(salida+' ', alumnos[fila,columna])
		FinPara
		escribir salida
	FinPara
FinAlgoritmo