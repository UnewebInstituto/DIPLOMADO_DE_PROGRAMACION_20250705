/**
 * Declaración de la clase
 */
class Automovil{
    // Declaración del método constructor
    constructor(arg_marca, arg_modelo){
        this.marca = arg_marca;
        this.modelo = arg_modelo;
        this.encendido = false; 
    }

    // Declaración de otros métodos
    encender(){
        this.encendido = true;
        return `El vehículo marca ${this.marca} modelo ${this.modelo} fue encendido.`;
    }

    estado(){
        // Expresión landa
        return this.encendido? 'El motor está en marcha':'El motor está apagado';
    }
}

// Se procede a crear el objeto (instancia de la clase)
const miCarro = new Automovil("CHEVROLET","VITARA 2 PUERTAS");
// Métodos de la clase
console.log(miCarro.encender());
console.log(miCarro.estado());


