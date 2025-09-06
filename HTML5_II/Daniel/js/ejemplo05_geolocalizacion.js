function obtener() {
  if (navigator.geolocation){
    document.getElementById('resultado').innerHTML = "Navegador Web soporta Geolocalizacion";
    console.log(navigator);
    navigator.geolocation.getCurrentPosition(solicitarubicacion, negarubicacion)
  }else{
    document.getElementById('resultado').innerHTML = "Atención: Su Navegador Web no tiene soporte para Geolocalización.";
  
}
}
// Las siguientes funciones se han declarado empleando 
//notacion arrow function (funciones de flecha)
const solicitarubicacion = (p) =>{
console.log(p);
latitud = p.coords.latitude;
longitud = p.coords.longitude;
document.getElementById('resultado').innerHTML += '<hr>Coordenadas geográficas.<br>Latitud:'+latitud+'<br>Longitud:'+longitud;
// Se Habilita el boton para ver el Mapa
btnVerMapa.disabled = false;



}
const negarubicacion = (e) =>{
  //donde es objeto de error
  console.log(e);
  switch (e.code) {
    case 1:
              document.getElementById('resultado').innerHTML += '<hr>Error.<br>Usuario negó acceso ubicación';
              break;
          case 2:
              document.getElementById('resultado').innerHTML += '<hr>Error.<br>Posición no disponible';
              break;
          case 3:
          document.getElementById('resultado').innerHTML += '<hr>Error.<br>Se excedio en caso del tiempo de espera';
              break;
  
    default:
    document.getElementById('resultado').innerHTML += '<hr>Error.<br>No se que paso';
      break;
  } 
} 

function VerMapa(){
let url = "https://www.openstreetmap.org/#map=17/"+latitud+"/"+longitud;
window.open(url);
}

//3- declaracion de variables 
var longitud, latitud, url, btnVerMapa;

//4- Cuerpo principal del codigo 
longitud = '';
latitud = '';
url = '';
btnVerMapa = document.getElementById('btnVerMapa');