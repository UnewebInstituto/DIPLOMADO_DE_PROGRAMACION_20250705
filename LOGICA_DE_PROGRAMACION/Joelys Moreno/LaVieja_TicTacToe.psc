Algoritmo LaVieja_TicTacToe
	
    // Declaración de variables
    Dimension Tablero[3, 3] // Tablero de 3x3
    Definir Fila, Columna, Turno Como Entero
    Definir Jugador Como Caracter
    Definir Ganador Como Logico
    Definir CasillasOcupadas Como Entero
    
    // Inicialización del juego
    LimpiarPantalla
    InicializarTablero(Tablero)
    Ganador <- Falso
    CasillasOcupadas <- 0
    Turno <- 1 // 1 para Jugador 'X', 2 para Jugador 'O'
    
    // Bucle principal del juego
    Mientras Ganador = Falso Y CasillasOcupadas < 9 Hacer
        
        // 1. Determinar el jugador actual
        Si Turno = 1 Entonces
            Jugador <- 'X'
        Sino
            Jugador <- 'O'
        FinSi
        
        MostrarTablero(Tablero)
        Escribir "Turno del jugador: ", Jugador
        
        // 2. Pedir jugada válida
        Repetir
            Escribir "Introduce la fila (1-3):"
            Leer Fila
            Escribir "Introduce la columna (1-3):"
            Leer Columna
            
            // Ajustar a índice 0 (PseInt usa 1-base, pero este ajuste ayuda a la comprensión)
            Fila <- Fila - 1
            Columna <- Columna - 1
            
            // Verificar si la casilla es válida y está vacía
            Si Fila >= 0 Y Fila <= 2 Y Columna >= 0 Y Columna <= 2 Y Tablero[Fila, Columna] = ' ' Entonces
                EsValida <- Verdadero
            Sino
                Escribir "Movimiento inválido. Inténtalo de nuevo."
                EsValida <- Falso
                // Revertir el ajuste para la próxima repetición si fue inválida
                Fila <- Fila + 1
                Columna <- Columna + 1
            FinSi
        Hasta Que EsValida
        
        // 3. Realizar jugada
        Tablero[Fila, Columna] <- Jugador
        CasillasOcupadas <- CasillasOcupadas + 1
        
        // 4. Comprobar si hay ganador
        Ganador <- ComprobarGanador(Tablero, Jugador)
        
        // 5. Cambiar turno si no hay ganador
        Si Ganador = Falso Entonces
            Si Turno = 1 Entonces
                Turno <- 2
            Sino
                Turno <- 1
            FinSi
        FinSi
        
    FinMientras
    
    // 6. Mostrar resultado final
    MostrarTablero(Tablero)
    Si Ganador Entonces
        Escribir "¡El jugador ", Jugador, " ha ganado!"
    Sino
        Escribir "¡Es un empate (Gato)!"
    FinSi
    
FinAlgoritmo

//-------------------------------------------------------------
// Subproceso: InicializarTablero
// Llena el tablero con espacios en blanco.
//-------------------------------------------------------------
SubProceso InicializarTablero(T)
    // Se elimina 'Definir i, j Como Entero' si ya se hizo globalmente,
    // o se usa la definición local. Lo más simple: mantenerlo para que sea autocontenido.
    Definir i, j Como Entero // <-- Esta línea es correcta si 'i' y 'j' son locales.
    
    Para i <- 0 Hasta 2 Con Paso 1 Hacer
        Para j <- 0 Hasta 2 Con Paso 1 Hacer
            T[i, j] <- ' '
        FinPara
    FinPara
FinSubProceso

//-------------------------------------------------------------
// Subproceso: MostrarTablero
// Imprime el estado actual del tablero.
//-------------------------------------------------------------
SubProceso MostrarTablero(T)
    LimpiarPantalla
    Escribir "  1   2   3"
    Escribir " -----------"
    Escribir "1| ", T[0, 0], " | ", T[0, 1], " | ", T[0, 2], " |"
    Escribir " -----------"
    Escribir "2| ", T[1, 0], " | ", T[1, 1], " | ", T[1, 2], " |"
    Escribir " -----------"
    Escribir "3| ", T[2, 0], " | ", T[2, 1], " | ", T[2, 2], " |"
    Escribir " -----------"
FinSubProceso

//-------------------------------------------------------------
// Funcion: ComprobarGanador
// Devuelve Verdadero si el jugador actual ha ganado.
//-------------------------------------------------------------
Funcion Resultado <- ComprobarGanador(T, J)
    Definir i Como Entero
    Resultado <- Falso
    
    // 1. Comprobar Filas y Columnas
    Para i <- 0 Hasta 2 Con Paso 1 Hacer
        // Comprobar Fila i: T[i, 0] = T[i, 1] = T[i, 2] = J
        Si T[i, 0] = J Y T[i, 1] = J Y T[i, 2] = J Entonces
            Resultado <- Verdadero
        FinSi
        
        // Comprobar Columna i: T[0, i] = T[1, i] = T[2, i] = J
        Si T[0, i] = J Y T[1, i] = J Y T[2, i] = J Entonces
            Resultado <- Verdadero
        FinSi
    FinPara
    
    // 2. Comprobar Diagonales
    // Diagonal principal: T[0, 0] = T[1, 1] = T[2, 2] = J
    Si T[0, 0] = J Y T[1, 1] = J Y T[2, 2] = J Entonces
        Resultado <- Verdadero
    FinSi
    
    // Diagonal secundaria: T[0, 2] = T[1, 1] = T[2, 0] = J
    Si T[0, 2] = J Y T[1, 1] = J Y T[2, 0] = J Entonces
        Resultado <- Verdadero
    FinSi
    
FinFuncion
