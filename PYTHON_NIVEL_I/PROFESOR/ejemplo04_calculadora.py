# 1-) Declaración de dependencias, módulos o librerías
# 2-) Declaración de funciones
# 3-) Declaración de variables
# 4-) Cuerpo principal del programa

# DECLARACIÓN DE FUNCIONES
def sumar(arg_n1, arg_n2):
    return arg_n1 + arg_n2

def restar(arg_n1, arg_n2):
    return arg_n1 - arg_n2

def multiplicar(arg_n1, arg_n2):
    return arg_n1 * arg_n2

def dividir(arg_n1, arg_n2):
    if arg_n2 == 0:
        return 'ERROR DIVISIÓN POR CERO'
    else:
        return arg_n1 / arg_n2

# DECLARACIÓN DE VARIABLES
mensaje = ''
n1 = 0
n2 = 0
resultado = 0
operacion = ''
continuar = ''

# CUERPO PRINCIPAL DEL PROGRAMA

while True:
    print("CALCULADORA BÁSICA".center(60,"-"))
    while True:
        try:
            n1 = float(input("1er. NÚMERO:"))
            break
        except ValueError:
            print("ERROR: Por favor ingrese un número.")
    while True:
        try:
            n2 = float(input("2do. NÚMERO:"))
            break
        except ValueError:
            print("ERROR: Por favor ingrese un número")
    while True:
        operacion = input("INGRESE OPERACIÓN A EFECTUAR +, -, *, /:")
        if operacion in ('+','-','*','/'):
            break
        else:
            print("ERROR: Por favor ingrese una operación permitida +, -, *, /")
    match operacion:
        case '+':
            resultado = sumar(n1, n2)
        case '-':
            resultado = restar(n1, n2)
        case '*':
            resultado = multiplicar(n1, n2)
        case '/':
            resultado = dividir(n1, n2)
    #mensaje = 'El resultado de '+str(n1) + operacion + str(n2) + ' es igual a: '+ str(resultado)
    mensaje = f'El resultado de {n1} {operacion} {n2} es igual a {resultado}'
    print(mensaje)
    continuar = input("¿Usted desea efectuar una nnueva operación (S/N)?")
    if continuar.upper() == "S":
        continue
    else:
        print("FIN DEL PROGRAMA...")
        break