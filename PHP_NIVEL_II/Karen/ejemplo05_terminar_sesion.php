<?php
    echo "<h3>Ejemplo05 - Destrucción de la sesión </h3>";
    #Iniciamos
    session_start();
    echo "Sesión iniciada<br>";
    session_destroy();
    echo "Sesión aniquilada";
?>