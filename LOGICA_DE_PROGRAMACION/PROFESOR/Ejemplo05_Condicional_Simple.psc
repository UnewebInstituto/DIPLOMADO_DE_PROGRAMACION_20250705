Algoritmo EJEMPLO05_Condicional_Simple
	// Declaraci�n de variables
	Definir primer_nombre Como Cadena
	Definir edad Como Entero
	Definir peso Como Real
	Definir estudiante Como L�gico
	// Uso de Operador de asignaci�n
	// Inicializaci�n de variables
	primer_nombre <- 'HENRY'
	edad <- 56
	peso <- 70.5
	estudiante <- Verdadero
	// Escritura est�ndar
	Escribir 'Contenido de las variables inicializadas'
	Escribir 'PRIMER NOMBRE:', primer_nombre
	Escribir 'EDAD:', edad
	Escribir 'PESO:', peso
	Escribir '�ES ESTUDIANTE?:', estudiante
	// Lectura est�ndar
	Escribir '----------------------------'
	Escribir 'Por favor ingrese nuevos valores'
	Escribir 'NOMBRE:'
	Leer primer_nombre
	Escribir 'EDAD:'
	Leer edad
	Escribir 'PESO (Usar . para los decimales):'
	Leer peso
	Escribir '�ES ESTUDIANTE (Verdadero,Falso)?:'
	Leer estudiante
	Escribir '----------------------------'
	Escribir 'Nuevo contenido de las variables'
	Escribir 'PRIMER NOMBRE:', primer_nombre
	Escribir 'EDAD:', edad
	// Condicional simple
	Si edad<18 Entonces
		Escribir 'ATENCI�N: Es menor de edad'
	FinSi
	Escribir 'PESO:', peso
	Escribir '�ES ESTUDIANTE?:', estudiante
FinAlgoritmo
