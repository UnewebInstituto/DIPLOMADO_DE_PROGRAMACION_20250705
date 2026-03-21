<h3>Ejemplo05 Iniciar Sesión</h3>
<?php
    # Debe ser la primer instrucción
    # Inicio de sesión
    session_start();
    echo "Sesión iniciada<br>";
    # Creación de las variables de sesión
    $_SESSION['usuario'] = 'hduque';
    $_SESSION['nombre'] = 'Henry Duque';
    echo "Se declararon variables de sesión<br>";
?>