Algoritmo ejemplo06_condicional_compuesto
	// Declaraci?n de variables
	Definir primer_nombre Como Cadena
	Definir edad Como Entero
	Definir peso Como Real
	Definir estudiante Como Lógico
	Definir pregunta Como Caracter
	// Uso de operador de asignacion
	// Inicializacion de variables
	primer_nombre <- 'Barbara'
	edad <- 21
	peso <- 36
	estudiante <- Verdadero
	pregunta <- ' '
	//Escritura estandar 
	Escribir "Contenido de las variables inicializadas"
	Escribir "Primer Nombre: ", primer_nombre
	Escribir "Edad: ", edad
	Escribir "Peso: ", peso
	Escribir "?Es estudiante?: ", estudiante
	
	//Lectura estandar
	Escribir "------------------------------------------"
	Escribir "Por favor ingrese nuevos valores"
	Escribir "Nombre:"
	Leer primer_nombre
	Escribir "Edad:"
	Leer edad
	Escribir "Peso (Usar . para los decimales):"
	leer peso
	Escribir "¿Es estudiante? (S/N):"
	leer pregunta
	si pregunta = "S" o pregunta = "s" Entonces
		estudiante <- Verdadero
	SiNo
		estudiante <- Falso
	FinSi
	Escribir "------------------------------------------"
	Escribir "Nuevo contenido de las variables inicializadas"
	Escribir "Primer Nombre: ", primer_nombre
	Escribir "Edad: ", edad
	//Condicional Simple
	Si edad <18 Entonces
		escribir'Atención: Es menor de edad.'
	SiNo
		Escribir 'Es un adulto"
	FinSi
	Escribir "Peso: ", peso
	Escribir "¿Es estudiante?: ", estudiante
	
FinAlgoritmo
