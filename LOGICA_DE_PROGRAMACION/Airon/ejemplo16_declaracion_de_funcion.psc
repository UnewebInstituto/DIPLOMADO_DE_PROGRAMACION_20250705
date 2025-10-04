Función potencia <- calcular_potencia(arg_base,arg_expo)
	// Declaracion de variables
	Definir potencia Como Entero
	Definir contador Como Entero
	// Inicializacion de variable
	potencia <- 1
	contador <- 0
	Mientras contador<arg_expo Hacer
		potencia <- potencia*arg_base
		contador <- contador+1
	FinMientras
FinFunción

// Cuerpo principal del programa
Algoritmo ejemplo16_declaracion_de_funcion
	// Declaracion de variables
	Definir base Como Entero
	Definir exponente Como Entero
	Definir resultado Como Entero
	Definir continuar Como Cadena
	// Inicializacion de variables
	continuar <- 's'
	Mientras continuar='S' O continuar='s' Hacer
		Escribir 'Calculo de la potencia de un numero'
		Escribir 'Por favor infrese los siguientes valores: '
		Escribir 'Base:'
		Leer base
		Escribir 'Exponente:'
		Leer exponente
		resultado <- calcular_potencia(base,exponente)
		Escribir 'La potencia de ', base, ' elevado a ', exponente, ' es igual a ', resultado
		Escribir 'Desea efectuar un nuevo calculo?'
		Leer continuar
	FinMientras
FinAlgoritmo
