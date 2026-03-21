<h3>Ejemplo6 Consultar Cookies</h3>
<?php
    if (isset($_COOKIE["usuario"])){
        echo "Usuario:" . $_COOKIE["usuario"] . "<br>";
        echo "Nombre de Usuario:" . $_COOKIE["nombre"] . "<br>";
    }else{
        echo "Las variables del tipo cookie han expirado<br>";
    }
?>