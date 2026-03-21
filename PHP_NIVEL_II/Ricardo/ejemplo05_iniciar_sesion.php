<h3>Ejemplo05 Iniciar sesion</h3>
<?php
    session_start();
    $_SESSION['usuario'] = 'rhen';
    $_SESSION['nombre'] = 'Ricardo Motta';
    echo "Se declararon variables de sesion<br>";

?>

