#ejemplo03_contarletras
#Esteprograma utiliza la estructura de datos diccionario para almacenar el número de letras en una palabra

while True:
    #Inicialización de Variables
    palabra = ""

    #Inicialización de Diccionario
    contador_letras = {}

    #Entrada de la Palabra
    palabra = input("Ingrese una palabra: ")

    #Recorrido del contenido de la Variable
    for letra in palabra:

        #Asignar al Índice del Diccionario la Cantidad de veces que la Letra se Repite en la Palabra
        contador_letras[letra] = palabra.count(letra)

    #Resultado del Programa
    print("Cantidad de letras en la palabra:",palabra)
    print(contador_letras)
    
    #Preguntar si se quiere repetir el proceso
    continuar = input("Desea ingresar una nueva palabra (S/N): ")
    if continuar.upper()== "S":
        continue
    else:
        print("Fin del programa...")
        break