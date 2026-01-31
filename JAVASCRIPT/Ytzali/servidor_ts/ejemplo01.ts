console.log("Ejemplo 01 - Prueba nodejs desde servidor");
console.log("Serie Fibonacci para los 10 primero numeros");
console.log("Partiendo de 1 y 1")

/**
 * Declaracion de variables
 * indicando el tipo de dato
 */
let n1:number;
let n2:number;
let suma: number;
let n: number;
let i: number;

/**
 * Inicializacion de las variables
 */
n1 = 1;
n2 = 1;
i = 2;
n = 10;
suma = 0;
console.log(n1);
console.log(n2);

/**Cuerpo principal del programa */
while (i < n){
  suma = n1 + n2;
  console.log(suma);
  n1 = n2;
  n2 = suma;
  i = i + 1;
}
console.log("Fin de la Serie")





