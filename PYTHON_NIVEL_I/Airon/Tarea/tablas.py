while True:
    numero = int(input("Ingrese el número de la tabla que desea visualizar: "))
    print("\nTabla del", numero)
    for i in range(1, 11):
        resultado = numero * i 
        print(numero, "X", i, "=", resultado)
    continuar = input("\n¿Desea visualizar otra tabla de multiplicar (S/N)? ")
    if continuar.upper()== "S":
        continue
    else:
        print("Fin del programa...")
        break