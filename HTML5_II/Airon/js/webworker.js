//declaración de variables
var i = 0;

//declaración de función
function contadorDeTiempo(){
  //incrementa el contador
  i = i + 1;
  //reporta valor del contador
  postMessage(i)
  //se llama la función a si misma en intervalos de 1s
  setInterval("contadorDeTiempo()", 1000)
  console.warn("Mensaje desde el Worker:" + i)
}

//llamado a la funcion
contadorDeTiempo()