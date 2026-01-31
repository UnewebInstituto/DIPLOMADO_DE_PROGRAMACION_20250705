function multiplicar(a,b) {
  return a * b;
}
function dividir(a,b) {
  if (b === 0 ) {
    return 'ERROR: Division por cero';
  } else {
    return a/b;
  }
  
}
function sumar(a,b) {
  return a + b;
}

function restar(a,b) {
  return a - b;
}

//Implementacion de que la funcion es exportable

module.exports = {
  multiplicar,
  dividir,
  sumar,
  restar
};