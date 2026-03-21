<h3>Ejemplo05 terminar sesion</h3>
<?php 
    session_start();
    session_destroy();
    echo "Sesion terminada<br>"
?>