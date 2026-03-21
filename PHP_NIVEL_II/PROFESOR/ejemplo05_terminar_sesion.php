<h3>Ejemplo05 Terminar Sesión</h3>
<?php
    session_start();
    session_destroy();
    echo "Sesión terminada<br>";
?>