<h3>Ejemplo 05 Terminar Sesión</h3>
<?php
    session_start();
    session_destroy();
    echo "Sesión Terminada";
?>