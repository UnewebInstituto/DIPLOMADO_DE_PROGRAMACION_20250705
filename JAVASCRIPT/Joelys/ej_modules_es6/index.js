/*
const { multiplicar, dividir, sumar, restar } = require('./utilidad.js');
*/
//Aplica para EM6
import { multiplicar, dividir, sumar, restar, PI } from './utilidad.js';

function areaCirculo(radio){
  return PI * radio*radio;
}

//Ejecucion del llamado a la funcion
console.log(`Resultado de la multiplicacion de 7*13 ${multiplicar(7,13)}`);
console.log(`Resultado de la division de 7/13 ${dividir(7,13)}`);
console.log(`Resultado de la division de 7/0 ${dividir(7,0)}`);
console.log(`Resultado de la suma de 7+13 ${sumar(7,13)}`);
console.log(`Resultado de la resta de 7-13 ${restar(7,13)}`);
console.log(`resultado del area de la circunferencia de radio2: ${areaCirculo(2)}`)
