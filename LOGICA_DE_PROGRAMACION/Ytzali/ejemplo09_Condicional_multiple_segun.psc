Proceso ejemplo09_Condicional_multiple_segun
	// Declaraci�n de variables
	Definir seleccion Como Entero
	// Inicializacion de las variables 
	seleccion <- 0
	// Presentar alternativa de eleccion en pantalla 
	Escribir 'Men� de opciones'
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
	Seg�n seleccion Hacer
		1,11:
			Escribir 'Usted eligi� las opciones del men� ingresar'
		2:
			Escribir 'Usted eligi� la men� de consultar'
		3:
			Escribir 'Usted eligi� la men� de borrar'
		4, 44:
			Escribir 'Usted eligi� las opciones del men� ACTUALIZAR'
		4:
			Escribir 'Usted eligi� la men� de actualizar'
		5:
			Escribir 'Usted eligi� la men� de reporte'
		6:
			Escribir 'Usted eligi� la men� de salir'
		De Otro Modo:
			Escribir 'Usted eligi� una opci�n del men� no valida'
	FinSeg�n
FinProceso
