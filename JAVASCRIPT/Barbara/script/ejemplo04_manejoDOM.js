// 1- Declaración de dependencias 

// 2- Declaración de funciones
function resolvente(){
    a = parseFloat(document.getElementById('a').value);
    b = parseFloat(document.getElementById('b').value);
    c = parseFloat(document.getElementById('c').value);
    if (a == 0){
        resultado.style.color = 'red';
        resultado.innerHTML = 'ERROR: El valor de \'a\' debe ser diferente de 0.';
    }else{
        subRadical = Math.pow(b,2) - 4*a*c;
        if (subRadical < 0){    
            resultado.style.color = 'orange';
            resultado.innerHTML = 'ALERTA: Expresión sub radical debe ser mayor o igual a 0';
        }else{
            x1 = (-b - Math.sqrt(subRadical))/2*a;
            x2 = (-b + Math.sqrt(subRadical))/2*a;
            resultado.style.color = 'green';
            // ascii ` :  alt+96
            resultado.innerHTML = `ATENCIÓN: <br>x1=${x1} <br>x2=${x2}`;
        }
    }
}

// Declaración función tradicional
//function limpiar(){
// Declaración de arrow function "función flecha"
const limpiar = () => {
    a = document.getElementById('a');
    b = document.getElementById('b');
    c = document.getElementById('c');
    resultado = document.getElementById('resultado');
    a.value = '';
    b.value = '';
    c.value = '';
    resultado.innerHTML = '';
    resultado.style.color = '';
}

// 3- Declaración de variables
var a, b, c, subRadical, x1, x2, resultado, btnResolvente, btnLimpiar;

// 4- Cuerpo principal del programa
a = 0;
b = 0;
c = 0;
subRadical = 0;
x1 = 0;
x2 = 0;
btnResolvente = document.getElementById('btnResolvente');
btnLimpiar = document.getElementById('btnLimpiar');
resultado = document.getElementById('resultado');

btnResolvente.addEventListener("click",resolvente);
btnLimpiar.addEventListener("click",limpiar);
