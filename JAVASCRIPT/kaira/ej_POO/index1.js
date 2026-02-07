class cuentaBancaria{
    nombre ='';
    apellido = '';
    correo_electronico = '';

    #saldo = 0;

    constructor(montoinicial){
        this.#saldo = montoinicial;
    }

    depositar(monto){
        if (monto > 0){
            this.#saldo += monto;
            return `es deposito ${monto} a la cuenta`;
        } else{
            return `error al efectuer el deposito.`;
        }

    }
    verSaldo(){
        return `el saldo de la cuenta es ${this.#saldo}`;
    }
 }

miCuentaBancaria = new cuentaBancaria(1);

miCuentaBancaria.nombre = 'Kaira';
miCuentaBancaria.apellido = 'Acuña';
miCuentaBancaria.correo_electronico = 'kaira0779@gmail.com';

console.log(miCuentaBancaria.depositar(1000));
console.log(miCuentaBancaria.verSaldo());

