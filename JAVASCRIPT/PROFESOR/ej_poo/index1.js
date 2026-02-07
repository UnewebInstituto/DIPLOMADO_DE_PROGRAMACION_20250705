class CuentaBancaria{
    // Declaración de atributos
    // public
    nombre = '';
    apellido = '';
    correo_electronico = '';
    // private (se antepone #)
    #saldo = 0;

    // Declaración de metodos
    constructor(montoinicial){
        this.#saldo = montoinicial;
    }

    depositar(monto){
        if (monto>0){
            this.#saldo += monto;
            return `Se depositó ${monto} en la cuenta`;
        }else{
            return `Error al efectuar el deposito.`;
        }
    }

    verSaldo(){
        return `El saldo de la cuenta es ${this.#saldo}`;
    }
}

// Instancia de la clase
const miCuentaBancaria = new CuentaBancaria(1);
/**
 * Al tratarse de atributos públicos, se puede acceder directamente a través del objeto
 */
miCuentaBancaria.nombre = 'HENRY';
miCuentaBancaria.apellido = 'DUQUE';
miCuentaBancaria.correo_electronico = 'hduqueuneweb@gmail.com';
console.log(miCuentaBancaria.depositar(1000));
console.log(miCuentaBancaria.verSaldo());

 



