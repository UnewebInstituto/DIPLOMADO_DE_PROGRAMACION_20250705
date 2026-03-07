<?php
    include './ejemplo08_conexion.php';
    $sql = "DELETE FROM personas WHERE id =" . $_GET['id'];

    try {
        $resultado = mysqli_query($enlace, $sql);
        $mensaje = 'Registro eliminado con exito';
        $severidad = 1;
    } catch (\Throwable $th) {
        $mensaje = $th->getmessage();
        $severidad = 2;
    }
    
    header("location:/?mensaje=".$mensaje."&severidad=".$severidad);
?>