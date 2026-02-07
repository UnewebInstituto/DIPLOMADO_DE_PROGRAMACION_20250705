class CuentaBancaria{
  //declaración de atributos
  //public
  nombre = '';
  apellido = '';
  correo_electronico = '';
  //private (se antepone el #)
  #saldo = 0;

  //declaración de métodos
  constructor(montoinicial){
    this.#saldo = montoinicial;
  }

  depositar(monto){
    if (monto>0){
      this.#saldo += monto;
      return `Se depositó ${monto} en la cuenta`;
    }else{
      return `Error al efectuar el depósito.`;
    }
  }

  verSaldo(){
    return `El saldo de la cuenta es ${this.#saldo}`;
  }
}

//instancia dela clase
miCuentaBancaria = new CuentaBancaria(1);

/**
 * al tratarse de atributos públicos, se puede acceder directamente a traves del objeto.
 */

miCuentaBancaria.nombre = 'BARBARA';
miCuentaBancaria.apellido = 'VILLASMIL';
miCuentaBancaria.correo_electronico = 'bvillasmil2704@gmail.com';

console.log(miCuentaBancaria.depositar(1000));
console.log(miCuentaBancaria.verSaldo());