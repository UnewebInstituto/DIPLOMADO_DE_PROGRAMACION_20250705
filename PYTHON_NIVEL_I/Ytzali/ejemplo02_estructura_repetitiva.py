while True:
    print('Ejemplo02 Serie fibonacci'.center(40,'*'))
    n1 = 1
    n2 = 1
    n = 0
    contador = 2
    suma = 0
    while True:
        try:
            n = eval(input('Ingrese el numero de elementos de la serie: '))
            break
        except ValueError:
            print('Error: Debe ingresar un valor numerico')
    print(n1)
    print(n2)
    while contador < n:
        suma = n1 + n2 
        print(suma)
        n1 = n2
        n2 = suma
        contador += 1

    continuar = input('¿Desea efectuar una nueva serie (S/N):?')
    if continuar.upper() == 'S':
        continue
    else:
        print('Fin del programa...')
        break