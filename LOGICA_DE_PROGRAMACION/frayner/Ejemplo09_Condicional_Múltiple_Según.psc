Algoritmo EJEMPLO09_CONDICIONAL_MULTIPLE_SEGUN_
	// Declaración de variables
	Definir seleccion Como Entero
	// Inicialización de las variables
	seleccion <- 0
	// Presentar alternativas de elección en pantalla
	Escribir 'Menú de opciones'
	Escribir '1- Ingresar'
	Escribir '11- ingresar otra opcion'
	Escribir '2- Consultar'
	Escribir '3- Borrar'
	Escribir '4- Actualizar'
	Escribir '44- actualizar otra opcion'
	Escribir '5- Reporte'
	Escribir '6- Salir'
	Escribir 'Por favor elegir una de las opciones sugeridas:'
	Leer seleccion
	Según seleccion Hacer
		1,11:
			Escribir 'Usted elegió la opción del menú INGRESAR'
		2:
			Escribir 'Usted elegió la opción del menú CONSULTAR'
		3:
			Escribir 'Usted elegió la opción del menú BORRAR'
		4,44:
			Escribir 'Usted elegió la opción del menú ACTUALIZAR'
		5:
			Escribir 'Usted elegió la opción del menú REPORTE'
		6:
			Escribir 'Usted elegió la opción del menú SALIR'
		De Otro Modo:
			Escribir 'Usted elegió una opción del menú NO VALIDA'
	FinSegún
FinAlgoritmo
