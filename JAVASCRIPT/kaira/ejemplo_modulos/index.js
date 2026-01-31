const{multiplicar,dividir,sumar, restar}= require('./utilidad.js');

console.log(`resultado de la multiplicacion de 7*13: ${multiplicar(7,13)}`);

console.log(`resultado de la division de 7/13: ${dividir(7,13)}`);

console.log(`resultado de la division de 7/0: ${dividir(7,0)}`);

console.log(`resultado de la suma de 7+13: ${sumar(7,13)}`);

console.log(`resultado de la resta de 7-13: ${restar(7,13)}`);

