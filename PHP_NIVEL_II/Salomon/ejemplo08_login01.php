<?php
    session_start();
    include './ejemplo08_conexion.php';

    $sql = "SELECT * FROM USUARIOS WHERE correo_electronico = '$_POST[correo_electronico]'";

    try {
        $resultado = mysqli_query($enlace, $sql);
        $cantidad = mysqli_num_rows($resultado);
        if ($cantidad > 0) {
            #Encontro el correo
            $data = mysqli_fetch_array($resultado);
            if (md5($_POST['clave']) == $data['clave']) {
                #Clave correcta
                $_SESSION['id'] = $data['id'];
                $_SESSION['correo_electronico'] = $data['correo_electronico'];
                $_SESSION['nombre'] = $data['nombre'];
                $_SESSION['apellido'] = $data['apellido'];
                $_SESSION['foto'] = $data['foto'];
                $mensaje = "Bienvenido al foro.";
                $severidad = 1;
                header('location:ejemplo08_login.php?mensaje='.$mensaje.'&severidad='.$severidad);

            }else{
                #Clave incorrecta
                $mensaje = "Clave Incorreta.";
                $severidad = 3;
                header('location:ejemplo08_login.php?mensaje='.$mensaje.'&severidad='.$severidad);
            }

        }else{
            #Correo no existe en la bbdd
            $mensaje = "No se han encontrado coincidencias con el correo proporsionado intente de nuevo.";
            $severidad = 3;
            header('location:ejemplo08_login.php?mensaje='.$mensaje.'&severidad='.$severidad);
        }
    } catch (\Throwable $th) {
        $mensaje = $th->getMessage();
        $severidad = 2;
        // Cierra conexión a la BBDD
        mysqli_close($enlace);
        header('location:ejemplo08_login.php?mensaje='.$mensaje.'&severidad='.$severidad);
    }
?>