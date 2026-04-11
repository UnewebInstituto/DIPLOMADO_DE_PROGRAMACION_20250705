<?php
    session_start();
    include './ejemplo08_conexion.php';

    date_default_timezone_set('America/Caracas');
    $fecha = date("Y-m-d");
    $hora = date("H:i:s");

    $sql = "INSERT INTO comentarios (texto, fecha, hora, id_tema, id_usuario) values ('$_POST[comentario]', '$fecha', '$hora', '$_POST[id_tema]', '$_POST[id]')";

    try {
        $resultado = mysqli_query($enlace, $sql);
                $mensaje = "Comentario Registrado con exito.";
                $severidad = 1;
                header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);
    } catch (\Throwable $th) {
        $mensaje = $th->getMessage();
        $severidad = 2;
        // Cierra conexión a la BBDD
        mysqli_close($enlace);
        header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);
    }
?>