from abc import ABC, abstractmethod

class Dispositivo(ABC):
    @abstractmethod
    def encender(self):
        pass

class Telefono(Dispositivo):
    def encender(self):
        return "El teléfono está encendido."

t = Telefono()
print(t.encender())
