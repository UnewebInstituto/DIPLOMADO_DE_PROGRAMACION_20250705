<h3>Ejemplo 05 consultar sesion</h3>

<?php
    session_start();
    echo "Identificador de sesion:<br>";
    echo session_id();
    echo "<br>";
    echo "Valores de las variables de sesion que defini:<br>";
    echo "Usuario:" . $_SESSION['usuario'] . "<br>";
    echo "Nombre del usuario:" . $_SESSION['nombre'] . "<br>";
     
?>