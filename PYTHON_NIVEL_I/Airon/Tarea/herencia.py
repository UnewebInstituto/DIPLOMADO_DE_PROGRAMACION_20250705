class Animal:
    def hablar(self):
        return "Sonido génerico"

class Perro(Animal):
    def hablar(self):
        return "Guau!"
    
perro = Perro()
print(perro.hablar())