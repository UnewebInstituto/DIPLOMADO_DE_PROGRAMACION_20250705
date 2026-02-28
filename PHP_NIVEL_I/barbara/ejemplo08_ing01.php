<?php
    //conexión a la BBDD
    include 'ejemplo08_conexion.php';
    //var_dump($_POST);
    $cedula = $_POST['tipo'] . $_POST['numero'];
    $sql = "INSERT INTO personas(cedula, nombre, apellido, fechanac, sexo, telefono, correoelectronico, direccion) VALUES ('$cedula', '$_POST[nombre]', '$_POST[apellido]', '$_POST[fechanac]', '$_POST[sexo]', '$_POST[telefono]', '$_POST[correoelectronico]', '$_POST[direccion]')";

    //se intentará almacenar en BBDD
    $mensaje = "";
    $severidad = 0;

    try {
        $resultado = mysqli_query($enlace, $sql);
        $mensaje = "Datos personales, fueron almacenados con éxito";
        $severidad = 1;
    } catch (\Throwable $th) {
         //throw $th;
        if (mysqli_errno($enlace) == 1062){
            $mensaje = "Datos personales no se almacenaron motivado a que la cédula " .$cedula ." o el correo electrónico " .$_POST['correoelectronico'] .  " ya se encuentran registrados.";
            $severidad = 3;
        }else{
            $mensaje = "Datos personales no fueron almacenadados, Código: " . mysqli_errno($enlace) . ", Detalle: " . $th->getMessage();
            $severidad = 2;
        }
    } finally{
        //cierra conxión a la BBDD
        mysqli_close($enlace);
        header('location:ejemplo08_ing.php?mensaje='.$mensaje.'&severidad='.$severidad);
    }
?>