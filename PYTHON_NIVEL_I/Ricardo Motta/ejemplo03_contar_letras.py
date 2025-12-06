# ejemplo03_contar_letras.py
# Este programa utiliza la estructura de datos diccionario
# para almacenar el numero de letras en una palabra
while True:
    # Inicializacion de variables
    palabra = ''
    #Incializacion de diccionario
    contador_letras = {}
    # Entrada de palabra
    palabra = input("Ingrese palabra:")
    # Recorrido del contenido de la variable
    for letra in palabra:
        #Asignar al indice del diccionario la cantidad de veces que la letra se repite en la palabra
        contador_letras[letra] = palabra.count(letra)
    #Resultado del programa    
    print("Cantidad de letras en la palabra:",palabra)
    print(contador_letras) 
    #Preguntar si se repite el proceso   
    continuar =input ("Desea ingresar una nueava palabra(S/N)")
    if continuar.upper() == "S":
        continue
    else:
        print("Fin del programa")
        break    