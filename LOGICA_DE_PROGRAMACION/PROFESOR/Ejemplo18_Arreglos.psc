Algoritmo Ejemplo18_Arreglos
	// Declaración de variables
	Definir contador Como Entero
	Dimensionar alumnos[6]
	// Inicializar alumnos
	alumnos[0] <- 'YTZALI'
	alumnos[1] <- 'BARBARA'
	alumnos[2] <- 'JOELYS'
	alumnos[3] <- 'AIRON'
	alumnos[4] <- 'FRAYNER'
	alumnos[5] <- 'DANIEL'
	// Proceso
	Limpiar Pantalla
	Escribir '***  REPORTE DE ESTUDIANTES  ***'
	Escribir '*** DIPLOMADO DE PROGRAMACIÓN ***'	
	Para contador <- 0 Hasta 5 con Paso 1 Hacer
		Escribir alumnos[contador]
	FinPara
FinAlgoritmo
