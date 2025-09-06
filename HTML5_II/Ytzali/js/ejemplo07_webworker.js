/**
 * Extraer del DOM, aquel selector (etiqueta) cuyo
 * nombre sea "reultado"
 */
var resultado = document.getElementById
('resultado');
/**
 * Veificar que el navegdor, tiene soporte de worker
 */
if (typeof(Worker)){
  resultado.style.color = 'green';
  resultado.innerHTML = "Atención: Su navegador web tiene soporte de Web Worker.";

}else{
  resultado.style.color = 'red';
  resultado.innerHTML= "Atención: Su navegador web no tiene soporte de Web Worker.";

}

function inicioWorker(){
  console.log('Estoy en inicioWorker()');
/**
 * Invocar al web Worker
 */
console.log((typeof(w) == "undefined"));
if (typeof(w) == "undefined"){
  /**
   * Verificaque el worker no está definido para entones crearlo 
   */
  w = new Worker('./js/webworker.js');
  console.log(typeof(w));
  w.onmessage = function(event){
    resultado.innerHTML = "Contador de números:" + event.data;
    console.error('Mensaje recibido:' + event.data);
   }
  }
}

function finWorker(){
  /**
   * Finalizar la ejecución del webv worker
   */
  w.terminate();
  w = undefined;
}