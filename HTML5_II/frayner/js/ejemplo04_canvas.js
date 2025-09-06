     const lienzo = document.getElementById("lienzo");
     const contexto = lienzo.getContext("2d");
     const boton = document.getElementById("btnDibujar");
     boton.addEventListener("click", function () {
         contexto.clearRect(0, 0, lienzo.width, lienzo.height); // Limpia el lienzo
         for (let i = 0; i < 6; i++) {
             const x = 50 + i * 100; // desplazamiento horizontal
             const y = 50 + i * 80;  // desplazamiento vertical
             // 🔴 Cuadrado rojo
             contexto.fillStyle = 'red';
             contexto.fillRect(x, y, 50, 50);
             // 🔵 Cuadrado azul
             contexto.fillStyle = 'blue';
             contexto.fillRect(x + 60, y, 50, 50);
             // 🟢 Círculo verde
             contexto.beginPath();
             contexto.arc(x + 150, y + 25, 25, 0, Math.PI * 2);
             contexto.fillStyle = 'green';
             contexto.fill();
             contexto.closePath();
             // 🟡 Texto del escalón
             contexto.fillStyle = 'orange';
             contexto.font = '16px Arial';
             contexto.fillText(`Escalón ${i + 1}`, x + 200, y + 35);
         }
     });
