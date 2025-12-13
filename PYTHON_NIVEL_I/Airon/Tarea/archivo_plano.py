nombre = input("Nombre: ")
apellido = input("Apellido: ")
edad = input("Edad: ")
sexo = input("Sexo: ")

with open("datos_persona.txt", "a") as archivo:
    archivo.write(f"{nombre}, {apellido}, {edad}, {sexo}\n")

print("Datos guardados correctamente.")
