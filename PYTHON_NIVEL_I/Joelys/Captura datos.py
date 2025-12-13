# 1. Definición de la Clase usando POO
class Persona:
    """
    Representa una persona con sus atributos básicos.
    """
    def __init__(self, nombre, apellido, edad, sexo):
        # Inicializador (Constructor)
        self.nombre = nombre
        self.apellido = apellido
        self.edad = edad
        self.sexo = sexo

    def obtener_datos_formato_plano(self):
        """
        Retorna los datos de la persona en una cadena de texto lista para guardar.
        Usaremos el pipe (|) como separador.
        """
        return f"{self.nombre}|{self.apellido}|{self.edad}|{self.sexo}\n"

def capturar_datos():
    """
    Captura los datos de la persona mediante entrada de usuario.
    """
    print("\n--- Captura de Datos de la Persona ---")
    
    # Captura de datos
    nombre = input("Ingrese el Nombre: ").strip().capitalize()
    apellido = input("Ingrese el Apellido: ").strip().capitalize()
    
    # Validación simple de Edad
    while True:
        try:
            edad = int(input("Ingrese la Edad: "))
            if edad < 0 or edad > 120:
                print("Edad inválida. Debe ser un número entre 0 y 120.")
                continue
            break
        except ValueError:
            print("Entrada inválida. Por favor, ingrese un número para la edad.")

    # Validación simple de Sexo
    while True:
        sexo = input("Ingrese el Sexo (M/F/Otro): ").strip().upper()
        if sexo in ('M', 'F', 'OTRO'):
            break
        print("Opción de sexo inválida. Use M, F u Otro.")
        
    # Crear una instancia (Objeto) de la clase Persona
    nueva_persona = Persona(nombre, apellido, edad, sexo)
    
    return nueva_persona

def guardar_en_archivo(persona_objeto, nombre_archivo="datos_personas.txt"):
    """
    Almacena los datos de la persona en el archivo plano.
    Abre el archivo en modo 'a' (append) para añadir al final.
    """
    datos_plano = persona_objeto.obtener_datos_formato_plano()
    
    try:
        # 'a' abre el archivo para añadir, si no existe, lo crea.
        with open(nombre_archivo, 'a') as archivo:
            archivo.write(datos_plano)
        
        print(f"\n✅ Datos de {persona_objeto.nombre} guardados exitosamente en '{nombre_archivo}'.")
        
    except IOError as e:
        print(f"\n❌ Error al escribir en el archivo: {e}")

# --- Ejecución del Programa Principal ---
if __name__ == "__main__":
    
    # 1. Capturar los datos y crear el objeto Persona
    persona_a_guardar = capturar_datos()
    
    # 2. Guardar el objeto en el archivo plano
    guardar_en_archivo(persona_a_guardar)
    
    # Puedes verificar el contenido del archivo si quieres:
    # print("\n--- Contenido actual del archivo ---")
    # try:
    #     with open("datos_personas.txt", 'r') as archivo:
    #         print(archivo.read())
    # except FileNotFoundError:
    #     print("El archivo aún no existe.")
