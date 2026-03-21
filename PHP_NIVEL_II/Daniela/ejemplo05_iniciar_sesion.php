<h3>Ejemplo 05 - Iniciar Sesión</h3>
<?php
    #debe ser la primer instrucción
    #inicio de sesión
    session_start();
    echo "Sesión iniciada<br>";
    #creación de las variables de sesión
    $_SESSION['usuario'] = 'nanim';
    $_SESSION['nombre'] = 'Nani Moreno';
    echo "Se declararon variables de sesión<br>";

?>