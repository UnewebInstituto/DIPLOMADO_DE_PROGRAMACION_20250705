Algoritmo ejemplo09_condicional_multiple_segun
	// Declaración de variables
	Definir opcion Como Entero
	// Inicialización de las varibles
	seleccion <- 0
	// Presentar alternativa de elección en pantalla
	Escribir 'Menú de opciones'
	Escribir '1- Ingresar'
	Escribir '11- Ingresar otra opción'
	Escribir '2- Consultar'
	Escribir '3- Borrar'
	Escribir '4- Actualizar'
	Escribir '44- Actualizar otra opción'
	Escribir '5- Reporte'
	Escribir '6- Salir'
	Escribir 'Por favor elegir una de las opciones sugeridas:'
	Leer seleccion
	Según seleccion Hacer
		1, 11:
			Escribir 'Usted eligió la opción del menú INGRESAR'
		2:
			Escribir 'Usted eligió la opción del menú CONSULTAR'
		3:
			Escribir 'Usted eligió la opción del menú BORRAR'
		4, 44:
			Escribir 'Usted eligió la opción del menú ACTUALIZAR'
		5:
			Escribir 'Usted eligió la opción del menú REPORTE'
		6:
			Escribir 'Usted eligió la opción del menú SALIR'
		De Otro Modo:
			Escribir 'Usted eligió la opción del menú NO VÁLIDA'
	FinSegún
FinAlgoritmo
