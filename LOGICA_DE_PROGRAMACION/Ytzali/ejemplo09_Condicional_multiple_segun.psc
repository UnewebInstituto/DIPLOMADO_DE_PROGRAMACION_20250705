Proceso ejemplo09_Condicional_multiple_segun
	// Declaración de variables
	Definir seleccion Como Entero
	// Inicializacion de las variables 
	seleccion <- 0
	// Presentar alternativa de eleccion en pantalla 
	Escribir 'Menú de opciones'
	Escribir '1- Ingresar'
	Escribir '11 - Ingresar otra opcion'
	Escribir '2- Consultar'
	Escribir '3- Borrar'
	Escribir '4- Actualizar'
	Escribir '44- Actualizar otra opcion'
	Escribir '5- Reporte'
	Escribir '6- Salir'
	Escribir 'Por favor, elegir una de las opciones sugeridas:'
	Leer seleccion
	Según seleccion Hacer
		1,11:
			Escribir 'Usted eligió las opciones del menú ingresar'
		2:
			Escribir 'Usted eligió la menú de consultar'
		3:
			Escribir 'Usted eligió la menú de borrar'
		4, 44:
			Escribir 'Usted eligió las opciones del menú ACTUALIZAR'
		4:
			Escribir 'Usted eligió la menú de actualizar'
		5:
			Escribir 'Usted eligió la menú de reporte'
		6:
			Escribir 'Usted eligió la menú de salir'
		De Otro Modo:
			Escribir 'Usted eligió una opción del menú no valida'
	FinSegún
FinProceso
