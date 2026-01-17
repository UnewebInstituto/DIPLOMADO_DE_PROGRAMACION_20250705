const encendedor =  (arg_parrafo) =>{
    if (swiche1 == true) {
        arg_parrafo.style.backgroundColor="beige";
        arg_parrafo.style.color="blue";
        arg_parrafo.style.fontSize = "24px";
        arg_parrafo.style.textShadow = "3px 3px 3px gray";
        swiche1= false;
    }
    else{
        arg_parrafo.style.backgroundColor="";
        arg_parrafo.style.color="";
        arg_parrafo.style.fontSize = "";
        arg_parrafo.style.textShadow = "";
        swiche1= true;
    }
}
