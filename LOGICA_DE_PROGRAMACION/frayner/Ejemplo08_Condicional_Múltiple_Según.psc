Algoritmo EJEMPLO08_CONDICIONAL_MULTIPLE_SEGUN_
	// Declaraci�n de variables
	Definir seleccion Como Entero
	// Inicializaci�n de las variables
	seleccion <- 0
	// Presentar alternativas de elecci�n en pantalla
	Escribir 'Men� de opciones'
	Escribir '1- Ingresar'
	Escribir '2- Consultar'
	Escribir '3- Borrar'
	Escribir '4- Actualizar'
	Escribir '5- Reporte'
	Escribir '6- Salir'
	Escribir 'Por favor elegir una de las opciones sugeridas:'
	Leer seleccion
	Seg�n seleccion Hacer
		1:
			Escribir 'Usted elegi� la opci�n del men� INGRESAR'
		2:
			Escribir 'Usted elegi� la opci�n del men� CONSULTAR'
		3:
			Escribir 'Usted elegi� la opci�n del men� BORRAR'
		4:
			Escribir 'Usted elegi� la opci�n del men� ACTUALIZAR'
		5:
			Escribir 'Usted elegi� la opci�n del men� REPORTE'
		6:
			Escribir 'Usted elegi� la opci�n del men� SALIR'
		De Otro Modo:
			Escribir 'Usted elegi� una opci�n del men� NO VALIDA'
	FinSeg�n
FinAlgoritmo
