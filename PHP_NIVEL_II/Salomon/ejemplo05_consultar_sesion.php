<h3>Ejemplo05 - Consultar Sesion</h3>
<?php
    #Se inicia sesion
    session_start();

    #Se consulta el identificador de la sesion
    echo "Identificador de la sesion:<br>";
    echo session_id() . "<br>";
    echo "Valores de las variables de sesion que defini:<br>";
    echo "Usuario:" . $_SESSION['usuario'] . "<br>";
    echo "Nombre del Usuario:" . $_SESSION['nombre'] . "<br>";    
?>