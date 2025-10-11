Algoritmo Ejemplo18_arreglos
	
	//Declaracion de variables
	
	Definir contador Como Entero
	Dimensionar alumnos[6]
	//Inicializar alumnos
	alumnos[0] <- 'Ytzali'
	alumnos[1] <- 'Barbara'
	alumnos[2] <- 'Joely'
	alumnos[3] <- 'Airon'
	alumnos[4] <- 'Frayner'
	alumnos[5] <- 'Daniel'
	//Proceso 
	
	Limpiar Pantalla
	Escribir '*** REPORTE DE ESTUDIANTES  ***'
	Escribir '***  DIPLOMADO DE PROGRAMACION  ***'
	Para contador <- 0 hasta 5 con paso 1 Hacer
		Escribir alumnos[contador]
	FinPara
	
	
FinAlgoritmo
