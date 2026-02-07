class automovil{

    constructor(arg_maraca, arg_modelo){
        this.marca = arg_maraca;
        this.modelo = arg_modelo;
        this.encendido = false;
    }

    encender(){
        this.encendido = true;
        return `el vehiculo marca ${this.marca} modelo ${this.modelo} fue encendido.`;
    }

    estado(){
        return this.encendido? 'el motor esta en marcha':'el motor esta apagado';
    }

}

class bicicleta extends automovil{
    constructor(marca, modelo, tipo){
        super(marca,modelo);
        this.tipo = tipo;
    }

    estado(){
        return `la bicicleta maraca ${this.marca} es de tipo ${this.tipo}.`;
    }
    

}

const miBicicleta = new bicicleta('trek','fx','hibrida');

console.log(miBicicleta.encender());
console.log(miBicicleta.estado());
