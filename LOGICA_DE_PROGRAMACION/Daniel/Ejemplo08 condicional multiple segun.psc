Algoritmo Ejemplo08_Condicional_Multiple_Segun
	// Declaraci?n de variables
	Definir seleccion Como Entero
	// Inicializaci?n de las variables
	seleccion <- 0
	// Presentar alternativas de elecci?n en pantalla
	Escribir "Menu de opciones"
	Escribir "1- Ingresar"
	Escribir "2- Consultar"
	Escribir "3- Borrar"
	Escribir "4- Actualizar"
	Escribir "5- Reporte"
	Escribir "6- Salir"
	Escribir "Por favor elegir una de las opciones sugeridas:"
	leer seleccion
	Segun seleccion Hacer
		Caso 1:
			Escribir "Usted elegio la opcion del menu INGRESAR"
		Caso 2:
			Escribir "Usted elegio la opcion del menu CONSULTAR"
		Caso 3:
			Escribir "Usted elegio la opcion del menu BORRAR"
		Caso 4:
			Escribir "Usted elegio la opcion del menu ACTUALIZAR"
		Caso 5:
			Escribir "Usted elegio la opcion del menu REPORTE"
		Caso 6:
			Escribir "Usted elegio la opcion del menu SALIR"
		De Otro Modo:
			Escribir "Usted elegio la opcion del menu NO VALIDA"
	FinSegun
FinAlgoritmo