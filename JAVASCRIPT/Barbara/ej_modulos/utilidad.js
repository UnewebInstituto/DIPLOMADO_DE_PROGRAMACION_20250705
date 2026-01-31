function multiplicar(a,b){
    return a*b;
}
function dividir(a,b){
    if (b === 0){
        return 'ERROR: División por cero';
    };
    return a/b;
}
function sumar(a,b){
    return a+b;
}
function restar(a,b){
    return a-b;
}


// Implementación de que la función
// es exportable
module.exports = {
    multiplicar,
    dividir,
    sumar,
    restar
};