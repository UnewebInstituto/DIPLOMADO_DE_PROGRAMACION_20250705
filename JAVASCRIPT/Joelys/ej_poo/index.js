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
const miCarro = new Automovil("Chevrolet", "Vitara 2 puertas");
console.log(miCarro.encender());
console.log(miCarro.estado());