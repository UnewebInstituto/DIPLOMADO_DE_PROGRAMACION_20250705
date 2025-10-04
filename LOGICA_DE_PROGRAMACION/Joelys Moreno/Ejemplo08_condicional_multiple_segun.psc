Algoritmo Ejemplo08_condicional_multiple_segun
	// Declaracion de Variables
	Definir opcion Como Entero
	// inicializacion de las variables
	seleccion <- 0
	// presentar alternativas de eleccion en pantalla
	Escribir 'Menu de opciones'
	Escribir '1- Ingresar'
	Escribir '2- Consultar'
	Escribir '3- Borrar'
	Escribir '4- Actualizar'
	Escribir '5- Reporte'
	Escribir '6- Salir'
	Escribir 'Por favor elegir una de las opciones sugeridas'
	Leer seleccion
	Según seleccion Hacer
		1:
			Escribir 'Usted eligio la opcion de menu Ingresar.'
		2:
			Escribir 'Usted eligio la opcion del menu Consultar'
		3:
			Escribir 'Usted eligio la opcion del menu Borrar'
		4:
			Escribir 'Usted eligio la opcion del menu Actualizar'
		5:
			Escribir 'Usted eligio la opcion del menu Reporte'
		6:
			Escribir 'Usted eligio la opcion del menu Salir'
		De Otro Modo:
			Escribir 'Usted eligio una opcion del menu no valida.'
	FinSegún
FinAlgoritmo
