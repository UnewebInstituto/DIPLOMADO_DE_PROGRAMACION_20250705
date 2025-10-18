// Declaraci�n de funciones
Funci�n potencia <- calcular_potencia(arg_base,arg_expo)
	// Declaraci�n de variables
	Definir potencia Como Entero
	Definir contador Como Entero
	// Inicializaci�n de variables
	potencia <- 1
	contador <- 0
	Mientras contador < arg_expo Hacer
		potencia <- potencia * arg_base
		contador <- contador + 1
	FinMientras
FinFunci�n

// Cuerpo principal del programa
Algoritmo EJEMPLO16_DECLARACION_DE_FUNCIONES
	// Declaraci�n de variables
	Definir base Como Entero
	Definir exponente Como Entero
	Definir resultado Como Entero
	Definir continuar Como Cadena
	// Inicializaci�n de variables
	continuar <- 'S'
	Mientras continuar='S' O continuar='s' Hacer
		Escribir 'C�LCULO DE LA POTENCIA DE UN N�MERO'
		Escribir 'Por favor ingrese los siguiente valores'
		Escribir 'Base:'
		Leer base
		Escribir 'Exponente:'
		Leer exponente
		resultado <- calcular_potencia(base,exponente)
		Escribir 'La potencia de ', base, ' elevado a ', exponente, ' es igual a ', resultado
		Escribir '�	Desea efectuar un nuevo c�lculo de potencia (S/N):?'
		Leer continuar
	FinMientras
FinAlgoritmo
