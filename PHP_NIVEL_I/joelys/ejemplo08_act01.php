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
                <label for="cedula" class="form-label">Cedula de Identidad:</label>
                <div class="input-group">
                <input type="text" class="form-control" value="<?php echo $datos['cedula']; ?>" readonly>
                </div>
            </div>
            <div class="mb-3 mt-3 col">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre" placeholder="Ingrese el nombre" name="nombre" require value="<?php echo $datos['nombre']; ?>">
             </div>
            </div>

            <div class="row">
            <div class="mb-3 mt-3 col">
                <label for="apellido" class="form-label">Apellido:</label>
                <input type="text" class="form-control" id="apellido" placeholder="Ingrese el apellido" name="apellido" require value="<?php echo $datos['apellido']; ?>">
            </div>
            <div class="mb-3 mt-3 col">
                <label for="fechanac" class="form-label">Fecha de Nacimiento:</label>
                <input type="date" class="form-control" id="fechanac" name="fechanac" require value="<?php echo $datos['fechanac']; ?>">
            </div>
            </div>

            <div class="row">
            <div class="mb-3 mt-3 col">  
                <label for="sexo" class="form-label">Sexo:</label>
                <?php if ($datos['sexo'] == 'F') { ?>
                    <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="sexo" checked>
                    <label class="form-check-label" for="radioDefault1" value="f">
                        Fememino
                    </label>
                    </div>
                    <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="sexo">
                    <label class="form-check-label" for="radioDefault2" value="m">
                        Masculino
                    </label>
                    </div>
                <?php } else { ?>
                    <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="sexo">
                    <label class="form-check-label" for="radioDefault1" value="f">
                        Fememino
                    </label>
                    </div>
                    <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" id="sexo" checked>
                    <label class="form-check-label" for="radioDefault2" value="m">
                        Masculino
                    </label>
                    </div>
                <?php } ?>
            </div>
            <div class="mb-3 mt-3 col">
                <label for="telefono" class="form-label">Telefono:</label>
                <input type="text" class="form-control" id="telefono" placeholder="Ingrese el Telefono" name="telefono" require value="<?php echo $datos['telefono']; ?>">
            </div>
            
            <div class="row">
            <div class="mb-3 mt-3 col">
                <label for="correoelectronico" class="form-label">Correo Electronico:</label>
                <input type="email" class="form-control" value="<?php echo $datos['correoelectronico']; ?>" readonly>
            </div>
            
            <div class="mb-3 mt-3 col">
                <label for="direccion" class="form-label">Direccion:</label>
                <textarea name="direccion" id="direccion" class="form-control" rows="3" placeholder="Ingrese la Direccion"><?php echo $datos['direccion']; ?></textarea>
            </div>
            </div>

            <button type="submit" class="btn btn-primary">Guardar Cambios</button>
            <input type="hidden" name="id" value="<?php echo $datos['id']; ?>">
        </form>

        <?php
        $mensaje = "Registro fue consultado con exito";
        $severidad = 1;
        include './ejemplo08_pie.php';

        $_GET['mensaje'] = $mensaje;
        $_GET['severidad'] = $severidad;
    } catch (\Throwable $th) {
        //throw $th;
        $mensaje = $th->getmessage();
        $severidad = 2;
        header("location:/?ejemplo08_act.php?mensaje=" . $mensaje . "&severidad=" . $severidad);
    }

    
   
?>
