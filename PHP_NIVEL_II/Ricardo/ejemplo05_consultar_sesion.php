<h3>Ejemplo05 consultar sesion</h3>
<?php 
    session_start();
    echo "Identificardor de sesion:<br>";
    echo session_id();
    echo "Valores de las variables de sesion que defini:";
    echo "Usuario:" . $_SESSION['usuario'] . "<br>";
    echo "Nombre del usuario:" . $_SESSION['nombre'] . "<br>";
?>