<?php
    include './ejemplo08_conexion.php';
 
    $sql = "SELECT * FROM personas WHERE id =" . $_GET['id'];

    try {
        $resultado = mysqli_query($enlace, $sql);
        $datos = mysqli_fetch_array($resultado);
        include './ejemplo08_encabezado.php';
        ?>

            <form action="./ejemplo08_act02.php" method="POST">

    <div class="row">
            <div class="mb-3 mt-3 col">
                <label for="cedula" class="form-label">Cédula de identidad:</label>
                <div class="input-group">
                    <input type="text" 
                            class="form-control" 
                            value="<?php echo $datos['cedula'];?>" readonly>
                </div>
            </div>
            <div class="mb-3 mt-3 col">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre" 
                placeholder="Ingrese el nombre" name="nombre" require value= "<?php echo $datos['nombre']?>">
            </div>
        </div>

        <div class="row">
            <div class="mb-3 col">
                <label for="apellido" class="form-label">Apellido:</label>
                <input type="text" class="form-control" id="apellido" 
                placeholder="Ingrese el apellido" name="apellido" require value= "<?php echo $datos['apellido']?>">
            </div>
            <div class="mb-3 col">
                <label for="fechanac" class="form-label">Fecha de nacimiento:</label>
                <input type="date" class="form-control" id="fechanac"  name="fechanac" require value= "<?php echo $datos['fechanac']?>">
            </div>
        </div>

    <div class="row">
            <div class="mb-3 col">
                <label for="sexo" class="form-label">Sexo:</label>
                <?php if ($datos['sexo'] == 'F'){?>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="sexo" value="F" checked>
                    <label class="form-check-label" for="flexRadioDefault1">Femenino</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="sexo" value="M">
                    <label class="form-check-label" for="flexRadioDefault2">Masculino</label>
                </div>
                <?php } else { ?>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="sexo" value="F">
                    <label class="form-check-label" for="flexRadioDefault1">Femenino</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="sexo" value="M" checked>
                    <label class="form-check-label" for="flexRadioDefault2">Masculino</label>
                </div>
                <?php } ?>


            </div>
            <div class="mb-3 col">
                <label for="telefono" class="form-label">Teléfono:</label>
                <input type="text" class="form-control" id="telefono" placeholder="Ingrese el teléfono" name="telefono" require value="<?php echo $datos['telefono'];?>">
            </div>
        </div>


    <div class="row">
            <div class="mb-3 col">
                <label for="correoelectronico" class="form-label">Correo electrónico:</label>
                <input type="email" class="form-control" value="<?php echo $datos['correoelectronico'];?>" readonly>
            </div>
            <div class="mb-3 col">
                <label for="direccion" class="form-label">Dirección</label> 
                <textarea name="direccion" id="direccion" class="form-control" rows="3" placeholder="Ingrese la dirección"><?php echo $datos['direccion'];?></textarea>
            </div>
        </div>

    <button type="submit" class="btn btn-primary">Guardar cambios</button>
    <input type="hidden" name="id" value="<?php echo $datos['id'];?>">
    </form>

    <?php
        $mensaje = "Registro consultado con éxito";
        $severidad = 1;
        $_GET['mensaje'] = $mensaje;
        $_GET['severidad'] = $severidad;
        include './ejemplo08_pie.php';
    } catch (\Throwable $th) {
        //throw $th;
        $mensaje = $th->getmessage();
        $severidad = 2;
        header("location:/ejemplo08_act.php?mensaje=".$mensaje."&severidad=".$severidad);
    }

