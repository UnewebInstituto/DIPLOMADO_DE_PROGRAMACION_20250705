//Declaración de Funciones
Funcion sumar <- calcular_sumar(arg_n1, arg_n2)
	//La variable sumar corresponde al rendimiento (return) de  la Funcion 
	definir sumar Como Real
	sumar <- arg_n1 + arg_n2
FinFuncion

Funcion restar <- calcular_restar(arg_n1, arg_n2)
	//La variable restar corresponde al rendimiento (return) de  la Funcion 
	definir restar Como Real
	restar <- arg_n1 - arg_n2
FinFuncion

Funcion multiplicar <- calcular_multiplicar(arg_n1, arg_n2)
	//La variable multiplicar corresponde al rendimiento (return) de  la Funcion 
	definir multiplicar Como Real
	multiplicar <- arg_n1 * arg_n2
FinFuncion

Funcion dividir <- calcular_dividir(arg_n1, arg_n2)
	//La variable dividir corresponde al rendimiento (return) de  la Funcion 
	definir dividir Como Caracter
	Definir calculo Como Real
	si arg_n2 = 0 Entonces
		dividir <- "Infinito"
	SiNo
		calculo <- arg_n1 / arg_n2
		dividir <- ConvertirATexto(calculo)
	FinSi
FinFuncion

Función potencia <- calcular_potencia(arg_base,arg_expo)
//La variable potencia corresponde al rendimiento (return) de  la Funcion 
// Declaracion de variables
Definir potencia Como Entero
Definir contador Como Entero
// Inicializacion de variable
potencia <- 1
contador <- 0
//TRUNC(): se emplea la funcion solo para reconocer el valor entero contenido en el argumento
Mientras contador< TRUNC(arg_expo) Hacer
	potencia <- potencia*arg_base
	contador <- contador+1
FinMientras
FinFunción

Funcion condicion_de_error <- error(n1, n2)
	Definir condicion_de_error Como Caracter
	condicion_de_error <- "Operación no definida para la calculadora"
FinFuncion
Algoritmo ejemplo17_Calculadora
	//Declaración de Variables
	definir n1 Como Real
	Definir n2 Como Real
	Definir operacion Como Entero
	definir resultado Como Real
	Definir resultadodividir Como Caracter
	definir mensaje Como Caracter
	Definir continuar Como Caracter
	
	//Inicializacion de variables
	continuar <- "S"
	//Cuerpo Principal
	Mientras Mayusculas(continuar) = "S" Hacer
		Limpiar Pantalla
		
		Escribir "*** Mi Calculadora de Bodega ***"
		Escribir "Ingrese el primer valor:"
		leer n1
		Escribir "Ingrese el segundo valor:"
		leer n2
		Escribir "Ingrese el número de la operación a ejecutar:"
		Escribir "1: sumar"
		Escribir "2: restar"
		Escribir "3: multiplicar"
		Escribir "4: dividir"
		Escribir "5: potencia"
		Leer operacion
		Segun operacion
			1: resultado <- calcular_sumar(n1, n2)
				Escribir "El resultado de ", n1, " + ", n2, " es igual a ", resultado
			2: resultado <- calcular_restar(n1, n2)
				Escribir "El resultado de ", n1, " - ", n2, " es igual a ", resultado
			3: resultado <- calcular_multiplicar(n1, n2)
				Escribir "El resultado de ", n1, " * ", n2, " es igual a ", resultado
			4: resultadodividir <- calcular_dividir(n1, n2)
				Escribir "El resultado de ", n1, " / ", n2, " es igual a ", resultadodividir
			5: resultado <- calcular_potencia(n1, n2)
				Escribir "El resultado de ", n1, " elevado a la ", n2, " es igual a ", resultado
			De Otro Modo: resultado <- error (n1, n2)
				
		FinSegun
		escribir "¿Desea seguir utilizando nuestra calculadora? (S/N)"
		leer continuar
	FinMientras
FinAlgoritmo
