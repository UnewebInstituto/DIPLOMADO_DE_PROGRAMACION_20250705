#ejemplo03_contarletras.py
#Este programa utiliza la estructura de datos diccionario
#para almacenar el numero de letras de una palabra 

while True:
    #Inicializacion de variables
    palabra = ""
    #Inicializacion de Diccionario
    contador_letras = {}
    #Entrada de palabra
    palabra = input("Ingrese palabra:")
    #Recorrido del contenido de la variable
    for letra in palabra:
        #asignar al indice del diccionario la cantidad de veces que la letra se repite en la palabra
        contador_letras[letra] = palabra.count(letra)
    #generamos el resultado de l programa
    print("cantidad de letras en la palabra", palabra)
    print(contador_letras)

    #Preguntar si quieres repetir el proceso
    continuar = input("¿Desea ingresar una nueva palabra? (S/N)")
    if continuar.upper() == "S":
        continue
    else:
        print("fin del programa")
        break