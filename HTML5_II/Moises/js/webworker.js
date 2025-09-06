//  Declaracion de Variables

var i = 0

// Declaracion de Funcion

function contadorDeTiempo(){

  // Incremento del contador

  i = i + 1;


  //Reportar valor del contador

  postMessage(i);

  //Se llama la funcion asi misma, a intervalor de 1 segundo (100 milisegundos)

  setInterval("contadorDeTiempo()",1000);
  console.warn('Mensaje desde el worker:' + i);
}
// Llamado a la Funcion

contadorDeTiempo();