//Declaracion de funciones 
Función potencia <- calcular_potencia(arg_base,arg_expo)
//La variable potencia corresponde al rendimiento (return) de la funcion
	// Declaración de variables
	Definir calculo Como Entero
	Definir contador Como Entero
	Definir potencia como caracter
	// Inicialización de variables
	calculo <- 1
	contador <- 0
	//TRUNC(). se emplea la funcion para solo reconocer el valor entero contenido en el argumento.
	Mientras contador < trunc(arg_expo) Hacer
		calculo <- calculo*trunc(arg_base)
		contador <- contador+1
	FinMientras
	potencia <- ConvertirATexto(calculo)
FinFunción

Funcion sumar <- calcular_sumar(arg_n1,arg_n2)
	//La variable sumar corresponde al rendimiento (return) de la funcion
	definir sumar Como caracter
	definir calculo como real
	calculo <- arg_n1 + arg_n2
	sumar <- ConvertirATexto(calculo) 
FinFuncion
Funcion restar <- calcular_restar(arg_n1,arg_n2)
	//La variable restar corresponde al rendimiento (return) de la funcion
	definir restar Como caracter
	definir calculo como real
	calculo <- arg_n1 - arg_n2
	restar <- ConvertirATexto(calculo)
FinFuncion
Funcion multiplicar <- calcular_multiplicar(arg_n1,arg_n2)
	//La variable multiplicar corresponde al rendimiento (return) de la funcion
	definir multiplicar Como Caracter
	definir calculo Como Real
	calculo <- arg_n1 * arg_n2
	multiplicar <- ConvertirATexto(calculo)
FinFuncion
Funcion dividir <- calcular_dividir(arg_n1,arg_n2)
	//La variable dividir corresponde al rendimiento (return) de la funcion
	definir dividir Como Caracter
	definir calculo Como Real
	si arg_n2 = 0 Entonces
		dividir <- 'infinito'
	sino
		calculo <- arg_n1 / arg_n2
		dividir <- ConvertirATexto(calculo)
	FinSi
FinFuncion
Funcion condicion_de_error <- error(arg_n1,arg_n2)
		condicion_de_error <- 'Operacion no definida para la calculadora' 
FinFuncion

Algoritmo Ejemplo17_calculadora
	//declaracion de variables
	Definir n1 como Real
	Definir n2 como Real
	Definir operacion como Entero 
	Definir resultado Como Caracter
	Definir mensaje Como Caracter
	Definir continuar Como Caracter
	//inizializacion de variables
	continuar <- 'S'
	//cuerpo principal del programa
	mientras Mayusculas(continuar) = 'S' Hacer
		escribir 'Mi calculadora de bodega'
		escribir 'ingrese el primer valor:'
		leer n1
		escribir 'ingrese el segundo valor:'
		leer n2
		escribir 'ingrese el numero de la operacion a realizar:'
		escribir '1:Sumar'
		escribir '2:Restar'
		escribir '3:multiplicar'
		escribir '4:dividir'
		escribir '5:potencia'
		leer operacion
		segun operacion hacer
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
				resultado <- error(arg_n1,arg_n2)
		FinSegun
		Escribir  'El resultado es:' resultado 		
		escribir '¿Desea seguir utilizando nuestra calculadora? (S/N):'
		leer continuar
	FinMientras
FinAlgoritmo
