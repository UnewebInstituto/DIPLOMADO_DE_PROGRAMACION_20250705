<h3>Ejemplo05 - Iniciar Sesion</h3>
<?php
    #Debe ser la primer intruccion
    #Inicio de sesion
    session_start();

    echo "Sesion Iniciada<br>";
    #Creacion de las variables de sesion
    $_SESSION['usuario'] = 'sgmaez';
    $_SESSION['nombre'] = 'Salomon Gamez';
    echo "Se declararon variables de sesion<br>";
?>