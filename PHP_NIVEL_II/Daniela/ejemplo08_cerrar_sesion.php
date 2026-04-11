<?php
    session_start();
    session_destroy();
    $mensaje = "Sesión Finalizada";
    $severidad = 1;
    header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);

?>