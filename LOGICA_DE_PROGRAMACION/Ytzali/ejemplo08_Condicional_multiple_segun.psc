Proceso ejemplo08_Condicional_multiple_segun
	//Declaraci�n de variables
	definir seleccion Como Entero
	//Inicializacion de las variables 
	seleccion <- 0
	//Presentar alternativa de eleccion en pantalla 
	escribir "Men� de opciones"
	escribir "1- Ingresar"
	escribir "2- Consultar"
	escribir "3- Borrar"
	escribir "4- Actualizar"
	escribir "5- Reporte"
	escribir "6- Salir"
	escribir "Por favor, elegir una de las opciones sugeridas:"
	leer seleccion
	segun seleccion Hacer
			Caso 1:
				escribir "Usted eligi� la men� de ingresar"
			Caso 2:
				escribir "Usted eligi� la men� de consultar"
			Caso 3:
				escribir "Usted eligi� la men� de borrar"
			Caso 4:
				escribir "Usted eligi� la men� de actualizar"
			Caso 5:
				escribir "Usted eligi� la men� de reporte"
			Caso 6:
				escribir "Usted eligi� la men� de salir"
			De otro modo:
				escribir "Usted eligi� una opci�n del men� no valida"
	FinSegun
FinAlgoritmo

