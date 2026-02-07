
class CuentaBancaria{
//Declaracion de atributos
//Public
nombre = '';
apellido = '';
correo_electronico = '';

//Private (Se antepone el numeral)
#saldo = 0;


//Declaracion de metodos
  constructor(montoinicial){
  this.#saldo = montoinicial;
  }

  depositar(monto){
  if (monto>0){
      this.#saldo += monto;
        return `Se deposito ${monto} en la cuenta`;
  }else{
    return `Error al efectuar el deposito.`;
  }
}

  verSaldo(){
    return `El saldo de la cuenta es ${this.#saldo}`;
  }
}


//Instancia de la clase
miCuentaBancaria = new CuentaBancaria(1);

//Al tratarse de atributos publico, se puede acceder directamente a traves del objeto. 

miCuentaBancaria.nombre = 'Ytzali';
miCuentaBancaria.apellido = 'Rodriguez';
miCuentaBancaria.correo_electronico = 'ytzalijimenez@gmail.com';

console.log(miCuentaBancaria.depositar(1.000));
console.log(miCuentaBancaria.verSaldo());
