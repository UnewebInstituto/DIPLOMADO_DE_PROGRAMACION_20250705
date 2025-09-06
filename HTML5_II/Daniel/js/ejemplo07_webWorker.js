/**
 * Extraer del DOM, aquel selector (etiqueta) cuyo 
 * nombre sea 'resultado'
 */
var resultado = document.getElementById('resultado');
/**
 * Verificar que el navegador, tiene soporte de Worker
 */
if (typeof(Worker)){
    resultado.style.color = 'green';
    resultado.innerHTML = "Atención: Su navegador tiene soporte de Web Worker.";
}else{
    resultado.style.color = 'red';
    resultado.innerHTML = "Alerta: Su navegador no tiene soporte de Web Worker.";
}

function inicioWorker(){
    /**
     * Invocar al Web Worker
     */
    if (typeof(w) == "undefined"){
        /**
         * Verifica que worker no está definido, para entonces
         * crearlo
         */
        w = new Worker('./js/webWorker.js');
        w.onmessage = function(event){
            resultado.innerHTML = "Contador de números:" + event.data;
            console.error('Mensaje recibido:' + event.data);
        }
   }
}

function finWorker(){
    /**
     * Finalizar la ejecucion del webworker.
     */
    w.terminate();
    w = undefined;
}
