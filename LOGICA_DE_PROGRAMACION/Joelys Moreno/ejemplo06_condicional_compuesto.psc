Algoritmo Ejemplo06_condicional_compuesto
	// Declaracion de Variables
	Definir primer_nombre Como Cadena
	Definir edad Como Entero
	Definir peso Como Real
	Definir estudiante Como Lógico
	Definir pregunta Como Cadena
	// Uso de Operador de Asignacion
	// Incializacion de Variables
	primer_nombre <- 'Joelys'
	edad <- 36
	peso <- 90
	estudiante <- Verdadero
	pregunta <- ''
	// escritura estandard
	Escribir 'Contenido de las Variables inicializadas'
	Escribir 'PRIMER NOMBRE', primer_nombre
	Escribir 'EDAD', edad
	Escribir 'PESO', peso
	Escribir '¿Es Estudiante?', estudiante
	// leectura estandard
	Escribir '------------------'
	Escribir 'Por favor ingrese nuevos valores'
	Escribir 'NOMBRE:'
	Leer primer_nombre
	Escribir 'EDAD:'
	Leer edad
	Escribir 'PESO (Usar. para los decimales):'
	Leer peso
	Escribir '¿ES ESTUDIANTE (S/N)?'
	Leer pregunta
	Si pregunta='S' O pregunta='s' Entonces
		estudiante <- Verdadero
	SiNo
		estudiante <- Falso
	FinSi
	Escribir '------------------'
	Escribir 'Nuevos contenido de las variables'
	Escribir 'PRIMER NOMBRE', primer_nombre
	Escribir 'EDAD', edad
	Si edad<18 Entonces
		Escribir 'ATENCION: es menor de edad'
	SiNo
		Escribir 'Es un Adulto.'
	FinSi
	Escribir 'PESO', peso
	Escribir '¿Es Estudiante?', estudiante
FinAlgoritmo
