//Buscar en el DOM aquel selector (etiqueta) cuyo nombre sea "resultado"
var resultado = document.getElementById("resultado")

//Verificar que el navegador tiene soporte de Worker
if (typeof(Worker)){
  resultado.style.color = "green";
  resultado.innerHTML = "Atención: Su navegador web tiene soporte de Web Worker.";
}
else {
  resultado.style.color = "red";
  resultado.innerHTML = "Atención: Su navegador web no tiene soporte de Web Worker.";
}

function inicioWorker(){
  //Invocar al Worker
  if (typeof(w) == "undefined"){

  //Verifica que el Worker no está definido, para entonces crearlo
  w = new Worker("./js/webworker.js");
  w.onmessage = function(event){
    resultado.innerHTML = "Contador de Números:" + event.data;
    console.error("Mensaje recibido:" + event.data);
  }
}
}

function finWorker(){
  //Finalizar la ejecución del Webworker
  w.terminate();
  w = undefined;
}