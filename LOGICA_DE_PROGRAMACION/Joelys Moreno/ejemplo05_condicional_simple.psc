Algoritmo Ejemplo05_condicional_simple
	// Declaracion de Variables
	Definir primer_nombre Como Cadena
	Definir edad Como Entero
	Definir peso Como Real
	Definir estudiante Como Lógico
	// Uso de Operador de Asignacion
	// Incializacion de Variables
	primer_nombre <- 'Joelys'
	edad <- 36
	peso <- 90
	estudiante <- Verdadero
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
	Escribir '¿ES ESTUDIANTE (Verdadero,falso)?'
	Leer estudiante
	Escribir '------------------'
	Escribir 'Nuevos contenido de las variables'
	Escribir 'PRIMER NOMBRE', primer_nombre
	Escribir 'EDAD', edad
	Si edad<18 Entonces
		Escribir 'ATENCION: es menor de edad'
	FinSi
	Escribir 'PESO', peso
	Escribir '¿Es Estudiante?', estudiante
FinAlgoritmo
