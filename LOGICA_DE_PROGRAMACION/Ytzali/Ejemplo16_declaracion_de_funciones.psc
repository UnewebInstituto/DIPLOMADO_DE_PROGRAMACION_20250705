//Declaracion de funciones
funcion potencia <- calcular_potencia(arg_base, arg_expo)
	//Declaración de variables
	Definir Potencia Como Entero
	Definir contador Como Entero
	//Inicializacion de variables
	potencia <- 1
	contador <- 0
	mientras contador < arg_expo Hacer
		potencia <- potencia * arg_base
		contador <- contador + 1
	FinMientras
FinFuncion

//Cuerpo principal del programa
Proceso Ejemplo16_declaracion_de_funciones
	//Declaracion de variables
	Definir base como entero 
	Definir exponente Como Entero
	Definir resultado Como Entero
	Definir continuar Como Caracter
	//Inicializacion de variables
	Continuar <- 'S' 
	Mientras continuar = 'S' o continuar = 's' Hacer
		Escribir 'CALCULO DE LA POTENCIA DE UN NUMERO'
		Escribir 'Por favor, ingrese los siguentes valores'
		Escribir 'Base:' 
		Leer base
		Escribir 'Exponente'
		Leer exponente
		Resultado <- calcular_potencia(base, exponente)
		escribir 'La potencia de ', base, ' elevado a ', exponente, ' es igual a ', resultado
		Escribir '¿Desea efectuar un nuevo cáculo de potencia (S/N)?'
		Leer continuar
	FinMientras
FinAlgoritmo
