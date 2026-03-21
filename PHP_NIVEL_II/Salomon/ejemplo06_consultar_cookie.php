<h3>Ejemplo06 - Consultar Cookie</h3>
<?php
    if (isset($_COOKIE["usuario"])){
        echo "Tu usuario es:" . $_COOKIE["usuario"] . "<br>";
        echo "Tu nombre de usuario es:" . $_COOKIE["nombre"] . "<br>";
    }else{
        echo "Las variables de sesion cookie han expirado<br>";
    }
?>