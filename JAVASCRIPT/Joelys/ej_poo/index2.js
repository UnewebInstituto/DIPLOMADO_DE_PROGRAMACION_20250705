//Declaracion de la clase padre
class Automovil {
 //declaracion del metodo constructor
  constructor(arg_marca, arg_modelo) {
    this.marca = arg_marca;
    this.modelo = arg_modelo;
    this.encendido = false;
  }
  //declaracion de otros metodos
  encender() {
    this.encendido = true;
    return `El vehiculo ${this.marca} modelo ${this.modelo} fue encendido`;
  }
  estado() {
    //expresion landa
    return this.encendido? 'El motor esta en marcha':'El motor esta apagado';
  }
}

//Se procede a crear el objecto (instancia de la clase) 
miCarro = new Automovil("Chevrolet", "Vitara 2 puertas");
console.log(miCarro.encender());
console.log(miCarro.estado());

//Declaracion de subclase
class Bicicleta extends Automovil {
  constructor(marca,modelo,tipo) {
    // Se asigna los atributos de la clase padre
    super(marca,modelo);
    //Se asigna el atributo de la subclase
    this.tipo = tipo;
  }

  //Aplicacion de Polymorphismo (un metodo preexistencete en la calse padre, se modifica en la subclas) Su nombre es el mismo pero varia en sus operaciones. 
  estado() {
    return `La bicicleta marca  ${this.marca} es de tipo  ${this.tipo}`;
  }

}

//Se procede a crear la instancia de la clase
const miBicicleta = new Bicicleta('Trek', 'Fx', 'Hybrida');

console.log(miBicicleta.encender());
console.log(miBicicleta.estado());