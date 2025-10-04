Algoritmo Ejemplo08_Condicional_Múltiple_Segun
	// Declaración de variables
	Definir seleccion Como Entero
	// Inicialización de las variables
	seleccion <- 0
	// Presentar alternativas de elección en pantalla
	Escribir "Menú de opciones"
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
			Escribir "Usted elegió la opción del menú INGRESAR"
		Caso 2:
			Escribir "Usted elegió la opción del menú CONSULTAR"
		Caso 3:
			Escribir "Usted elegió la opción del menú BORRAR"
		Caso 4:
			Escribir "Usted elegió la opción del menú ACTUALIZAR"
		Caso 5:
			Escribir "Usted elegió la opción del menú REPORTE"
		Caso 6:
			Escribir "Usted elegió la opción del menú SALIR"
		De Otro Modo:
			Escribir "Usted elegió una opción del menú NO VALIDA"
	FinSegun
FinAlgoritmo
