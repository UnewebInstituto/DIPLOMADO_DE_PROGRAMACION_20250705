#Solicitar número al usuario
numero = int(input("Ingrese el número de la tabla que desea visualizar: "))

#Se realiza la tabla utilizando un for
for i in range(1, 11):
    resultado = numero * i 
    print(numero, "X", i, "=", resultado)
    