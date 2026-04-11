<?php
    session_start();
    include './ejemplo08_conexion.php';

    date_default_timezone_set('America/Caracas');

    $fecha = date("Y-m-d");
    $hora = date("H:i:s");

    $sql = "INSERT INTO temas (titulo, fecha, hora, id_usuario) values ('$_POST[tema]', '$fecha',  '$hora', '$_SESSION[id]')";

    try {
        $resultado = mysqli_query($enlace, $sql);
            $mensaje = "El tema se registro con éxito";
            $severidad = 1;
            header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);
    } catch (\Throwable $th) {
        $mensaje = $th->getMessage();
        $severidad = 2;
        // Cierra conexión a la BBDD
        mysqli_close($enlace);
        header('location:ejemplo08_tema.php?mensaje='.$mensaje.'&severidad='.$severidad);
    }

?>