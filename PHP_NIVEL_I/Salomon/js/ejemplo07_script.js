//1- declaraciones de dependencias o librerias 
// no hay 
//2- DECLARACION DE FUNCIONES
function emitirMensaje(){
  alert('Este es un mensaje de prueba...');
}

//DECLARACIONES DE VARIABLES, CONSTANTES, OTROS..
const btnPrueba = document.getElementById('btnPrueba');

// CUERPO PRINCIPAL DEL PROGRAMA
btnPrueba.addEventListener('click',emitirMensaje)