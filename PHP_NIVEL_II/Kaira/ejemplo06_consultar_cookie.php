<h3>Ejemplo 06 consultar cookies</h3>

<?php
    if(isset($_COOKIE["usuario"])){
        echo "Usuario:" . $_COOKIE["usuario"] . "<br>";
        echo "Nombre de usuario:" . $_COOKIE["nombre"] . "<br>";

    } else{
        echo "Las variables tipo coookie han expirado<br>";
    }
?>