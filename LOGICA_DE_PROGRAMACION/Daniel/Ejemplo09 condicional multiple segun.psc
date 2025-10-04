Algoritmo EJEMPLO09_CONDICIONAL_MULTIPLE_SEGUN
	// Declaracion de variables
	Definir seleccion Como Entero
	// Inicializacion de las variables
	seleccion <- 0
	// Presentar alternativas de elecci?n en pantalla
	Escribir 'Menu de opciones'
	Escribir '1- Ingresar'
	Escribir '11- Ingresar otra opcion'
	Escribir '2- Consultar'
	Escribir '3- Borrar'
	Escribir '4- Actualizar'
	Escribir '44- Actualizar otra opcion'
	Escribir '5- Reporte'
	Escribir '6- Salir'
	Escribir 'Por favor elegir una de las opciones sugeridas:'
	Leer seleccion
	Segun seleccion Hacer
		1, 11:
			Escribir 'Usted elegio las opciones del menu INGRESAR'
		2:
			Escribir 'Usted elegio las opciones del menu CONSULTAR'
		3:
			Escribir 'Usted elegio las opciones del menu BORRAR'
		4, 44:
			Escribir 'Usted elegio las opciones del menu ACTUALIZAR'
		5:
			Escribir 'Usted elegio las opciones del menu REPORTE'
		6:
			Escribir 'Usted elegio las opciones del menu SALIR'
		De Otro Modo:
			Escribir 'Usted elegio las opciones del menu NO VALIDA'
	FinSegun
FinAlgoritmo