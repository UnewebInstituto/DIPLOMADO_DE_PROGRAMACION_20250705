// importar la función usando require()
const {multiplicar, dividir, sumar, restar} = require('./utilidad.js');

/**
 * Ejecución del llamado a la función
 */
console.log(`Resultado de la multiplicación de 7*13: ${multiplicar(7,13)}`);
console.log(`Resultado de la división de 7/13: ${dividir(7,13)}`);
console.log(`Resultado de la división de 7/0: ${dividir(7,0)}`);
console.log(`Resultado de la suma de 7+13: ${sumar(7,13)}`);
console.log(`Resultado de la resta de 7-13: ${restar(7,13)}`);