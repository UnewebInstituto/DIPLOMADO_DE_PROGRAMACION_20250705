const { PI } = require("../ej_modulos_es6/utilidad");

function multiplicar(a,b){
    return a * b;
}

function dividir(a,b) {
    if( b === 0){
        return 'error: division por 0'
    }
    return a/b;
}
function sumar(a,b){
    return a+b;
}
function restar(a,b){
    return a-b
}

module.exports = {
    multiplicar,
    dividir,
    sumar,
    restar
}

function areaCirculo(radio){
    return PI =
}