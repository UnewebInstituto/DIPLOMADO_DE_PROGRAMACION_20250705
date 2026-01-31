console.log("Ejemplo01 - Prueba Nodejs desde el servidor");
console.log("Serie Fibonacci");
//DECLARACION DE VARIABLES
var n1, n2, suma, n, i;
//Inicializacion de Variables
n1 = 1;
n2 = 1; 
i = 2;
suma = 0;
n = 10
console.log(n1);
console.log(n2);
while (i < n) {
  suma = n1 + n2;
  console.log(suma);
  n1 = n2;
  n2 = suma;
  i = i + 1;
}
console.log("fin de la serie");