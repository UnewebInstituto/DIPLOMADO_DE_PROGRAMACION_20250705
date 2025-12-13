Python 3.13.5 (tags/v3.13.5:6cb20a2, Jun 11 2025, 16:15:46) [MSC v.1943 64 bit (AMD64)] on win32
Enter "help" below or click "Help" above for more information.
class Mascota:
    #atributos de la clase
    nombre=''
    #métodos
    def comer(self)::
        
SyntaxError: invalid syntax
class Mascota:
    #atributos de la clase
    nombre=''
    #métodos
    def comer(self):
        return f'{self.nombre} come...'
    def dormir(self):
        return f'{self.nombre} duerme...'
    def darNombre(self, argNombre):
        return f'Tu mascota se llama {self.nombre}'

    
#crear un objeto
    
fido.
SyntaxError: invalid syntax
fido = Mascota()
type(fido)
<class '__main__.Mascota'>
fido.darNombre('FIDO')
'Tu mascota se llama '
class Mascota:
    #atributos de la clase
    nombre=''
    #métodos
    def comer(self):
        return f'{self.nombre} come...'
    def dormir(self):
        return f'{self.nombre} duerme...'
    def darNombre(self, argNombre):
        self.nombre = argNombre
        return f'Tu mascota se llama {self.nombre}'

    
fido = Mascota()
type(fido)
<class '__main__.Mascota'>
fido.darNombre('FIDO')
'Tu mascota se llama FIDO'
fido.comer()
'FIDO come...'
fido.dormir()
'FIDO duerme...'
class Mascota:
    #atributos de la clase
    nombre=''
    #métodos
    #constructor
    def __init__(self, argNombre):
    def darNombre(self, argNombre):
        self.nombre = argNombre
        return f'Tu mascota se llama {self.nombre}'
    def comer(self):
        return f'{self.nombre} come...'
    def dormir(self):
        return f'{self.nombre} duerme...'
    
SyntaxError: expected an indented block after function definition on line 6

class Mascota:
    #atributos de la clase
    nombre=''
    #métodos
    #constructor
    def __init__(self, argNombre):
        self.nombre = argNombre
    def comer(self):
        return f'{self.nombre} come...'
    def dormir(self):
        return f'{self.nombre} duerme...'

    
mascotaDeRicardo = Mascota('LIA')
mascotaDeAiron = Mascota('CLOI')
class Mascota:
    #atributos de la clase
    nombre=''
    #métodos
    #constructor
    def __init__(self, argNombre):
        self.nombre = argNombre
    def comer(self):
        return f'{self.nombre} come...'
    def dormir(self):
        return f'{self.nombre} duerme...'
    def getNombre(self):
        return f'La mascota se llama {self.nombre}'

    
mascotaDeRicardo = Mascota('LIA')
mascotaDeAiron = Mascota('CLOI')
mascotaDeRicardo.comer()
'LIA come...'
mascotaDeAiron.getNombre()
'La mascota se llama CLOI'
class Mascota:
    #atributos de la clase
    nombre=''
    #métodos
    #constructor
    def __init__(self, argNombre):
        self.nombre = argNombre
    def comer(self):
        return f'{self.nombre} come...'
    def dormir(self):
        return f'{self.nombre} duerme...'
    def getNombre(self):
        return f'La mascota se llama {self.nombre}'
    def sonido(self):
        return f'{self.nombre} sonido'

    
#HERENCIA: todos los atributos y métodos de la clase Padre (Superclase) pasan a la subclases
    
class Canino(Mascota):
    #atributo de la subclase Canino
    raza = ''
    #métodos de la sub clase Canino
    def setRaza(self, argRaza):
        self.raza = arg.Raza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'

    
mascotaDeRicardo = Canino('LIA')
mascotaDeRicardo.setRaza('MESTIZA')
Traceback (most recent call last):
  File "<pyshell#56>", line 1, in <module>
    mascotaDeRicardo.setRaza('MESTIZA')
  File "<pyshell#54>", line 6, in setRaza
    self.raza = arg.Raza
NameError: name 'arg' is not defined
class Canino(Mascota):
    #atributo de la subclase Canino
    raza = ''
    #métodos de la sub clase Canino
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'

    
mascotaDeRicardo = Canino('LIA')
mascotaDeRicardo.setRaza('MESTIZA')
'La raza asignada a LIA es MESTIZA'
mascotaDeRicardo.comer()
'LIA come...'
mascotaDeRicardo.dormir()
'LIA duerme...'
mascotaDeRicardo.getRaza()
'La raza de LIA es MESTIZA'
mascotaDeRicardo.pasear()
'LIA pasea...'
mascotaDeRicardo.sonido()
'LIA sonido'
class Canino(Mascota):
    #atributo de la subclase Canino
    raza = ''
    #métodos de la sub clase Canino
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'
    def sonido(self):
        return f'{self.nombre} ladra...'

    
class Canino(Mascota):
    #atributo de la subclase Felino
    raza = ''
    #métodos de la sub clase Felino
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'
    def sonido(self):
        return f'{self.nombre} maulla...'

    
class Canino(Mascota):
    #atributo de la subclase Pez
    raza = ''
    #métodos de la sub clase Pez
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'
    def sonido(self):
        return f'{self.nombre} no emite sonido...'

    
class Felino(Mascota):
    #atributo de la subclase Felino
    raza = ''
    #métodos de la sub clase Felino
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'
    def sonido(self):
        return f'{self.nombre} maulla...'

    
class Pez(Mascota):
    #atributo de la subclase Pez
    raza = ''
    #métodos de la sub clase Pez
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'
    def sonido(self):
        return f'{self.nombre} no emite sonido...'

    
mascotaDeRicardo = Canino('LIA')
mascotaDeAiron = Pez ('CLOI')
mascotaDeAaron = Felino ('FLOFY')
mascotaDeRicardo.sonido()
'LIA no emite sonido...'
class Canino(Mascota):
    #atributo de la subclase Pez
    raza = ''
    #métodos de la sub clase Pez
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'
    def sonido(self):
        return f'{self.nombre} no emite sonido...'

    
class Felino(Mascota):
    #atributo de la subclase Felino
    raza = ''
    #métodos de la sub clase Felino
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'
    def sonido(self):
        return f'{self.nombre} maulla...'

    

class Pez(Mascota):
    #atributo de la subclase Pez
    raza = ''
    #métodos de la sub clase Pez
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'
    def sonido(self):
        return f'{self.nombre} no emite sonido...'

    
mascotaDeRicardo = Canino('LIA')
mascotaDeAiron = Pez ('CLOI')
mascotaDeAaron = Felino ('FLOFY')
mascotaDeRicardo.sonido()
'LIA no emite sonido...'
class Canino(Mascota):
    #atributo de la subclase Pez
    raza = ''
    #métodos de la sub clase Pez
    def setRaza(self, argRaza):
        self.raza = argRaza
        return f'La raza asignada a {self.nombre} es {self.raza}'
    def getRaza(self):
        return f'La raza de {self.nombre} es {self.raza}'
    def pasear(self):
        return f'{self.nombre} pasea...'
    def sonido(self):
        return f'{self.nombre} ladra...'

    
mascotaDeRicardo.sonido()
'LIA no emite sonido...'
mascotaDeAaron.sonido()
'FLOFY maulla...'
#encapsulamiento
class CuentaBancaria:
    #atributos publicos
    tipoCuenta = ''
    fechaCreacion = ''
    #atributos privados
    _saldo = 0
    _titular = ''
    #métodos
    #constructor
    def __init__ abrirCuenta(self, argTipoCta, argCrea, argDepo, argTit):
        
SyntaxError: expected '('
class CuentaBancaria:
    #atributos publicos
    tipoCuenta = ''
    fechaCreacion = ''
    #atributos privados
    _saldo = 0
    _titular = ''
    #métodos
    #constructor
    def __init__(self, argTipoCta, argCrea, argDepo, argTit):
        self.tipoCuenta = argTipoCta
        self.fechaCreacion = argCrea
        self._saldo = argDepo
        self._titular = argTit

        
miCuenta = 
KeyboardInterrupt
miCuenta = CuentaBancaria ( 'AHO','2025-12-13',100,'HENRY')
miCuenta.fechaCreacion
'2025-12-13'
miCuenta.tipoCuenta
'AHO'
class CuentaBancaria:
    #atributos publicos
    tipoCuenta = ''
    fechaCreacion = ''
    #atributos privados
    _saldo = 0
    _titular = ''
    #métodos
    #constructor
    def __init__(self, argTipoCta, argCrea, argDepo, argTit):
        self.tipoCuenta = argTipoCta
        self.fechaCreacion = argCrea
        self._saldo = argDepo
        self._titular = argTit
    def setDeposito(self,argDepo):
        self._saldo += argDepo
    def getSaldo(self):
        return f'El saldo de la cuenta es {self.saldo}
    
SyntaxError: unterminated f-string literal (detected at line 18)
class CuentaBancaria:
    #atributos publicos
    tipoCuenta = ''
    fechaCreacion = ''
    #atributos privados
    _saldo = 0
    _titular = ''
    #métodos
    #constructor
    def __init__(self, argTipoCta, argCrea, argDepo, argTit):
        self.tipoCuenta = argTipoCta
        self.fechaCreacion = argCrea
        self._saldo = argDepo
        self._titular = argTit
    def setDeposito(self,argDepo):
        self._saldo += argDepo
    def getSaldo(self):
        return f'El saldo de la cuenta es {self.saldo}'
    def setTitular(self,argTit):
        self._titular = argTit
    def getTitular(self):
        return f'El nombre del titular de la cuenta es {self.nombre}'

    
miCuenta = CuentaBancaria ( 'AHO','2025-12-13',100,'HENRY')
miCuenta.fechaCreacion
'2025-12-13'
miCuenta.tipoCuenta
'AHO'
miCuenta.getTitular
<bound method CuentaBancaria.getTitular of <__main__.CuentaBancaria object at 0x0000028A08FD0440>>
class CuentaBancaria:
    #atributos publicos
    tipoCuenta = ''
    fechaCreacion = ''
    #atributos privados
    _saldo = 0
    _titular = ''
    #métodos
    #constructor
    def __init__(self, argTipoCta, argCrea, argDepo, argTit):
        self.tipoCuenta = argTipoCta
        self.fechaCreacion = argCrea
        self._saldo = argDepo
        self._titular = argTit
    def setDeposito(self,argDepo):
        self._saldo += argDepo
    def getSaldo(self):
        return f'El saldo de la cuenta es {self._saldo}'
    def setTitular(self,argTit):
        self._titular = argTit
    def getTitular(self):
        return f'El nombre del titular de la cuenta es {self._nombre}'

    
miCuenta = CuentaBancaria ( 'AHO','2025-12-13',100,'HENRY')
miCuenta.fechaCreacion
'2025-12-13'
miCuenta.tipoCuenta
'AHO'
miCuenta.getSaldo()
'El saldo de la cuenta es 100'
miCuenta.setDeposito(255)
miCuenta.getSaldo()
'El saldo de la cuenta es 355'
miCuenta.setTitular('HENRY DUQUE')
miCuenta.getTitular()
Traceback (most recent call last):
  File "<pyshell#141>", line 1, in <module>
    miCuenta.getTitular()
  File "<pyshell#133>", line 22, in getTitular
    return f'El nombre del titular de la cuenta es {self._nombre}'
AttributeError: 'CuentaBancaria' object has no attribute '_nombre'
class CuentaBancaria:
    #atributos publicos
    tipoCuenta = ''
    fechaCreacion = ''
    #atributos privados
    _saldo = 0
    _titular = ''
    #métodos
    #constructor
    def __init__(self, argTipoCta, argCrea, argDepo, argTit):
        self.tipoCuenta = argTipoCta
        self.fechaCreacion = argCrea
        self._saldo = argDepo
        self._titular = argTit
    def setDeposito(self,argDepo):
        self._saldo += argDepo
    def getSaldo(self):
        return f'El saldo de la cuenta es {self._saldo}'
    def setTitular(self,argTit):
        self._titular = argTit
    def getTitular(self):
        return f'El nombre del titular de la cuenta es {self._titular}'

    
miCuenta = CuentaBancaria ( 'AHO','2025-12-13',100,'HENRY')
miCuenta.fechaCreacion
'2025-12-13'
miCuenta.tipoCuenta
'AHO'
miCuenta.getSaldo()
'El saldo de la cuenta es 100'
miCuenta.setDeposito(255)
miCuenta.getSaldo()
'El saldo de la cuenta es 355'
miCuenta.setTitular('HENRY DUQUE')
miCuenta.getTitular()
'El nombre del titular de la cuenta es HENRY DUQUE'
#importat dependencia para conexión a postgresql
import psycopg2
conn = pyscopg2.connect(database="bd20251025_barbara",user="postgres",password="123456",host="localhost",port="5452")
Traceback (most recent call last):
  File "<pyshell#154>", line 1, in <module>
    conn = pyscopg2.connect(database="bd20251025_barbara",user="postgres",password="123456",host="localhost",port="5452")
NameError: name 'pyscopg2' is not defined. Did you mean: 'psycopg2'?
conn = psycopg2.connect(database="bd20251025_barbara",user="postgres",password="123456",host="localhost",port="5452")
Traceback (most recent call last):
  File "<pyshell#155>", line 1, in <module>
    conn = psycopg2.connect(database="bd20251025_barbara",user="postgres",password="123456",host="localhost",port="5452")
  File "C:\.Profesores\Henry_Duque\DIPLOMADO_DE_PROGRAMACION_20250705\PYTHON_NIVEL_I\barbara\.venv\Lib\site-packages\psycopg2\__init__.py", line 135, in connect
    conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
psycopg2.OperationalError: connection to server at "localhost" (::1), port 5452 failed: Connection refused (0x0000274D/10061)
	Is the server running on that host and accepting TCP/IP connections?
connection to server at "localhost" (127.0.0.1), port 5452 failed: Connection refused (0x0000274D/10061)
	Is the server running on that host and accepting TCP/IP connections?


... 
>>> conn = psycopg2.connect(database="bd20251025_barbara",user="postgres",password="123456",host="localhost",port="5432")
>>> cursor = conn.cursor()
>>> sql = "select * from proveedores"
>>> cursor.execute(sql)
>>> resultado = cursor.fetchall()
>>> for data in resultado:
...     data
... 
...     
(2, 'WHIRPOOL', 'AV. BARALT', '+58 212 4876543', 'info@whirpool.com')
(3, 'SAMSUNG', 'AV. SAN MARTIN', '+58 212 7876543', 'info@samsung.com')
(4, 'ADMIRAL', 'AV. ROMULO GALLEGOS', '+58 212 2876543', 'info@admiral.com')
