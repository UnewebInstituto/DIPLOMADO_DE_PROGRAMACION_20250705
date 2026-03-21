<h3>Ejemplo 05 Iniciar Sesion</h3>
<?php
    session_start();
    echo "Sesion iniciada<br>";
    $_SESSION['usuario'] = 'kaira';
    $_SESSION['nombre'] = 'Kaira Acuña';
    echo "Se declararon variables de sesion";
?>