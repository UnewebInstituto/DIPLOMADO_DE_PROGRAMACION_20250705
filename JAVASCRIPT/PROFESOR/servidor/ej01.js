console.log("Ejemplo01 - Prueba nodejs desde servidor");
console.log("Serie Fibonacci para los 10 primeros números");
console.log("Partiendo de 1 y 1");
/**
 * Declaración de variables
 */
var n1, n2, suma, n, i;
/**
 * Inicialización de variables
 */
n1 = 1;
n2 = 1;
i = 2;
n = 10;
suma = 0;
console.log(n1);
console.log(n2);
/**
 * Cuerpo principal del programa
 */
while (i < n){
    suma = n1 + n2;
    console.log(suma);
    n1 = n2;
    n2 = suma;
    i = i + 1;
}
console.log("Fin de la Serie");

