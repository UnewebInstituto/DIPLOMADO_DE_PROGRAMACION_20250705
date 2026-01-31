/**
 * Además de exportar funciones, 
 * también se pueden exportar variables 
 */

export function multiplicar(a,b){
    return a*b;
}
export function dividir(a,b){
    if (b === 0){
        return 'ERROR: División por cero';
    };
    return a/b;
}
export function sumar(a,b){
    return a+b;
}
export function restar(a,b){
    return a-b;
}

export const PI = 3.1416;

// Implementación de que la función
// es exportable
// NO APLICA EN ES6
/*
module.exports = {
    multiplicar,
    dividir,
    sumar,
    restar
};
*/