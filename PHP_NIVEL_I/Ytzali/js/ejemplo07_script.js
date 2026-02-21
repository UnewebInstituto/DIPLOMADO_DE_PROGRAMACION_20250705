//1)Declaracion de dependencias o librerias 
//No hay

//2)Declaracion de funcion
function emitirMensaje(){
    alert('Este es un mensaje de prueba...');
}

//3)Declaracion de variables, constantes, otros
const btnPrueba = document.getElementById('btnPrueba');

//4)Cuerpo principal del programa
btnPrueba.addEventListener('click',emitirMensaje);
