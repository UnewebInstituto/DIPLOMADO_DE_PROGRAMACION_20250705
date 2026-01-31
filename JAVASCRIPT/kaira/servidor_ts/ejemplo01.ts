console.log("ejemplo01 - puebas node desde servidor");
console.log("serie fibonacci para los 10 primers numeros");
console.log("partiendo de 1 y 1");


let n1:number;
let n2:number;
let suma:number;
let n:number;
let i:number;

n1 = 1;
n2 = 1;
i = 2;
suma = 0;
n = 10;

console.log(n1);
console.log(n2);

while(i < n){
    suma = n1 + n2;
    console.log(suma);
    n1 = n2;
    n2 = suma;
    i = i + 1;

}

console.log("fin de la serie");