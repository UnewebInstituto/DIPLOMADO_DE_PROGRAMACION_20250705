// Declaración de funciones
Funcion sumar <- calcular_sumar(arg_n1, arg_n2)
	// La variable 'sumar' corresponde al rendimiento
	// (return) de la función
	Definir sumar Como Caracter
	Definir calculo Como Real
	calculo <- arg_n1 + arg_n2
	sumar <- ConvertirATexto(calculo)
FinFuncion

Funcion restar <- calcular_restar(arg_n1, arg_n2)
	// La variable 'restar' corresponde al rendimiento
	// (return) de la función
	Definir restar Como Caracter
	Definir calculo Como Real
	calculo <- arg_n1 - arg_n2
	restar <- ConvertirATexto(calculo)
FinFuncion

Funcion multiplicar <- calcular_multiplicar(arg_n1, arg_n2)
	// La variable 'multiplicar' corresponde al rendimiento
	// (return) de la función
	Definir multiplicar Como Caracter
	Definir calculo Como Real
	calculo <- arg_n1 * arg_n2
	multiplicar <- ConvertirATexto(calculo)
FinFuncion

Funcion dividir <- calcular_dividir(arg_n1, arg_n2)
	// La variable 'dividir' corresponde al rendimiento
	// (return) de la función
	Definir dividir Como caracter
	Definir calculo Como Real
	si arg_n2 = 0 Entonces
		dividir <- 'Infinito'
	sino 
		calculo <- arg_n1 / arg_n2
		dividir <- ConvertirATexto(calculo)
	FinSi
FinFuncion

Funcion potencia <- calcular_potencia(arg_base,arg_expo)
	// La variable 'potencia' corresponde al rendimiento
	// (return) de la función
	// Declaración de variables
	Definir calculo Como Entero
	Definir contador Como Entero
	Definir potencia Como Caracter
	// Inicializaci?n de variables
	calculo <- 1
	contador <- 0
	// TRUNC(), se emplea la función para sólo reconocer
	// el valor entero contenido en el argumento
	Mientras contador < TRUNC(arg_expo) Hacer
		calculo <- calculo * TRUNC(arg_base)
		contador <- contador + 1
	FinMientras
	potencia <- ConvertirATexto(calculo)
FinFuncion

Funcion condicion_de_error <- error(arg_n1,arg_n2)
	Definir condicion_de_error Como Caracter
	condicion_de_error <- 'Operación no definida para la calculadora'
FinFuncion

Algoritmo Ejemplo17_Calculadora
	// Declaración de variables
	Definir n1 Como Real
	Definir n2 Como Real
	Definir operacion Como Entero
	Definir resultado Como Caracter
	Definir mensaje Como Caracter
	Definir continuar Como Caracter
	// Inicialización de variables
	continuar <- 'S'
	// Cuerpo principal del programa
	Mientras Mayusculas(continuar) = 'S' Hacer
		Limpiar Pantalla
		escribir '*** Mi calculadora de Bodega ***'
		escribir 'Ingrese el 1er. Valor:'
		leer n1
		escribir 'Ingrese el 2do. Valor:'
		leer n2
		escribir 'Ingrese el número de la operación a realizar'
		escribir '1:Sumar'
		escribir '2:Restar'
		escribir '3:Multiplicar'
		escribir '4:Dividir'
		escribir '5:Potencia'
		leer operacion
		Segun operacion hacer
			1:
				resultado <- calcular_sumar(n1,n2)
			2:
				resultado <- calcular_restar(n1,n2)
			3:
				resultado <- calcular_multiplicar(n1,n2)
			4:
				resultado <- calcular_dividir(n1,n2)
			5:
				resultado <- calcular_potencia(n1,n2)
			De Otro Modo:
				resultado <- error(n1,n2)
		FinSegun
		Escribir 'El resultado es:', resultado
		escribir '¿Desea seguir utilizando nuestra calculadora (S/N)?'
		leer continuar
	FinMientras
	
FinAlgoritmo