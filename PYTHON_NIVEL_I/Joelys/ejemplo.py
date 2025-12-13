# Definición de la Superclase (Clase Padre)
class Animal:
    """Clase base para todos los animales."""
    def __init__(self, nombre, edad):
        # Encapsulamiento: El guion bajo simple _indica que la variable es
        # para uso interno (convención, no estricta como en otros lenguajes)
        self._nombre = nombre
        self._edad = edad

    def comer(self):
        """Método común para todos los animales."""
        print(f"{self._nombre} está comiendo.")

    def hacer_sonido(self):
        """Método abstracto que será sobrescrito (Polimorfismo)."""
        raise NotImplementedError("Las subclases deben implementar este método.")

    def get_nombre(self):
        """Método 'getter' para acceder al nombre (Encapsulamiento)."""
        return self._nombre

# Definición de la Subclase (Clase Hija)
class Perro(Animal):
    """Clase que hereda de Animal."""
    def __init__(self, nombre, edad, raza):
        # Herencia: Llama al constructor de la clase padre
        super().__init__(nombre, edad)
        self.raza = raza

    # Polimorfismo: Sobrescribe el método de la clase padre
    def hacer_sonido(self):
        print(f"{self._nombre} dice: ¡Guau guau!")

    def info_perro(self):
        print(f"Soy un {self.raza} llamado {self._nombre} y tengo {self._edad} años.")

# --- Uso de los objetos ---

# 1. Crear una instancia de Perro
mi_perro = Perro("Fido", 5, "Labrador")

# 2. Uso de métodos heredados y propios
print(f"El perro se llama: {mi_perro.get_nombre()}")  # Uso de getter (Encapsulamiento)
mi_perro.comer()                                     # Método heredado de Animal
mi_perro.info_perro()                                # Método propio de Perro
mi_perro.hacer_sonido()                              # Polimorfismo (llama a la versión de Perro)
