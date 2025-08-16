var lienzo = document.getElementById("lienzo");
console.log(lienzo);
var contexto = lienzo.getContext("2d");
console.log(contexto);
// Asgnación de valor a atributo
contexto.fillStyle = "red";
// Llamado a metodo
contexto.fillRect(0,0,100,100)

var colores = ['yellow','blue','red','green','orange','purple'];
function dibujar() {
  let i = 0
  let x = 0
  let y = 100
  while (i < 6) {
    contexto.fillStyle = colores [i]
    contexto.fillRect(x,y,100,100)
    x = x+100;
    y= y+100;
    i = i+1;
  }
}