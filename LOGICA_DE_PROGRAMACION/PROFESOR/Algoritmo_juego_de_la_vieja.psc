// DECLARACIÓN DE FUNCIONES
Funcion hayGanador <- verificarGanador(tablero, jugador)
	Definir i Como Entero
	hayGanador <- Falso
	
	// Revisar filas
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Si tablero[i,0] = jugador Y tablero[i,1] = jugador Y tablero[i,2] = jugador Entonces
			hayGanador <- Verdadero
		FinSi
	FinPara
	
	// Revisar columnas
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Si tablero[0,i] = jugador Y tablero[1,i] = jugador Y tablero[2,i] = jugador Entonces
			hayGanador <- Verdadero
		FinSi
	FinPara
	
	// Revisar diagonales
	Si tablero[0,0] = jugador Y tablero[1,1] = jugador Y tablero[2,2] = jugador Entonces
		hayGanador <- Verdadero
	FinSi
	Si tablero[0,2] = jugador Y tablero[1,1] = jugador Y tablero[2,0] = jugador Entonces
		hayGanador <- Verdadero
	FinSi
FinFuncion

// CUERPO PRINCIPAL
Algoritmo juego_de_la_vieja
		
		// Paso 1: Declarar variables
		Definir fila, columna Como Entero
		Definir tablero Como Caracter
		Definir salida Como Caracter
		Definir jugador Como Caracter
		Dimensionar tablero[3,3]
		
		// Paso 2: Inicializar el tablero vacío
		Para fila <- 0 Hasta 2 Con Paso 1 Hacer
			Para columna <- 0 Hasta 2 Con Paso 1 Hacer
				tablero[fila, columna] <- " " // espacio vacío
			FinPara
		FinPara
		
		// Paso 3: Mostrar el tablero
		Escribir "=== Tablero ==="
		Para fila <- 0 Hasta 2 Con Paso 1 Hacer
			salida <- ""
			Para columna <- 0 Hasta 2 Con Paso 1 Hacer
				salida <- Concatenar(salida+" ", tablero[fila, columna])
				Si columna < 2 Entonces
					salida <- Concatenar(salida, " |")
				FinSi
			FinPara
			Escribir salida
			Si fila < 2 Entonces
				Escribir "---+---+---"
			FinSi
		FinPara
		
		// Paso 4: Turnos de jugador
		Definir jugadas Como Entero
		jugador <- "X"
		jugadas <- 0
		Definir hayGanador Como Logico
		hayGanador <- Falso
		
		Mientras jugadas < 9 Y NO hayGanador Hacer
			
			Escribir "Turno del jugador: ", jugador
			Escribir "Ingrese fila (0 a 2): "
			Leer fila
			Escribir "Ingrese columna (0 a 2): "
			Leer columna
			
			// Validar si la celda está vacía
			Si tablero[fila, columna] = " " Entonces
				tablero[fila, columna] <- jugador
				jugadas <- jugadas + 1
				
				// Verificar si el jugador actual ganó
				Si verificarGanador(tablero, jugador) Entonces
					Escribir "=== Tablero Final ==="
					Para fila <- 0 Hasta 2 Con Paso 1 Hacer
						salida <- ""
						Para columna <- 0 Hasta 2 Con Paso 1 Hacer
							salida <- Concatenar(salida+" ", tablero[fila, columna])
							Si columna < 2 Entonces
								salida <- Concatenar(salida, " |")
							FinSi
						FinPara
						Escribir salida
						Si fila < 2 Entonces
							Escribir "---+---+---"
						FinSi
					FinPara
					Escribir "¡El jugador ", jugador, " ha ganado!"
					hayGanador <- Verdadero
					
				Sino
					// Mostrar tablero actualizado solo si no hay ganador
					Escribir "=== Tablero actualizado ==="
					Para fila <- 0 Hasta 2 Con Paso 1 Hacer
						salida <- ""
						Para columna <- 0 Hasta 2 Con Paso 1 Hacer
							salida <- Concatenar(salida+" ", tablero[fila, columna])
							Si columna < 2 Entonces
								salida <- Concatenar(salida, " |")
							FinSi
						FinPara
						Escribir salida
						Si fila < 2 Entonces
							Escribir "---+---+---"
						FinSi
					FinPara
					
					// Cambiar de jugador
					Si jugador = "X" Entonces
						jugador <- "O"
					Sino
						jugador <- "X"
					FinSi
				FinSi
			Sino
				Escribir "¡Esa celda ya está ocupada! Intenta otra."
			FinSi
			
		FinMientras
		
		// Verificar empate
		Si jugadas = 9 Y NO hayGanador Entonces
			Escribir "=== Tablero Final ==="
			Para fila <- 0 Hasta 2 Con Paso 1 Hacer
				salida <- ""
				Para columna <- 0 Hasta 2 Con Paso 1 Hacer
					salida <- Concatenar(salida+" ", tablero[fila, columna])
					Si columna < 2 Entonces
						salida <- Concatenar(salida, " |")
					FinSi
				FinPara
				Escribir salida
				Si fila < 2 Entonces
					Escribir "---+---+---"
				FinSi
			FinPara
			Escribir "¡El juego ha terminado en empate!"
		FinSi
		
FinAlgoritmo

// Paso 5: Función para verificar si hay ganador
