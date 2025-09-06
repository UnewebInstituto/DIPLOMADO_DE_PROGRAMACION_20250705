function cambiarImg(etiqueta){
  let imagen = document.getElementById("img_principal");
  imagen.src = etiqueta.src;
}

function obtenerFechaHora(){
  let fecha_hora = document.getElementById('fecha_hora');
  // Obtener fecha y hora de la computadora
  let fechaHora = new Date();
  let aa = fechaHora.getFullYear();
  let mm = fechaHora.getMonth();
  let dd = fechaHora.getDate();
  let hr = fechaHora.getHours();
  let mi = fechaHora.getMinutes();
  let se = fechaHora.getSeconds();
  let dia = fechaHora.getDay();
  let meses = ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Noviembre','Diciembre'];
  let semana = ['Domingo','Lunes','Martes','Miércoles','Jueves','Viernes','Sábado'];
  let ampm = 'a.m';
  let txtFechaHora = semana[dia] + "," + dd + " de " + meses[mm] + " de " + aa;
  if (hr > 12){
    hr = hr - 12;
    ampm = 'p.m.';
  }
  if (mi < 10){
    mi = "0" + mi;
  }
  if (se < 10){
    se = "0" + se;
  }

txtFechaHora = txtFechaHora + " " + hr + ":" + mi + ":" + se + " " + ampm;
fecha_hora.innerHTML = txtFechaHora;
}

//1era. vez
obtenerFechaHora();

//Después de cada un segundo
setInterval("obtenerFechaHora()",1000);
