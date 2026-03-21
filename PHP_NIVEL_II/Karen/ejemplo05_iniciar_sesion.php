<h3> Ejemplo05 - Iniciar sesion </h3>
<?php
    #Debe ser la primera instrucción de cada código
    #Inicio de sesió
    session_start();
    echo "Sesión iniciada <br>";
    #Crear variables de sesión
    $_SESSION['usuario'] = 'ksotomayor';
    $_SESSION['nombre'] = 'Karen Sotomayor';
    echo "Se declararon variables de sesión<br>";

?>