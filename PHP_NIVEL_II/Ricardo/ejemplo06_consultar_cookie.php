<h3>Ejemplo06 consultar cookie</h3>
<?php
    if (isset ($_COOKIE["usuario"])){
        echo "Usuario:" . $_COOKIE
        ["usuario"] . "<br>";
        echo "Nombre de usuario:" . $_COOKIE
        ["nombre"] . "<br>";
        
    }else{
        echo "Las variables del tipo cookie han expirado <br>";
    }    
?>