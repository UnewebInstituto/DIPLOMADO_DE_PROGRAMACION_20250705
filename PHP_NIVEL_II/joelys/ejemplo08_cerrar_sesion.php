<?php
    session_start();
    session_destroy();
    $mensaje = "Sesión finalizada";
    $severidad = 1;
    header('location:ejemplo08_login.php?mensaje='.$mensaje.'&severidad='.$severidad);
?>