Algoritmo ejemplo08_Condicional_Multiple_Segun
	// Declaraicion de Variables
	Definir seleccion Como Entero
	// Inicializacion de las variables
	seleccion <- 0
	// Presentar alternativas de eleccion en pantalla
	Escribir 'Men� de Opciones'
	Escribir '1-Ingresar'
	Escribir '11- Ingresar otra opci�n'
	Escribir '2-Consultar'
	Escribir '3-Borrar'
	Escribir '4-Actualizar'
	Escribir '44- Actualizar otra opci�n'
	Escribir '5-Reporte'
	Escribir '6-Salida'
	Escribir 'Por favor, elegir una de las opciones sugeridas:'
	Leer seleccion
	Seg�n seleccion Hacer
		1, 11:
			Escribir 'Usted eligi� la opci�n del men� INGRESAR'
		2:
			Escribir 'Usted eligi� la opci�n del men� CONSULTAR'
		3:
			Escribir 'Usted eligi� la opci�n del men� BORRAR'
		4, 44:
			Escribir 'Usted eligi� la opci�n del men� ACTUALIZAR'
		5:
			Escribir 'Usted eligi� la opci�n del men� REPORTE'
		6:
			Escribir 'Usted eligi� la opci�n del men� SALIR'
		De Otro Modo:
			Escribir 'Usted eligi� la opci�n del men� NO V�LIDA'
	FinSeg�n
FinAlgoritmo
