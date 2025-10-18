Algoritmo tarea_juego_la_vieja
	Definir x,n,jugador Como Entero
	Definir vector Como Caracter
	Dimension vector[9]
	Para x = 1 Hasta 9 Con Paso 1 Hacer
		vector(x) = " "
	FinPara
	jugador = azar (2)+1
	x = 1
	Mientras x <= 9 Hacer
		Escribir "Ingresa una posición jugador ", jugador
		Escribir "1,2,3", "              ", vector(1), ",", vector(2), ",", vector(3)
		Escribir "4,5,6", "              ", vector(4), ",", vector(5), ",", vector(6)
		Escribir "7,8,9", "              ", vector(7), ",", vector(8), ",", vector(9)
		Leer n
		si n > 0 y n < 10 Entonces
			si jugador == 1 Entonces
				si vector(n) == " " Entonces
					vector(n) = "X"
					jugador = 2
					si vector(1) == "X" y vector(2) == "X" y vector(3) == "X" Entonces
						Escribir "El jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(4) == "X" y vector(5) == "X" y vector(6) == "X" Entonces
						Escribir "El jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(7) == "X" y vector(8) == "X" y vector(9) == "X" Entonces
						Escribir "El jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(1) == "X" y vector(4) == "X" y vector(7) == "X" Entonces
						Escribir "El jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(2) == "X" y vector(5) == "X" y vector(8) == "X" Entonces
						Escribir "El jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(3) == "X" y vector(6) == "X" y vector(9) == "X" Entonces
						Escribir "El jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(1) == "X" y vector(5) == "X" y vector(9) == "X" Entonces
						Escribir "El jugador 1 ha ganado"
						x = 9
					FinSi
					si vector(3) == "X" y vector(5) == "X" y vector(7) == "X" Entonces
						Escribir "El jugador 1 ha ganado"
						x = 9
					FinSi
				SiNo
					Escribir "Esa posición está ocupada"
				FinSi
			SiNo
				si vector(n) == " " Entonces
					vector(n) = "O"
					jugador = 1
					si vector(1) == "O" y vector(2) == "O" y vector(3) == "O" Entonces
						Escribir "El jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(4) == "O" y vector(5) == "O" y vector(6) == "O" Entonces
						Escribir "El jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(7) == "O" y vector(8) == "O" y vector(9) == "O" Entonces
						Escribir "El jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(1) == "O" y vector(4) == "O" y vector(7) == "O" Entonces
						Escribir "El jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(2) == "O" y vector(5) == "O" y vector(8) == "O" Entonces
						Escribir "El jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(3) == "O" y vector(6) == "O" y vector(9) == "O" Entonces
						Escribir "El jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(1) == "O" y vector(5) == "O" y vector(9) == "O" Entonces
						Escribir "El jugador 2 ha ganado"
						x = 9
					FinSi
					si vector(3) == "O" y vector(5) == "O" y vector(7) == "O" Entonces
						Escribir "El jugador 2 ha ganado"
						x = 9
					FinSi
				SiNo
					Escribir "Esa posición esta ocupada"
				FinSi
			FinSi
		SiNo
			Escribir "Posición incorrecta"
		FinSi
		x = x + 1
	FinMientras
	Escribir "1,2,3", "              ", vector(1), ",", vector(2), ",", vector(3)
	Escribir "4,5,6", "              ", vector(4), ",", vector(5), ",", vector(6)
	Escribir "7,8,9", "              ", vector(7), ",", vector(8), ",", vector(9)
FinAlgoritmo
