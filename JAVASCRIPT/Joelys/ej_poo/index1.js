class CuentaBancaria {
  //Declaracion de Atributos
  //public
    nombre = '';
    apellido = '';
    correo_electronico = '';
    //private
    #saldo = 0; 
  //Declaracion de Metodos
    constructor(montoInicial) {
      this.#saldo = montoInicial;
    }
    depositar(monto) {
      if (monto > 0) {
        this.#saldo += monto;
        return `Se deposito ${monto} cuenta`
      } else { 
        return `Error al efectuar el deposito`
      }
    }
    verSaldo() {
      return `El saldo de la cuenta es ${this.#saldo}`;
    }
}

//Instancia de la clase

const miCuentaBancaria = new CuentaBancaria(1);

/**Al tratarse de atributos pblivod se puede acceder directamente a traves del objeto */

miCuentaBancaria.nombre = 'Joelys';
miCuentaBancaria.apellido = 'Moreno';
miCuentaBancaria.correo_electronico = 'liunyenelya@gmail.com'
console.log(miCuentaBancaria.depositar(1000));
console.log(miCuentaBancaria.verSaldo());
