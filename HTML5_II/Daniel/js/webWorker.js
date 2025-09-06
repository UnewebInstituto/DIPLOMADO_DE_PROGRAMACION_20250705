//Declaracion de variables
var i = 0;

//declaracion de funcion 
function contadorDeTiempo(){
    i = i + 1;
    postMessage(i);
    //se llama la funcion asi misma,
    //a intervalos de 1 segundo (1000 milisegundos)
    setInterval("contadorDeTiempo()",1000);
    console.warn('Mensaje desde el worker:' + i);
}
//Lamado de contador de tiempo
contadorDeTiempo();
