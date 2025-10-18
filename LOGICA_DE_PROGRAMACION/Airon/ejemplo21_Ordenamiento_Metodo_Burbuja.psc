Algoritmo ejemplo21_Ordenamiento_Metodo_Burbuja
	//Declaración de variables
	Dimensionar notas[6]
	definir contador Como Entero
	Definir i, j, n, aux Como Entero
	definir continuar Como Caracter
	continuar <- "S"
	Mientras Mayusculas(continuar)= "S" Hacer
	//Inicializacion de las variables
	contador <- 0
	Limpiar Pantalla
	Escribir "Ingreso de Notas"
	//La captura de datos se hace a través de Mientras
	Mientras contador < 6 Hacer
		Escribir "Ingrese la calificación del estudiante ", contador+1, ":"
		Leer notas[contador]
		contador <- contador+1
	FinMientras
	Escribir "-----------------------------"
	Escribir ""
	Escribir "Reporte de Notas Antes de Ordernar"
	//La salida antes de ordenar se hace a través de un Repetir 
	contador <- 0
	Repetir
		Escribir notas[contador]
		contador <- contador +1
	Hasta Que contador = 6
	
	Escribir "Reporte de Notas Ordernado"
	n <- 6
	i <- 1
	Mientras i <= n-1 Hacer
		j <- 0
		Mientras j < n-i Hacer
			si notas[j] > notas[j+1] Entonces
				aux <- notas[j]
				notas[j] <- notas[j+1]
				notas[j+1] <- aux
			FinSi
			j <- j +1
		FinMientras
		i <- i+1
	FinMientras
	contador <- 0
	Repetir
		Escribir notas[contador]
		contador <- contador +1
	Hasta Que contador = 6
	Escribir ""
	Escribir "Desea ingresar 6 nuevas calificaciones? (S/N)"
	Leer continuar
FinMientras
FinAlgoritmo
