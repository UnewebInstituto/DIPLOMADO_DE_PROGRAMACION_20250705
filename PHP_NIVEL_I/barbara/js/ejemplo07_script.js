//1. declaración de librerias o dependencias
//NO HAY
//2. declaraciónde función
function emitirMensaje(){
    alert('Este es un mensaje de prueba...');
}

//3. declaraciones de variables, constantes, otros
const btnPrueba =  document.getElementById('btnPrueba');
btnPrueba.addEventListener('click',emitirMensaje);
