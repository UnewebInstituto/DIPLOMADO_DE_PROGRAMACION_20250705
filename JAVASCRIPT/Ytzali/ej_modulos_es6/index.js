// importar la función usando require()
/*
// Declaración Anterior
const {multiplicar, dividir, sumar, restar} = require('./utilidad.js');
*/
// Aplica para ECMASCRIPT 6
import {multiplicar, dividir,sumar, restar, PI} from './utilidad.js';

/**
 * La siguiente función depende de PI
 */
function areaCirculo(radio){
    return PI*radio*radio; 
}

/**
 * Ejecución del llamado a la función
 */
console.log(`Resultado de la multiplicación de 7*13: ${multiplicar(7,13)}`);
console.log(`Resultado de la división de 7/13: ${dividir(7,13)}`);
console.log(`Resultado de la división de 7/0: ${dividir(7,0)}`);
console.log(`Resultado de la suma de 7+13: ${sumar(7,13)}`);
console.log(`Resultado de la resta de 7-13: ${restar(7,13)}`);

console.log(`Resultado del área de la circunferencia de radio 2 ${areaCirculo(2)}`);


