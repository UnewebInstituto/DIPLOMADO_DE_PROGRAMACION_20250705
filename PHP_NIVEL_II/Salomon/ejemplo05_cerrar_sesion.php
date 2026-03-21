<h3>Ejemplo05 - Cerrar Sesion</h3>
<?php
    #Iniciar Sesion
    session_start();

    #Terminar la sesion
    session_destroy();
    echo "Sesion Terminada<br>";
?>