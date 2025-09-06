//declaracion de variables
var i = 0;


//declaracion de funcion
function contadorDeTiempo(){
    i = i + 1;
    //reporta valor del contador
    postMessage(i);
    //Se llama la funcion asi misma,
    //a intervalos de 1 segundo(1000 milisegundos)
    setInterval ("contadorDeTiempo()",1000);
}
//Lamado a la funcion
contadorDeTiempo();