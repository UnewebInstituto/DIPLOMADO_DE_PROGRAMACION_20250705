        // 1- DECLARACIÓN DE DEPENDENCIAS
        // NO APLICA PARA ESTE CASO

        // 2- DECLARACIÓN DE FUNCIONES
        function obtener(){
          // Se verifica que el navegador soporta
          // Geolocalización
          if (navigator.geolocation){
              document.getElementById('resultado').innerHTML = "Navegador Web soporta Geolocalización.";
              console.log(navigator);
              navigator.geolocation.getCurrentPosition(solicitarUbicacion, negarUbicacion)
          }else{
              document.getElementById('resultado').innerHTML = "Atención: Su Navegador Web no tiene soporte para Geolocalización.";
          }
      }

      // Las siguientes funciones se han declarado empleando
      // notación arrow function (funciones flecha)
      // function solicitarUbicacion(p){} <- forma tradicional
      const solicitarUbicacion = (p) =>{
          // Donde p es objeto de ubicación
          console.log(p)
          latitud = p.coords.latitude;
          longitud = p.coords.longitude;
          document.getElementById('resultado').innerHTML += '<hr>Coordenadas geográficas.<br>Latitud:'+latitud+'<br>Longitud:'+longitud;
          // Se habilita el botón para ver el mapa
          btnVerMapa.disabled = false;
      }

      const negarUbicacion = (e) =>{
          // Donde e es objeto de error
          console.log(e);
          switch (e.code) {
              case 1:
                  document.getElementById('resultado').innerHTML += '<hr>Error.<br>Usuario negó acceso ubicación.';
                  break;
              case 2:
                  document.getElementById('resultado').innerHTML += '<hr>Error.<br>Posición no disponible.';
                  break;
              case 3:
                  document.getElementById('resultado').innerHTML += '<hr>Error.<br>Se excedió en el tiempo de espera.';
                  break;
              default:
                  document.getElementById('resultado').innerHTML += '<hr>Error.<br>Se desconoce el motivo.';
                  break;
          }
      }

      
  function verMapa(){
    let url = "https://www.openstreetmap.org/#map=17/"+latitud+"/"+longitud;
    window.open(url);
  }

      // 3- Declaración de variables
      var longitud, latitud, url, btnVerMapa;

      // 4- Cuerpo principal del programa
      longitud = '';
      latitud = '';
      url = '';
      btnVerMapa = document.getElementById('btnVerMapa');
