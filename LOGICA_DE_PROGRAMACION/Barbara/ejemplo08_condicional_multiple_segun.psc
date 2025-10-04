Algoritmo ejemplo08_condicional_multiple_segun
	//Declaración de variables
	Definir opcion Como Entero
	//Inicialización de las varibles
	seleccion <- 0
	//Presentar alternativa de elección en pantalla
	Escribir "Menú de opciones"
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
			Escribir "Usted eligió la opción del menú INGRESAR"
		Caso 2:
			Escribir "Usted eligió la opción del menú CONSULTAR"
		Caso 3:
			Escribir "Usted eligió la opción del menú BORRAR"
		Caso 4:
			Escribir "Usted eligió la opción del menú ACTUALIZAR"
		Caso 5:
			Escribir "Usted eligió la opción del menú REPORTE"
		Caso 6:
			Escribir "Usted eligió la opción del menú SALIR"
		De Otro Modo:
			Escribir "Usted eligió la opción del menú NO VÁLIDA"
	FinSegun
FinAlgoritmo
