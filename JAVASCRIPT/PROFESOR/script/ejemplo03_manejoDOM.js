// Declaración de funciones
function mostrar(){
    mensaje = 'Longitud de los párrafos:\n';
    parrafos = document.getElementsByTagName('p');
    for (let i = 0; i < parrafos.length; i++){
        mensaje = mensaje + parrafos[i].id + ':' + parrafos[i].innerHTML.length + '\n';
    }
    alert(mensaje);
}

function cambiarColorImpar(){
    let parrafosImpares = document.getElementsByClassName('impar');
    if (swColorImpar == true){
        for (let i=0; i<parrafosImpares.length; i++){
            parrafosImpares[i].style.color = 'green';
        }
        swColorImpar = false;
    }else{
        for (let i=0; i<parrafosImpares.length; i++){
            parrafosImpares[i].style.color = '';
        }
        swColorImpar = true;
    }
}

// Declaración de variables
var parrafos, mensaje, btnColorImpar, btnColorPar, swColorImpar, swColorPar;

// Cuerpo principal del programa
swColorImpar = true;
swColorPar = true;
btnColorImpar = document.getElementById('btnColorImpar');
btnColorPar = document.getElementById('btnColorPar');
btnColorImpar.addEventListener("click", cambiarColorImpar);
// Caso de función anonima
btnColorPar.addEventListener("click", ()=>{
    let parrafosPares = document.getElementsByClassName('par');
    if (swColorPar == true){
        for (let i=0; i<parrafosPares.length; i++){
            parrafosPares[i].style.color = 'purple';
        }
        swColorPar = false;
    }else{
        for (let i=0; i<parrafosPares.length; i++){
            parrafosPares[i].style.color = '';
        }
        swColorPar = true;
    }
})
