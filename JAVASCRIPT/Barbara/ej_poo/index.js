/**
 * Declaracion de la clase
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

//Se procede a crear el objeto (instancia de la clase)

miCarro = new Automovil("CHEVROLET", "VITARA 2 PUERTAS");
//Metodos de la clase
console.log(miCarro.encender());
console.log(miCarro.estado());
