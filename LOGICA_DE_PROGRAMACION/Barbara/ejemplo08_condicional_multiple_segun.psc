Algoritmo ejemplo08_condicional_multiple_segun
	//Declaraci�n de variables
	Definir opcion Como Entero
	//Inicializaci�n de las varibles
	seleccion <- 0
	//Presentar alternativa de elecci�n en pantalla
	Escribir "Men� de opciones"
	Escribir "1- Ingresar"
	Escribir "2- Consultar"
	Escribir "3- Borrar"
	Escribir "4- Actualizar"
	Escribir "5- Reporte"
	Escribir "6- Salir"
	Escribir "Por favor elegir una de las opciones sugeridas:"
	Leer seleccion
	Segun seleccion Hacer
		Caso 1:
			Escribir "Usted eligi� la opci�n del men� INGRESAR"
		Caso 2:
			Escribir "Usted eligi� la opci�n del men� CONSULTAR"
		Caso 3:
			Escribir "Usted eligi� la opci�n del men� BORRAR"
		Caso 4:
			Escribir "Usted eligi� la opci�n del men� ACTUALIZAR"
		Caso 5:
			Escribir "Usted eligi� la opci�n del men� REPORTE"
		Caso 6:
			Escribir "Usted eligi� la opci�n del men� SALIR"
		De Otro Modo:
			Escribir "Usted eligi� la opci�n del men� NO V�LIDA"
	FinSegun
FinAlgoritmo
