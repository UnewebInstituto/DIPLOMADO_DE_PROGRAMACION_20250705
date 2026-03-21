<h3>Ejemplo05 Iniciar Sesión</h3>
<?php
    #debe ser la primera instrucción
    #inicio de sesión
    session_start();
    echo "Sesión iniciada<br>";
    #creación de las variables de sesión
    $_SESSION['usuario'] = 'bvillasmil';
    $_SESSION['nombre'] = 'Bárbara Villasmil';
    echo "Se declararon variables de sesión<br>";

?>