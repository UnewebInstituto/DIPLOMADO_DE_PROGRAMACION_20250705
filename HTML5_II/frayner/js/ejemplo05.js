     function mostrarUbicacion() {
         if (navigator.geolocation) {
             navigator.geolocation.getCurrentPosition(function (position) {
                 const lat = position.coords.latitude;
                 const lon = position.coords.longitude;
                 const mapa = document.getElementById("map");
                 mapa.innerHTML = `
         <iframe
           width="100%"
           height="100%"
           frameborder="0"
           style="border:0"
           src="https://www.google.com/maps?q=${lat},${lon}&hl=es&z=15&output=embed"
           allowfullscreen>
         </iframe>
       `;
             }, function (error) {
                 alert("No se pudo obtener tu ubicación: " + error.message);
             });
         } else {
             alert("Tu navegador no soporta geolocalización.");
         }
     }