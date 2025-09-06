
//Declaración de Variables
var i = 0;

//Declaración de función
function contadorDeTiempo(){
  console.log('Llamado a Contador de Tiempo 2');
  //Incremento del contador
  i = i + 1;
  console.log(i);
  //Reporta el valo del contador
  postMessage(i);
  //Se llama la función así misma, a intervalos de 1 segund (1000 milisegundos)
  setInterval("contadorDeTiempo()",1000);
    console.warn('Mensaje desde el worker:' + i);
}


//Declaración de Función
console.log('Llamado a Contador de Tiempo 1');
contadorDeTiempo();