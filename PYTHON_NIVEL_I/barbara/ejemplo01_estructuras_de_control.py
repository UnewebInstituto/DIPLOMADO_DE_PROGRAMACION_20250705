#Ejemplo01 Estructuras de control, caso condicionales
#Declaración de una dependencia
import math #necesario para usar funciones matemáticas
while True:
    print(' Ejemplo01 - Resolvente '.center(40,'*'))
    a = 0
    b = 0
    c = 0
    x1 = 0
    x2 = 0
    subRadical = 0
    mensaje = ''
    while True:
        try:
            a = float(input('Ingrese el valor de a:'))
            break
        except ValueError:
            print('Error: Debe ingresar un valor numérico')
    if a == 0:
        mensaje = 'Error: Valor de a, debe ser diferente de 0'
        print(mensaje)
    else:
        while True:
            try:
                b = float(input('Ingrese el valor de b:'))
                break
            except ValueError:
                print('Error: Debe ingresar un valor numérico')
        while True:
            try:
                c = float(input('Ingrese el valor de c:'))
                break
            except ValueError:
                print('Error: Debe ingresar un valor numérico')
        subRadical = math.pow(b,2) - 4 * a * c
        if subRadical < 0:
            mensaje = 'Error: Expresión sub radical, no puede ser negativa'
            print(mensaje)
        else:
            x1 = (-b + math.sqrt(subRadical))/2*a
            x2 = (-b - math.sqrt(subRadical))/2*a
            mensaje = 'x1:'+str(x1)+ ' ,x2:'+str(x2)
            print("Formato 1:")
            print(mensaje)
            print("Formato 2:")
            print('x1:%.4f'%x1, 'x2:%.4f'%x2)
            print("Formato 3:")
            print('x1:%.6f'%x1, 'x2:%.6f'%x2)
            print("Formato 4:")
            print('x1:%.6f, x2:%.6f'%(x1,x2))
            print("Formato 5:")
            print('x1:{}, x2:{}'.format(x1,x2))
            print("Formato 6:")
            print(f'x1:{x1:.6f}, x2:{x2:.6f}')

        #print(mensaje)
        continuar = input('¿Desea efectuar un nuevo cálculo (S/N):?')
        if continuar.upper() == 'S':
            continue
        else:
            print('Fin del programa...')
            break
