<h3>Ejemplo 05 Consultar Sesión</h3>
<?php
    #Se inicia sesion
    session_start();
    #Se consulta el identificador de la sesión 
    echo "Identificador de sesión <br>";
    echo session_id();
    echo "<br>";
    echo "Valores de las variables de la sesion que definí:<br>";
    echo "Usuario:" . $_SESSION['usuario'] . "<br>";
    echo "Nombre de Usuario:" . $_SESSION['nombre'] . "<br>";
?>