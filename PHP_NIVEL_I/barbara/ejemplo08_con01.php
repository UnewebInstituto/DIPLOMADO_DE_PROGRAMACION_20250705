<?php
    include './ejemplo08_conexion.php';

    $cedula = $_POST['tipo'] . $_POST['numero'];

    $sql = "SELECT * FROM personas WHERE cedula = '$cedula'";

    try {
        $resultado = mysqli_query($enlace, $sql);
        // Se verifica cantidad de registros que coínciden
        // con la consulta
        $cantidad = mysqli_num_rows($resultado);
        if ($cantidad > 0){
            // Se encontró el registro por número de cédula
            // y se extraen los datos para ser mostrados
            $datos = mysqli_fetch_array($resultado);
            include './ejemplo08_encabezado.php';
            ?>
                <div class="row">
                    <div class="mb-3 mt-3 col">
                        <label for="cedula" class="form-label">Cédula de identidad:</label>
                        <input type="text" class="form-control" readonly value="<?php echo $cedula ?>">
                    </div>
                    <div class="mb-3 mt-3 col">
                        <label for="nombre" class="form-label">Nombre:</label>
                        <input type="text" class="form-control" readonly value="<?php echo $datos['nombre']?>">
                    </div>
                </div>

                <div class="row">
                    <div class="mb-3 col">
                        <label for="apellido" class="form-label">Apellido:</label>
                        <input type="text" class="form-control" readonly value="<?php echo $datos['apellido']?>">
                    </div>
                    <div class="mb-3 col">
                        <label for="fechanac" class="form-label">Fecha de nacimiento:</label>
                        <input type="date" class="form-control" readonly value="<?php echo $datos['fechanac']?>">
                    </div>
                </div>

                <div class="row">
                    <div class="mb-3 col">
                        <label for="sexo" class="form-label">Sexo:</label>
                        <?php if ($datos['sexo'] == 'F') { ?>
                            <input type="text" class="form-control" readonly value="FEMENINO">  
                        <?php } else { ?>
                            <input type="text" class="form-control" readonly value="MASCULINO">  
                        <?php } ?>
                    </div>
                    <div class="mb-3 col">
                        <label for="telefono" class="form-label">Teléfono:</label>
                        <input type="text" class="form-control" readonly value="<?php echo $datos['telefono']?>">
                    </div>
                </div>

                <div class="row">
                    <div class="mb-3 col">
                        <label for="correoelectronico" class="form-label">Correo electrónico:</label>
                        <input type="email" class="form-control" readonly value="<?php echo $datos['correoelectronico']?>">
                    </div>
                    <div class="mb-3 col">
                        <label for="direccion" class="form-label">Dirección</label> 
                        <textarea class="form-control" rows="3" readonly><?php echo $datos['direccion']?></textarea>
                    </div>
                </div>
            <?php
                $mensaje = "Consulta realizada con éxito " . $cedula;
                $severidad = 1;
        }else{
            // No se encontró registro que coíncida
            $mensaje = "No se encontraron datos personales que coíncidan con el número de cédula " . $cedula;
            $severidad = 3;
        }
        mysqli_close($enlace);
        $_GET['mensaje'] = $mensaje;
        $_GET['severidad'] = $severidad;
        include './ejemplo08_pie.php';
    } catch (\Throwable $th) {
        $mensaje = $th->getMessage();
        $severidad = 2;
        // Cierra conexión a la BBDD
        mysqli_close($enlace);
        header('location:ejemplo08_con.php?mensaje='.$mensaje.'&severidad='.$severidad);
    } 
?>