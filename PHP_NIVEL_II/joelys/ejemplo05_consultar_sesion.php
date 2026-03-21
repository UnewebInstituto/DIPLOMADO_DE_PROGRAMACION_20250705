<h3>Ejemplo05 consultar sesion</h3>

<?php
    //se inicia sesion
    session_start();

    //Se consulta el identificador de la sesion 
    echo "identificador de sesion:<br>";
    echo session_id();

    echo "<br>Valores de las variables de sesion que defini:<br>";
    echo "Usuario:" . $_SESSION['usuario'] . "<br>";
    echo "Nombre del Usuario:" . $_SESSION['nombre'] . "<br>";  

?>