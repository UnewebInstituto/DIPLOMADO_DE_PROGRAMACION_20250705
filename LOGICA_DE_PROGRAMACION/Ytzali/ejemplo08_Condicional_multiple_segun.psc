Proceso ejemplo08_Condicional_multiple_segun
	//Declaración de variables
	definir seleccion Como Entero
	//Inicializacion de las variables 
	seleccion <- 0
	//Presentar alternativa de eleccion en pantalla 
	escribir "Menú de opciones"
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
				escribir "Usted eligió la menú de ingresar"
			Caso 2:
				escribir "Usted eligió la menú de consultar"
			Caso 3:
				escribir "Usted eligió la menú de borrar"
			Caso 4:
				escribir "Usted eligió la menú de actualizar"
			Caso 5:
				escribir "Usted eligió la menú de reporte"
			Caso 6:
				escribir "Usted eligió la menú de salir"
			De otro modo:
				escribir "Usted eligió una opción del menú no valida"
	FinSegun
FinAlgoritmo

