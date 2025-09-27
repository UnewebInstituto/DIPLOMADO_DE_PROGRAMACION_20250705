Algoritmo Ejemplo07_condicional_multiple
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
	// condicional multiple
	Si edad>=0 Y edad<=6 Entonces
		Escribir 'Es un infante'
	SiNo
		Si edad>=6 Y edad<=11 Entonces
			Escribir 'es un niño'
		SiNo
			Si edad>=11 Y edad<=18 Entonces
				Escribir 'Es un adolescente'
			SiNo
				Si edad>=18 Y edad<=65 Entonces
					Escribir 'Es un adulto'
				SiNo
					Si edad>=65 Y edad>=120 Entonces
						Escribir 'Es un adulto mayor'
					SiNo
						Escribir 'Error al ingresar la edad'
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir 'PESO', peso
	Escribir '¿Es Estudiante?', estudiante
FinAlgoritmo
