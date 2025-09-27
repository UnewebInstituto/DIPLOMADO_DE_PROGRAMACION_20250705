Algoritmo Ejemplo07_Condicinal_multiple
	// Declaración de variables
	Definir primer_nombre Como Cadena
	Definir edad Como Entero
	Definir peso Como Real
	Definir estudiante Como Lógico
	Definir pregunta Como Cadena
	// Uso de operador de asignacion
	// Inicializacion de variables
	primer_nombre <- 'Ytzali'
	edad <- 21
	peso <- 36
	estudiante <- Verdadero
	pregunta <- ''
	// Escritura estandar 
	Escribir 'Contenido de las variables inicializadas'
	Escribir 'Primer Nombre: ', primer_nombre
	Escribir 'Edad: ', edad
	Escribir 'Peso: ', peso
	Escribir '¿Es estudiante?: ', estudiante
	// Lectura estandar
	Escribir '------------------------------------------'
	Escribir 'Por favor ingrese nuevos valores'
	Escribir 'Nombre:'
	Leer primer_nombre
	Escribir 'Edad:'
	Leer edad
	Escribir 'Peso (Usar . para los decimales):'
	Leer peso
	Escribir '¿Es estudiante? (S/N):'
	Leer pregunta
	Si pregunta='S' O pregunta='s' Entonces
		estudiante <- Verdadero
	SiNo
		estudiante <- Falso
	FinSi
	Escribir '------------------------------------------'
	Escribir 'Nuevo contenido de las variables inicializadas'
	Escribir 'Primer Nombre: ', primer_nombre
	Escribir 'Edad: ', edad
	// Condicional multiple
	Si edad>=0 Y edad<6 Entonces
		Escribir 'Es un infante'
	SiNo
		Si edad>=6 Y edad<11 Entonces
			Escribir 'Es un niño'
		SiNo
			Si edad>=11 Y edad<18 Entonces
				Escribir 'Es un adolescente'
			SiNo
				Si edad>=18 Y edad<65 Entonces
					Escribir 'Es un adulto'
				SiNo
					Si edad>=65 Y edad<120 Entonces
						Escribir 'Es un adulto mayor'
					SiNo
						Escribir 'Error al ingresar la edad'
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir 'Peso: ', peso
	Escribir '¿Es estudiante?: ', estudiante
FinAlgoritmo
