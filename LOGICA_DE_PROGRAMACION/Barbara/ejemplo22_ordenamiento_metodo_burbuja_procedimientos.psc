Algoritmo Ejemplo21_Ordenamiento_M�todo_Burbuja
	// Declaraci�n de variables
	Dimensionar notas[6]
	Definir contador Como Entero
	Definir i Como Entero
	Definir j Como Entero
	Definir aux Como Entero
	Definir n Como Entero
	
	Definir continuar como Caracter
	continuar <- 'S'
	
	mientras Mayusculas(continuar) = 'S' Hacer
		
		// Inicializaci�n de variables
		contador <- 0
		Limpiar Pantalla
		Escribir "INGRESO DE NOTAS"
		// La captura de datos se hace a trav�s de Mientras 
		Mientras contador < 6 Hacer	
			Escribir "Ingrese la calificaci�n del estudiante ",contador+1,":"
			Leer notas[contador]
			contador <- contador + 1
		FinMientras
		Escribir ""
		Escribir "REPORTE DE NOTAS ANTES DE ORDENAR"
		// La salida antes de ordenar se hace a trav�s de un Repetir
		contador <- 0
		Repetir
			Escribir notas[contador]
			contador <- contador + 1
		Hasta Que contador = 6
		// Ordenamiento del arreglo de notas
		// Tama�o del arreglo
		n <- 6
		i <- 1
		Mientras i <= n-1 Hacer
			j <- 0
			Mientras j < n-i Hacer
				si notas[j] > notas[j+1] Entonces
					aux <- notas[j]
					notas[j] <- notas[j+1]
					notas[j+1]<- aux
				FinSi
				j <- j+1
			FinMientras
			i <- i+1
		FinMientras
		Escribir ""
		Escribir "REPORTE DE NOTAS DESPU�S DE ORDENAR"
		// La salida antes de ordenar se hace a trav�s de un Repetir
		contador <- 0
		Repetir
			Escribir notas[contador]
			contador <- contador + 1
		Hasta Que contador = 6
		escribir 'desea ingresar los datos de otras seis calificaciones? S/N:'
		leer continuar
	FinMientras	
FinAlgoritmo