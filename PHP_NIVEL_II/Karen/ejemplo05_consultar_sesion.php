<?php
    echo "<h3>Ejemplo05 - Consultar Sesión</h3>";
    #Iniciamos sesión
    session_start();
    #Consultamos el ID de la sesión
    echo "Identificador de sesión:<br>";
    echo session_id();
    echo "<br>";
    echo "Valores de las variables de sesión definidas:<br>";
    echo "Usuario: ". $_SESSION['usuario']. "<br>";
    echo "Nombre del usuario: ". $_SESSION['nombre']. "<br>";
?>