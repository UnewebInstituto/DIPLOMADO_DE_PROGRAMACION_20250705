// 1- DECLARACIÓN DE DEPENDENCIAS 
    // No aplica.


    // 2. Declaración de funciones.
    function obtener(){
      //Se verifica que el navegado soporta 
      //Geolocalización
      if (navigator.geolocation){
        document.getElementById('resultado').innerHTML = "Navegador web soporta geolocalizaión.";
        console.log(navigator)
        navigator.geolocation.getCurrentPosition(solicitarUbicación, negarUbicación)

      }else{
        document.getElementById('resultado').innerHTML = "Su Navegador web no soporta para geolocalizaión.";
      }
    }

    //Las siguientes funciones se ha declarado empleando 
    //notacón arrow funtion (funciones flecha)
    //funcion solicitarUbicación (p) {} <- frma tradicional 
    const solicitarUbicación = (p) => {
      //Donde p es objeto de ubicación
      console.log(p)
      latitud = p.coords.latitude;
      longitud = p.coords.longitude;
      document.getElementById('resultado').innerHTML +=
      '<hr>Coordenadas geográficas.<br>Latitud:'+latitud+'<br>Longitud:'+longitud;
      //Se habilita el botón para ver el Mapa
      btnVerMapa.disabled = false;
    }

    const negarUbicación = (e) => {
      //Donde es objeto de error
      console.log(e);
      switch (e.code) {
        case 1:
        document.getElementById('resultado').innerHTML +=
      '<hr>Coordenadas geográficas.<br>Usuario negó acceso ubicación.';
          break;
      
        case 2:
        document.getElementById('resultado').innerHTML +=
      '<hr>Error.<br>Posición no disponible.';
        break

        default:
        document.getElementById('resultado').innerHTML +=
      '<br>Error.<br>Se excedió en el tiempo de espera.';
          break;
      }
}

function verMapa(){
      url = "https://www.openstreetmap.org/#map=17/"+latitud+"/"+longitud;
      window.open(url);
    }


  //3. Declaración de variables
  var longitud, latitud, url, btnVerMapa;

  //4. CUERPO PRINCIPAL DEL POGRAMA
    longitud = '';
    latitud = '';
    url = '';
    btnVerMapa = document.getElementById('btnVerMapa');

