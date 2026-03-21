<h3>Ejemplo05 consultar sesión</h3>
<?php
    # Se inicia sesión
    session_start();
    # Se consulta el identificador de la sesión
    echo "Identificador de sesión:<br>";
    echo session_id();
    echo "<br>";
    echo "Valores de las variables de sesión que definí:<br>";
    echo "Usuario:" . $_SESSION['usuario'] . "<br>";
    echo "Nombre del Usuario:" . $_SESSION['nombre'] . "<br>";
?>