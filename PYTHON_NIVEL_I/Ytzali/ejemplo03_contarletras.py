 # ejemplo03_contarletas.py
#Este programa utiliza la estrcutura de datos "Diccionario" para almacenar el 
#el número de letras en una palabra

while True: 
    #Inicialización de variables
    palabra = ""
    #Inicialización de variables
    contador_letras = {}    
    #Entrada de palabra
    palabra = input("Ingrese palabra:")
    #Recorrido del contenido de la variable
    for letra in palabra: 
        #Asignar al índice del diccionario, la cantidad de veces que la letra
        # se repite en la palabra 
        contador_letras[letra] = palabra.count(letra)
    #Resultado del programa
    print ("Cantidad de letras en la palabra:", palabra)
    print(contador_letras)
    #Preguntar si se quiere repetir el proceso
    continuar = input("¿Desea ingresar una nueva palabra (S/N)?")
    if continuar.upper() == "S":
        continue
    else: 
        print("Fin del programa")
        break




