<h3>Ejemplo 05 Iniciar Sesión</h3>
<?php
    #Debe ser la primera instrucción
    session_start();
    echo "Sesión iniciada<br>";
    #Creacion de ls variables de sesion
    $_SESSION['usuario'] = 'YRodriguez';
    $_SESSION['nombre'] = 'Ytzali Arianny';
    echo "Se declararon variables de sesión <br>";
?>





