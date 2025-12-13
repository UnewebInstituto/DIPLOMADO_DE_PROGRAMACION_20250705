class Gato:
    def hablar(self):
        return "Miau"

class Vaca:
    def hablar(self):
        return "Muuu"
    
def hacer_hablar(animal):
    print(animal.hablar())

hacer_hablar(Gato())
hacer_hablar(Vaca())
