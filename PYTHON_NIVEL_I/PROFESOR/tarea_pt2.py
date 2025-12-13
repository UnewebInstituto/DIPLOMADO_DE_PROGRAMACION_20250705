# Nombre del archivo plano
archivo = "personas.txt"

# Captura de datos
nombre = input("Ingrese el nombre: ")
apellido = input("Ingrese el apellido: ")
edad = input("Ingrese la edad: ")
sexo = input("Ingrese el sexo: ")

# Guardar datos en archivo plano
with open(archivo, "a", encoding="utf-8") as f:
    f.write(f"{nombre},{apellido},{edad},{sexo}\n")

print("Datos guardados correctamente.")
