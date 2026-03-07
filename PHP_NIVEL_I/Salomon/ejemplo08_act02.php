<?php
    include './ejemplo08_conexion.php';
    $sql = "UPDATE personas SET nombre = '".$_POST['nombre']."', apellido =  '".$_POST['apellido']."', fechanac = '".$_POST['fechanac']."', sexo = '".$_POST['sexo']."', telefono = '".$_POST['telefono']."', direccion = '".$_POST['direccion']."' WHERE id =" . $_POST['id'];

    try {
        $resultado = mysqli_query($enlace, $sql);
        $mensaje = 'Registro fue actualizado con exito';
        $severidad = 1;
    } catch (\Throwable $th) {
        $mensaje = $th->getmessage();
        $severidad = 2;
    }    
    header("location:/ejemplo08_act.php?mensaje=".$mensaje."&severidad=".$severidad);
?>