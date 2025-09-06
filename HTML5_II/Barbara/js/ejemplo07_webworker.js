/**
 * Extraer del DOM, aquel selector (etiqueta) cuyo nombre sea resultado
 */
var resultado = document.getElementById
('resultado');
/**
 * verificar que el navegador, tiene soporte de worker
 */
if (typeof(Worker)){
  resultado.innerHTML = "Atención: Su navegador tiene soporte de Web Worker.";
}else{
  resultado.style.color = 'red'
  resultado.innerHTML = "Alerta: Su navegador no tiene soporte de Web Worker.";
}

function inicioWorker(){
    /**
     * Invocar al Web Worker
     */
    if(typeof(w) == "undefined"){
    /**
     * verifica que worker no esta definido, para entonces crearlo
     */
    w = new Worker('./js/webworker.js');
    w.onmessage = function(event){
    resultado.innerHTML = "Contador de números:" + event.data;
    console.error('Mensaje recibido:' + event.data);
    }
  }
}

function finWorker(){
  /**
   * finalizar la ejecución del worker
   */
  w.terminated();
  w = undefined;
}