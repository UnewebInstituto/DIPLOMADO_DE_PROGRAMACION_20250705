// declaración de variables
var i = 0;

// declaración de función
function contadorDeTiempo(){
  // incremento del contador
  i = i + 1;
  // reporta valor del contador
  postMessage(i);
  // se llama la función así misma, a intervalos de 1 segundo (1000 milisegundos)
  setInterval("contadorDeTiempo()",1000);
  console.warn('Mensaje desde el worker:' + i);
}

// llamado a la función 
contadorDeTiempo();