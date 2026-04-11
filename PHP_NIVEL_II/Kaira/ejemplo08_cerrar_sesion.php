<?php
    session_start();
    session_destroy();
    $mensaje = "Sesion finalizada";
    $severidad = 1;
    header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);

?>