//ademas de exportar funciones tambien puedes exportar variables
export function multiplicar(a,b) {
  return a * b;
}
export function dividir(a,b) {
  if (b === 0 ) {
    return 'ERROR: Division por cero';
  } else {
    return a/b;
  }
  
}
export function sumar(a,b) {
  return a + b;
}

export function restar(a,b) {
  return a - b;
}

//Implementacion de que la funcion es exportable
//No aplica en EM6
/*
module.exports = {
  multiplicar,
  dividir,
  sumar,
  restar
};*/

export const PI = 3.1416;