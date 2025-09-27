Algoritmo Ejemplo03_lectura_y_escritura_estandar
	// Declaración de variables
	Definir primer_nombre Como Cadena
	Definir edad Como Entero
	Definir peso Como Real
	Definir estudiante Como Lógico
	// Uso de operador de asignacion
	// Inicializacion de variables
	primer_nombre <- 'Ytzali'
	edad <- 21
	peso <- 36
	estudiante <- Verdadero
	//Escritura estandar 
	Escribir "Contenido de las variables inicializadas"
	Escribir "Primer Nombre: ", primer_nombre
	Escribir "Edad: ", edad
	Escribir "Peso: ", peso
	Escribir "¿Es estudiante?: ", estudiante
	
	//Lectura estandar
	Escribir "------------------------------------------"
	Escribir "Por favor ingrese nuevos valores"
	Escribir "Nombre:"
	Leer primer_nombre
	Escribir "Edad:"
	Leer edad
	Escribir "Peso (Usar . para los decimales):"
	leer peso
	Escribir "¿Es estudiante? (Verdadero, Falso):"
	leer estudiante
	Escribir "------------------------------------------"
	Escribir "Nuevo contenido de las variables inicializadas"
	Escribir "Primer Nombre: ", primer_nombre
	Escribir "Edad: ", edad
	Escribir "Peso: ", peso
	Escribir "¿Es estudiante?: ", estudiante
	
FinAlgoritmo
