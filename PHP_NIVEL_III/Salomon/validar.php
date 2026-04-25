    <?php
        session_start();
        include './conexion.php';

        /**
         * $_REQUEST[], evalúa de manera indistinta, bien sea $_GET[] o $_POST[]
         */
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
                            header('location:login.php?mensaje='.$mensaje.'&severidad='.$severidad);
                        }
                    }else{
                        # Correo no existe
                        $mensaje = "Correo electrónico no registrado";
                        $severidad = 3;
                        header('location:login.php?mensaje='.$mensaje.'&severidad='.$severidad);
                    }
                } catch (\Throwable $th) {
                    $mensaje = $th->getMessage();
                    $severidad = 2;
                    // Cierra conexión a la BBDD
                    pg_close($enlace);
                    header('location:login.php?mensaje='.$mensaje.'&severidad='.$severidad);
                }

                break;
            
            case '2':
                # Registrar Nuevo Usuario
                $sql = "INSERT INTO usuarios(cedula, nombre_apellido, correo, clave, tipo_usuario) VALUES ('$_REQUEST[cedula]', '$_REQUEST[nombre_apellido]', '$_REQUEST[correo_electronico]', md5('$_REQUEST[clave]'), 'VISITANTE')";
            
            try {
                $resultado = pg_query($enlace, $sql);
                $mensaje = "Usuario Visitante con exito, por favor proceda con el inicio de sesion";
                $severidad = 1;
                header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);
            } catch (\Throwable $th) {
            $mensaje = $th->getMessage();
            $severidad = 2;
            // Cierra conexión a la BBDD
            pg_close($enlace);
            header('location:login.php?mensaje='.$mensaje.'&severidad='.$severidad);
            } 
            break;

            case '3':
                # Anadir y Crear Productos
                /* Solo se admite archivos jpg y png */
/*                 echo var_dump($_FILES['imagen']);
                echo "<hr>";
                echo $_FILES['imagen']['name'];
                echo "<hr>";
                echo $_FILES['imagen']['tmp_name']; 
                echo "<hr>";
                echo var_Dump(getimagesize($_FILES['imagen']['tmp_name']));
                $detalle_imagen = getimagesize($_FILES['imagen']['tmp_name']) */
                if ($detalle_imagen[2] == 2 || $detalle_imagen[2] == 3 ) {
                    # 2: JPG
                    # 3: PNG
                $mensaje = "Imagen cargada con éxito";
                $severidad = 1;
                header('location:/menu.php?mensaje='.$mensaje.'&severidad='.$severidad);
                }else{
                $mensaje = "Formato de imagen no válido, sólo se admiten archivos de tipo *.jpg o *.png";
                $severidad = 2;
                header('location:/menu.php?mensaje='.$mensaje.'&severidad='.$severidad);
                }
                break;

            default:
                # code...
                break;
        }




    ?>