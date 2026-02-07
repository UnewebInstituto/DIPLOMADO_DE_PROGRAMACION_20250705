/**
 * Declaracion de la clase PADRE o super clase
 */
class Automovil{
  //Declaracion del metodo constructor 
  constructor(arg_marca, arg_modelo){
    this.marca = arg_marca;
    this.modelo = arg_modelo;
    this.encendido = false;
  }

  //Declarcion de otros metodos
  encender() {
    this.encendido = true;
    return `El vehiculo marca ${this.marca} modelo ${this.modelo} fue encendido.`;
  }

  estado(){
    //Expresion landa
    return this.encendido? 'El motor esta en marcha': 'El motor esta apagado';
  }
}

/**
 * Declaración de subclase
 */

class Bicicleta extends Automovil{
    // Se redefine el atributo constructor
    constructor(marca, modelo, tipo){
        // Se asigna los atributos del constructor
        // de la clase Padre
        super(marca,modelo);
        // Se asigna el valor al atributo de la sub clase
        this.tipo = tipo;
    }
    // Aplicación de polimorfismo (un método pre existente
    // en la clase padre se modifica en la sub clase. Su 
    // nombre es el mismo, pero varía en sus operaciones)
    estado(){
      return `La bicicleta marca ${this.marca} es de tipo ${this.tipo}`;
    }
}

//Se procede a crear el objeto (instancia de la clase)
const miBicicleta = new Bicicleta('Trek','FX','Hibrida');

console.log(miBicicleta.encender());
console.log(miBicicleta.estado());







