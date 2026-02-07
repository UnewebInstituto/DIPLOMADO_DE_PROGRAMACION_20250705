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

miCarro = new automovil("Pagani","Bugati");
console.log(miCarro.encender());
console.log(miCarro.estado());