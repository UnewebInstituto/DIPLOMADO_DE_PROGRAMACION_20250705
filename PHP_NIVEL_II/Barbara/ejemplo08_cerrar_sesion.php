<?php
    session_start();
    session_destroy();
    $mensaje = "Sesión finalizada";
    $severidad = 1;
    header('<location:/
    ?mensaje='.$mensaje.'&severidad='.$severidad);
?>