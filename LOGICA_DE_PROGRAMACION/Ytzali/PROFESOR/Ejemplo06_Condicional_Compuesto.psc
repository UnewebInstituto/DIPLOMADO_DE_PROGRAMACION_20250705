Algoritmo EJEMPLO06_Condicional_Compuesto
	// Declaración de variables
	Definir primer_nombre Como Cadena
	Definir edad Como Entero
	Definir peso Como Real
	Definir estudiante Como Lógico
	Definir pregunta Como Cadena
	// Uso de Operador de asignación
	// Inicialización de variables
	primer_nombre <- 'HENRY'
	edad <- 56
	peso <- 70.5
	estudiante <- Verdadero
	pregunta <- ''
	// Escritura estándar
	Escribir 'Contenido de las variables inicializadas'
	Escribir 'PRIMER NOMBRE:', primer_nombre
	Escribir 'EDAD:', edad
	Escribir 'PESO:', peso
	Escribir '¿ES ESTUDIANTE?:', estudiante
	// Lectura estándar
	Escribir '----------------------------'
	Escribir 'Por favor ingrese nuevos valores'
	Escribir 'NOMBRE:'
	Leer primer_nombre
	Escribir 'EDAD:'
	Leer edad
	Escribir 'PESO (Usar . para los decimales):'
	Leer peso
	Escribir '¿ES ESTUDIANTE (S/N)?:'
	Leer pregunta
	Si pregunta='S' O pregunta='s' Entonces
		estudiante <- Verdadero
	SiNo
		estudiante <- Falso
	FinSi
	Escribir '----------------------------'
	Escribir 'Nuevo contenido de las variables'
	Escribir 'PRIMER NOMBRE:', primer_nombre
	Escribir 'EDAD:', edad
	// Condicional simple
	Si edad<18 Entonces
		Escribir 'ATENCIÓN: Es menor de edad'
	SiNo
		Escribir 'ES UN ADULTO'
	FinSi
	Escribir 'PESO:', peso
	Escribir '¿ES ESTUDIANTE?:', estudiante
FinAlgoritmo
