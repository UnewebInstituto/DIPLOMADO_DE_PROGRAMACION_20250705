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
                        $_SESSION['activo'] = true;
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
            # Registrar nuevo usuario
            $sql = "INSERT INTO usuarios(cedula, nombre_apellido, correo, clave, tipo_usuario) VALUES ('$_REQUEST[cedula]', '$_REQUEST[nombre_apellido]', '$_REQUEST[correo_electronico]', md5('$_REQUEST[clave]'), 'VISITANTE')";

            try {
                $resultado = pg_query($enlace, $sql);
                $mensaje = "Usuario visitante creado con exito, por favor proceda a ingresar al sistema.";
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
            # Crear productos
            /**
             * Sólo se admiten archivos de formato *.jpg o *.png
            */
            //echo var_dump($_FILES['imagen']);
            //echo "<hr>";
            //echo $_FILES['imagen']['name'];
            //echo "<hr>";
            //echo $_FILES['imagen']['tmp_name'];
            //echo "<hr>";
            //echo var_dump(getimagesize($_FILES['imagen']['tmp_name']));
            
            $detalle_imagen = getimagesize($_FILES['imagen']['tmp_name']);
            if ($detalle_imagen[2] == 2 || $detalle_imagen[2] == 3 ){
                // 2: jpeg
                // 3: png
                // imagen, nombre, precio, cantidad, descripcion
                $sql_archivo = "SELECT nextval('productos_id_producto_seq')";
                $resultado_archivo = pg_query($enlace, $sql_archivo);
                $data_archivo = pg_fetch_array($resultado_archivo);
                /**
                 * En la posición 0 de $data_archivo, está contenido 
                 * el número del id, del producto que se vaya a almacenar
                 * $data_archivo[0]
                 */
                if ($detalle_imagen[2] == 2){
                    $extension = ".jpg";
                }else{
                    $extension = ".png";
                }

                // Se incrementa en 1 el id obtenido para que se
                // corresponda al producto_id almacenado
                $data_archivo[0]++;
                $nombre_archivo = './img/' . $data_archivo[0] . $extension;

                $sql = "INSERT INTO productos(nombre_producto, descripcion, nombre_archivo, precio, existencia) VALUES ('$_REQUEST[nombre]','$_REQUEST[descripcion]','$nombre_archivo','$_REQUEST[precio]', '$_REQUEST[cantidad]')";
                $mensaje = "Producto cargado con éxito";
                $severidad = 1;
                //echo "<hr>";
                //echo $sql;
                //echo "<hr>";
                
                $resultado = pg_query($enlace, $sql);

                move_uploaded_file($_FILES['imagen']['tmp_name'],$nombre_archivo );

                header('location:/menu.php?mensaje='.$mensaje.'&severidad='.$severidad);
            }else{
                $mensaje = "Formato de imagen no válido, sólo se admiten archivos de tipo *.jpeg o *.png";
                $severidad = 2;
                header('location:/menu.php?mensaje='.$mensaje.'&severidad='.$severidad);
            }
            break;
        case '4':
            # Agregar al carrito de compras
            $session_id = session_id();
            $sql = "INSERT INTO agregar(session_id, id_producto) VALUES ('$session_id','$_REQUEST[id_producto]')";
            $resultado = pg_query($enlace, $sql);
            $_SESSION['carrito'] = true;
            $mensaje = "Producto añadido al carrito de compras";
            $severidad = 1;
            header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);
            break;

        case '5':
            # Borrar del carrito de compras
            $session_id = session_id();
            $id_producto = $_REQUEST['id_producto'];
            $sql = "DELETE FROM agregar WHERE session_id = '". $session_id . "' AND id_producto = '" . $id_producto . "'";
            
            $resultado = pg_query($enlace, $sql);
            $mensaje = "Producto fue borrado del carrito de compras";
            $severidad = 3;
            header('location:/ver_carrito.php?mensaje='.$mensaje.'&severidad='.$severidad);
            
            //echo $sql;
            break;

        default:
            # code...
            break;
    }



?>