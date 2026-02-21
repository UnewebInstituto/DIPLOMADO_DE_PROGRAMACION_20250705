//1- Declaración de librerías o dependencias
// NO HAY
//2- Declaración de función
function emitirMensaje(){
    alert('Este es un mensaje de prueba...');
}
//3- Declaraciones de variables, constantes, otros
const btnPrueba = document.getElementById('btnPrueba');
//4- Cuerpo principal del programa
btnPrueba.addEventListener('click',emitirMensaje);
