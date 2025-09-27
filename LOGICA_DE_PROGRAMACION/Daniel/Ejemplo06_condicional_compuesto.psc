Algoritmo Ejemplo06_condicional_compuesto
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
	Si edad < 18 Entonces
		escribir 'ATENCION: Es Menor de edad'
	SiNo
		Escribir 'Es Adulto'
	FinSi
	Escribir "PESO", peso
	Escribir "¿ ES ESTUDIANTE?:", estudiante
	
FinAlgoritmo

