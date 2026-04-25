<?php
    session_start();
    include './conexion.php';

    switch ($_REQUEST['id']) {
        case '1':
            # Efectuar validación del usuario
            $sql = "SELECT * FROM usuarios WHERE correo = '$_REQUEST[correo_electronico]'";
            try {                        
                $resultado = pg_query($enlace, $sql);
                $cantidad = pg_num_rows($resultado);
                if ($cantidad > 0){
                    # Encontro el correo
                    $data = pg_fetch_array($resultado);
                    if (md5($_REQUEST['clave']) == $data['clave']){
                        # Clave correcta, se crean variables de sesión
                        $_SESSION['id_usuario'] = $data['id_usuario'];
                        $_SESSION['correo'] = $data['correo'];
                        $_SESSION['cedula'] = $data['cedula'];
                        $_SESSION['nombre_apellido'] = $data['nombre_apellido'];
                        $_SESSION['tipo_usuario'] = $data['tipo_usuario'];
                        if ($_SESSION['tipo_usuario']=='ADMINISTRADOR'){
                            $mensaje = "Bienvenido Administrador";
                        }else{
                            $mensaje = "Bienvenido Visitante";
                        }
                        
                        $severidad = 1;
                        header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);
                    }else{
                        # Clave incorrecta
                        $mensaje = "Clave incorrecta";
                        $severidad = 3;
                        header('location:ejemplo08_login.php?mensaje='.$mensaje.'&severidad='.$severidad);
                    }
                }else{
                    # Correo no existe
                    $mensaje = "Correo electrónico no registrado";
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

            break;
        
        default:
            # code...
            break;
    }




?>