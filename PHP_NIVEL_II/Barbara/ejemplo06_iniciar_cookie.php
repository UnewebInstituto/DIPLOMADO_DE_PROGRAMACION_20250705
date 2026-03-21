<h3>Ejemplo06 Iniciar Cookie</h3>
<?php
    #se definen par de variables de tipo cookie que durarán 30 segundos
    setcookie("ususario", "bvillasmil", time()+30);
    setcookie("nombre","Bárbara Villasmil",time()+30);
    echo "Variables del tipo cookie fueron creadas<br>";
?>