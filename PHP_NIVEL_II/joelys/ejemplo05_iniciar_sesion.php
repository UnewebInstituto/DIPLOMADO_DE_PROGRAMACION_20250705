<h3>Iniciar Sesion</h3>
<?php 
    //debe ser la primera instruccion
    //inicio de sesion
    session_start();
    echo "Sesion Iniciada<br>";
    //crecion de las variables de sesion
    $_SESSION['usuario'] = 'jmoreno';
    $_SESSION['nombre']  = 'Joelys Moreno';
    echo "Se declararon variables de sesion<br>";
?> 