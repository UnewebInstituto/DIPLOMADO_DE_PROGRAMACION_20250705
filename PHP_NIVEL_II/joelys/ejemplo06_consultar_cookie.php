<h3>Ejemplo06 Consultar cookies</h3>

<?php

    if (isset($_COOKIE["usuario"])) {
        echo "Usuario:" . $_COOKIE["usuario"] . "<br>";
        echo "Nombre:" . $_COOKIE["nombre"] . "<br>";
    } else {
        echo "Las variables de tipo cookie han expirado<br>";
    }

?>