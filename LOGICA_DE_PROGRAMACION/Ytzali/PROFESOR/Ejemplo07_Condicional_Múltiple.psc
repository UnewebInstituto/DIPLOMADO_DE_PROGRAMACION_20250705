Algoritmo EJEMPLO07_CONDICIONAL_MULTIPLE
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
	// Condicional múltiple
	Si edad>=0 Y edad<6 Entonces
		Escribir 'ES UN INFANTE'
	SiNo
		Si edad>=6 Y edad<11 Entonces
			Escribir 'ES UN NIÑO'
		SiNo
			Si edad>=11 Y edad<18 Entonces
				Escribir 'ES UN ADOLESCENTE'
			SiNo
				Si edad>=18 Y edad<65 Entonces
					Escribir 'ES UN ADULTO'
				SiNo
					Si edad>=65 Y edad<120 Entonces
						Escribir 'ES UN ADULTO MAYOR'
					SiNo
						Escribir 'ERROR AL INGRESAR LA EDAD'
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir 'PESO:', peso
	Escribir '¿ES ESTUDIANTE?:', estudiante
FinAlgoritmo
