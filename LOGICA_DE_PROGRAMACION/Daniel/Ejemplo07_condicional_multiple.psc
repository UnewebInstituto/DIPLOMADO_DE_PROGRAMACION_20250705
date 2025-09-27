Algoritmo Ejemplo07_condicional_multiple
	//Declaracion de variables
	definir primer_nombre Como Caracter
	definir edad Como Entero
	definir peso Como Real
	definir estudiante Como Logico
	definir pregunta Como Caracter
	//Uso de operador de asignacion 
	//Inicializacion de variables
	primer_nombre <- 'Daniel'
	edad  <- 36
	peso <- 74
	estudiante <- Verdadero
	pregunta <- ''
	//Escritura estandar 
	Escribir "Contenido de las variables inicializadas"
	Escribir "PRIMER NOMBRE:", primer_nombre
	Escribir "EDAD", edad
	Escribir "PESO", peso
	Escribir "¿ ES ESTUDIANTE?:", estudiante 
	
	//Lectura Estandar
	Escribir "---------------------------"
	Escribir "Por favor ingrese nuevos valores"
	Escribir "NOMBRE:"
	Leer primer_nombre
	Escribir "EDAD:"
	Leer edad
	Escribir "PESO (Usar  .  para los decimales):"
	Leer peso
	Escribir "¿ES ESTUDIANTE (S/N)?:"
	leer pregunta
	Si pregunta = 'S' o pregunta = 's' Entonces
		estudiante <- Verdadero
	sino
		estudiante <- Falso
	FinSi
	Escribir "-----------------------------"
	Escribir "Nuevo contenido de las variables"
	Escribir "PRIMER NOMBRE:", primer_nombre
	Escribir "EDAD", edad
	//Uso de condicional simple
	Si edad > 0 y edad < 6 Entonces
		escribir 'ES UN INFANTE'
	SiNo
		si edad > 6 y edad < 11 Entonces
			escribir "ES UN NIÑO"
	    SiNo
			si edad > 11 y edad < 18 Entonces
				escribir "ES UN ADOLECENTE"
			SiNo
				si edad > 18 y edad < 65 Entonces
					escribir "ES UN ADULTO"
				SiNo
					si edad > 65 y edad < 120 Entonces
						escribir "ADULTO MAYOR"
					SINO 
						escribir "ERROR AL INGRESAR LA EDAD"
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir "PESO", peso
	Escribir "¿ ES ESTUDIANTE?:", estudiante
	
FinAlgoritmo

