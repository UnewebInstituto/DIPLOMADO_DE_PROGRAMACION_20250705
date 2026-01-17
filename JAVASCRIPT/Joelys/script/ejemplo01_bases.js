//Declaracion de Arrow Function
const encendedor = (arg_parrafo) => {
  if (suiche_1 == true) {
    arg_parrafo.style.color='blue';
    arg_parrafo.style.textSize ='24px';
    arg_parrafo.style.textShadow ='3px 3px 3px black';
    suiche_1 = false;
  } else {
    arg_parrafo.style.color='';
    arg_parrafo.style.textSize ='';
    arg_parrafo.style.textShadow ='';
    suiche_1 = true;
  }
}