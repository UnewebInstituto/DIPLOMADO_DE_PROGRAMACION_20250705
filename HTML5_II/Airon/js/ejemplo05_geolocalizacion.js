   //1- Declaracion de Dependencias (No Aplica en este Caso)

    //2- Declaracion de Funciones
    function obtener(){
      //Se verifica si el navegador soporta geolocalización
      if (navigator.geolocation){
        document.getElementById("resultado").innerHTML = "Navegador Web soporta Geolocalización"
        console.log(navigator)
        navigator.geolocation.getCurrentPosition(solicitarUbicacion, negarUbicacion)
      }
      else{
        document.getElementById("resultado").innerHTML = "Atención: Su Navegador Web no tiene soporte para Geolocalización"
      }
    }

    //Las siguientes funciones se han declarado usando noacion arrow function (funciones flecha)
    //function solicitarUbicacion(p){} <- forma tradicional
    const solicitarUbicacion = (p) => {
      //Donde p es objeto de ubicación
      console.log(p)
      latitud= p.coords.latitude;
      longitud= p.coords.longitude;
      document.getElementById("resultado").innerHTML += "<hr> Coordenadas Geográficas <br> Latitud:" +latitud+"<br>Longitud:" +longitud;

      //Se habilita el boton para ver el mapa
      btnVerMapa.disabled =  false
    }

    const negarUbicacion = (e) =>{
      //Donde e es objeto de error
      console.log(e)
      switch (e.code) {
        case 1:
          document.getElementById("resultado").innerHTML += "<hr> Coordenadas Geográficas <br> Usuario negó acceso a ubicación";
          break;
        case 2:
          document.getElementById("resultado").innerHTML += "<hr> Coordenadas Geográficas <br> Posición no disponible";
          break;
        default: document.getElementById("resultado").innerHTML += "<hr> Coordenadas Geográficas <br> Se excedió en el tiempo de espera";
          break;
      }
    }

    function verMapa(){
      let url = "https://www.openstreetmap.org/#map=15/"+latitud+"/"+longitud;
      window.open(url);
    }


    //3-Declaracion de Variables
    var longitud, latitud, btnVerMapa;

    //4-Cuerpo del Programa

    longitud= "";
    latitud= "";
    url ="";
    btnVerMapa = document.getElementById("btnVerMapa")