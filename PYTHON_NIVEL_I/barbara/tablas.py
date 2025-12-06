def tabla_multiplicar(numero):
    print(f"\nTabla del {numero}")
    for i in range(11):
        print(f"{numero} x {i} = {numero * i}")

while True:
    print("\n--- MENÚ ---")
    print("1. Ver una tabla")
    print("2. Ver todas las tablas")
    print("0. Salir")

    opcion = int(input("Elija una opción: "))
    if opcion == 0:
        print("Programa terminado.")
        break
    elif opcion == 1:
        numero = int(input("¿Qué número quieres? "))
        tabla_multiplicar(numero)
    elif opcion == 2:
        for n in range(1, 11):
            tabla_multiplicar(n)
    else:
        print("Opción inválida. ")