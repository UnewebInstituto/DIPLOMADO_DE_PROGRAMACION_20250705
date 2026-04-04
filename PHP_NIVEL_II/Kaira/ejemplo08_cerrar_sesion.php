<?php
    session_start();
    session_destroy();
    $mensaje = "Sesion finalizada";
    $severidad = 1;
    header('location:ejemplo08_login.php?mensaje='.$mensaje.'&severidad='.$severidad);

?>