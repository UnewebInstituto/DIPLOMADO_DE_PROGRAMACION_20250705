// Declaración de funciones
Función potencia <- calcular_potencia(arg_base,arg_expo)
	// Declaración de variables
	Definir potencia Como Entero
	Definir contador Como Entero
	// Inicialización de variables
	potencia <- 1
	contador <- 0
	Mientras contador < arg_expo Hacer
		potencia <- potencia * arg_base
		contador <- contador + 1
	FinMientras
FinFunción

// Cuerpo principal del programa
Algoritmo EJEMPLO16_DECLARACION_DE_FUNCIONES
	// Declaración de variables
	Definir base Como Entero
	Definir exponente Como Entero
	Definir resultado Como Entero
	Definir continuar Como Cadena
	// Inicialización de variables
	continuar <- 'S'
	Mientras continuar='S' O continuar='s' Hacer
		Escribir 'CÁLCULO DE LA POTENCIA DE UN NÚMERO'
		Escribir 'Por favor ingrese los siguiente valores'
		Escribir 'Base:'
		Leer base
		Escribir 'Exponente:'
		Leer exponente
		resultado <- calcular_potencia(base,exponente)
		Escribir 'La potencia de ', base, ' elevado a ', exponente, ' es igual a ', resultado
		Escribir '¿	Desea efectuar un nuevo cálculo de potencia (S/N):?'
		Leer continuar
	FinMientras
FinAlgoritmo
