<?php
    session_start();
    include './ejemplo08_conexion.php';

    $sql = "INSERT INTO usuarios(nombre, apellido, correo_electronico, clave,foto) VALUES ('$_POST[nombre]','$_POST[apellido]','$_POST[correo_electronico]', md5('$_POST[clave]'), '$_POST[foto]')";
    try {
        $resultado = mysqli_query($enlace, $sql);
        $mensaje = "Usuario registrado con exito";
        $severidad = 1;
    } catch (\Throwable $th) {
        $mensaje = $th->getMessage();
        $severidad = 2;
        // Cierra conexión a la BBDD
        mysqli_close($enlace);
    }
    header('location:ejemplo08_registrarse.php?mensaje='.$mensaje.'&severidad='.$severidad);
?>