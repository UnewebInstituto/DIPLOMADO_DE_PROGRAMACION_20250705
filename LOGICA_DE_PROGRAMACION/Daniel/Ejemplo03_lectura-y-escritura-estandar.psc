Algoritmo Ejemplo03_lectura_y_escritura_estandar
	//Declaracion de variables
	definir primer_nombre Como Caracter
	definir edad Como Entero
	definir peso Como Real
	definir estudiante Como Logico
	//Uso de operador de asignacion 
	//Inicializacion de variables
	primer_nombre <- 'Daniel'
	edad  <- 36
	peso <- 74
	estudiante <- Verdadero
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
	Escribir "¿ES ESTUDIANTE (Verdadero, falso)?:"
	leer estudiante
	Escribir "-----------------------------"
	Escribir "Nuevo contenido de las variables"
	Escribir "PRIMER NOMBRE:", primer_nombre
	Escribir "EDAD", edad
	Escribir "PESO", peso
	Escribir "¿ ES ESTUDIANTE?:", estudiante
	
FinAlgoritmo

