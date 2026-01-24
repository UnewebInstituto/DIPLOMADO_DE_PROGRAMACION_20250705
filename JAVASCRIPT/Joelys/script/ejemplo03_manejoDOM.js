 function mostrar() {
    mensaje = 'longitud de los parrafos\n';
    parrafos = document.getElementsByTagName('p');
    for (let i = 0; i < parrafos.length; i++) {
      mensaje = mensaje + parrafos[i].id + ':' + parrafos[i].innerHTML.length + '\n'
    }
    alert(mensaje);
  }
  function cambiarColorImpar() {
    let parrafosImpares = document.getElementsByClassName('impar');
    if (swColorImpar == true) {
      for (let i = 0; i < parrafosImpares.length; i++) {
        parrafosImpares[i].style.color = 'green';
      }
      swColorImpar = false;
    } else {
      for (let i = 0; i < parrafosImpares.length; i++) {
        parrafosImpares[i].style.color = '';
      }
      swColorImpar = true;
    }
  }
  
  //Declaracion de variables
  var parrafos, mensaje, btnColorImpar, swColorImpar, btnColorPar, swColorPar;

  // Cuerpo Principal del Programa
  swColorImpar = true;
  swColorPar = true;
  btnColorImpar = document.getElementById('btnColorImpar');
  btnColorPar = document.getElementById('btnColorPar');
  btnColorImpar.addEventListener("click", cambiarColorImpar);
  //Caso de Funcion Anonima
  btnColorPar.addEventListener("click", () => {
    let parrafosPares = document.getElementsByClassName('par');
    if (swColorPar == true) {
      for (let i = 0; i < parrafosPares.length; i++) {
        parrafosPares[i].style.color = 'purple';
      }
      swColorPar = false;
    } else {
      for (let i = 0; i < parrafosPares.length; i++) {
        parrafosPares[i].style.color = '';
      }
      swColorPar = true;
    }
  })