// --------------------------------------------------------------------------------
// SUBPROCESOS Y FUNCIONES
// --------------------------------------------------------------------------------

// Subproceso para inicializar la matriz del tablero
SubProceso InicializarTablero(tablero Por Referencia)
    Definir f, c Como Entero;
    Para f <- 0 Hasta 2 Hacer
        Para c <- 0 Hasta 2 Hacer
            tablero[f, c] <- ' ';
        FinPara
    FinPara
FinSubProceso

// Subproceso para dibujar el tablero en consola
SubProceso DibujarTablero(tablero)
    Definir f, c Como Entero;
    
    // Encabezado de columnas
    Escribir "  1   2   3";
    
    Para f <- 0 Hasta 2 Hacer
        Escribir " ", f+1, " ", Sin Saltar; // Indicador de fila
        
        Para c <- 0 Hasta 2 Hacer
            Escribir Sin Saltar tablero[f, c];
            Si c < 2 Entonces
                Escribir Sin Saltar " | ";
            FinSi
        FinPara
        
        Escribir ""; // Salto de línea al final de la fila
        
        Si f < 2 Entonces
            Escribir "  ---|---|---";
        FinSi
    FinPara
    Escribir "";
FinSubProceso

// Función lógica para verificar si el jugador actual ha ganado
Funcion resultado <- HayGanador(tablero, marca)
    Definir resultado Como Logico;
    Definir f, c Como Entero;
    resultado <- Falso;
    
    // 1. Comprobar Filas
    Para f <- 0 Hasta 2 Hacer
        Si (tablero[f, 0] = marca) Y (tablero[f, 1] = marca) Y (tablero[f, 2] = marca) Entonces
            resultado <- Verdadero;
        FinSi
    FinPara
    
    // 2. Comprobar Columnas
    Para c <- 0 Hasta 2 Hacer
        Si (tablero[0, c] = marca) Y (tablero[1, c] = marca) Y (tablero[2, c] = marca) Entonces
            resultado <- Verdadero;
        FinSi
    FinPara
	
    // 3. Comprobar Diagonales
    // Diagonal principal (\)
    Si (tablero[0, 0] = marca) Y (tablero[1, 1] = marca) Y (tablero[2, 2] = marca) Entonces
        resultado <- Verdadero;
    FinSi
    
    // Diagonal secundaria (/)
    Si (tablero[0, 2] = marca) Y (tablero[1, 1] = marca) Y (tablero[2, 0] = marca) Entonces
        resultado <- Verdadero;
    FinSi
	
FinFuncion




Algoritmo JuegoDeLaVieja
		
		// Definición de variables
		Definir tablero, jugadorActual Como Caracter;
		Definir fila, columna, turno, ganador Como Entero;
		Definir juegoTerminado Como Logico;
		
		// Inicialización
		Dimension tablero[3, 3];
		turno <- 1;
		jugadorActual <- 'X'; // El jugador 'X' siempre empieza
		juegoTerminado <- Falso;
		ganador <- 0; // 0: Nadie, 1: X, 2: O
		
		// Inicializar el tablero con espacios en blanco ' '
		InicializarTablero(tablero);
		
		Escribir "***************************************";
		Escribir "* ¡Bienvenido al Juego de la Vieja! *";
		Escribir "***************************************";
		Escribir "Instrucciones: Ingresa la Fila (1-3) y Columna (1-3) para jugar.";
		
		// Bucle principal del juego
		Mientras (No juegoTerminado) y (turno <= 9) Hacer
			
			Limpiar Pantalla; // Limpia la pantalla para refrescar el tablero
			
			Escribir "--- Turno ", turno, " ---";
			Escribir "Juega: ", jugadorActual;
			
			// 1. Mostrar Tablero
			DibujarTablero(tablero);
			
			// 2. Pedir jugada válida
			Repetir
				Escribir Sin Saltar "Fila (1-3): ";
				Leer fila;
				Escribir Sin Saltar "Columna (1-3): ";
				Leer columna;
				
				// Comprobar validez de la jugada
				Si (fila < 1) O (fila > 3) O (columna < 1) O (columna > 3) Entonces
					Escribir "¡Error! Fila y Columna deben estar entre 1 y 3.";
				SiNo
					Si tablero[fila-1, columna-1] <> ' ' Entonces
						Escribir "¡Error! Esa posición ya está ocupada. Intenta de nuevo.";
					FinSi
				FinSi
				
			Hasta Que (fila >= 1) Y (fila <= 3) Y (columna >= 1) Y (columna <= 3) Y (tablero[fila-1, columna-1] = ' ');
			
			// 3. Realizar jugada (usar índices 0-2 en la matriz)
			tablero[fila-1, columna-1] <- jugadorActual;
			
			// 4. Comprobar si hay ganador
			Si HayGanador(tablero, jugadorActual) Entonces
				juegoTerminado <- Verdadero;
				Si jugadorActual = 'X' Entonces
					ganador <- 1;
				SiNo
					ganador <- 2;
				FinSi
			FinSi
			
			// 5. Preparar siguiente turno
			Si (No juegoTerminado) Entonces
				Si jugadorActual = 'X' Entonces
					jugadorActual <- 'O';
				SiNo
					jugadorActual <- 'X';
				FinSi
				turno <- turno + 1;
			FinSi
			
		FinMientras
		
		// --- Fin del Juego ---
		Limpiar Pantalla;
		DibujarTablero(tablero);
		Escribir "==============================";
		
		Si ganador = 1 Entonces
			Escribir "¡El Jugador X ha ganado! ??";
		SiNo
			Si ganador = 2 Entonces
				Escribir "¡El Jugador O ha ganado! ??";
			SiNo
				// Si el turno llegó a 9 y no hay ganador, es empate.
				Escribir "¡Empate! El tablero está lleno. ??";
			FinSi
		FinSi
		Escribir "==============================";
		
FinAlgoritmo


