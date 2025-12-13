class Persona:
    def __init__(self, nombre):
        self.__nombre = nombre  # Atributo encapsulado

    def obtener_nombre(self):
        return self.__nombre

p = Persona("Luis")
print(p.obtener_nombre())