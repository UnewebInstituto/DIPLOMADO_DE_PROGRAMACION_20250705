<?php
  include './ejemplo08_conexion.php';

  $cedula = $_POST['tipo'] . $_POST['numero'];
  
  $sql = "SELECT * FROM personas WHERE cedula = '$cedula'";

  try {
    $resultado = mysqli_query($enlace, $sql);
    //Se verifica cantidad de registros que coinciden con la consulta
    $cantidad = mysqli_num_rows($resultado);
    if ($cantidad > 0) {
      //Se encontro el registro por numero de cedula
      //Y se extraen los datos a ser mostrados
      $datos = mysqli_fetch_array($resultado);
      include './ejemplo08_encabezado.php';
      ?>
      <div class="row">
        <div class="mb-3 mt-3 col">
          <label for="cedula" class="form-label">Cedula de Identidad:</label>
            <input type="text" class="form-control" readonly value="<?php echo $cedula ?>">
        </div>
        <div class="mb-3 mt-3 col">
          <label for="nombre" class="form-label">Nombre:</label>
          <input type="text" class="form-control" readonly value="<?php echo $datos['nombre'] ?>">
        </div>
      </div>

      <div class="row">
        <div class="mb-3 mt-3 col">
          <label for="apellido" class="form-label">Apellido:</label>
          <input type="text" class="form-control" readonly value="<?php echo $datos['apellido'] ?>">
        </div>
        <div class="mb-3 mt-3 col">
          <label for="fechanac" class="form-label">Fecha de Nacimiento:</label>
          <input type="date" class="form-control" readonly value="<?php echo $datos['fechanac'] ?>">
        </div>
      </div>

      <div class="row">
        <div class="mb-3 mt-3 col">  
          <label for="sexo" class="form-label">Sexo:</label>
          <?php if ($datos['sexo'] == 'F') { ?>
            <input type="text" class="form-control" readonly value="Femenino">
          <?php } else { ?>
            <input type="text" class="form-control" readonly value="Masculino">
          <?php } ?>
        </div>

        <div class="mb-3 mt-3 col">
          <label for="telefono" class="form-label">Telefono:</label>
          <input type="text" class="form-control" readonly value="<?php echo $datos['telefono'] ?>">
        </div>
        </div>

      <div class="row">
        <div class="mb-3 mt-3 col">
          <label for="correoelectronico" class="form-label">Correo Electronico:</label>
          <input type="email" class="form-control" readonly value="<?php echo $datos['correoelectronico'] ?>">
        </div>
        
        <div class="mb-3 mt-3 col">
          <label for="direccion" class="form-label">Direccion:</label>
          <textarea name="direccion" class="form-control" rows="3" readonly><?php echo $datos['direccion'] ?></textarea>
        </div>
      </div>
  <?php
  $mensaje = "Consulta realizada con exito para la cedula: " . $cedula;
      $severidad = 1; 
    } else {
      //No se encontro registro que coincidan
      $mensaje = "No se encontraron datos personales que coincidan con el numero de cedula " . $cedula;
      $severidad = 3; 
    }
    mysqli_close($enlace);
    $_GET['mensaje'] = $mensaje;
    $_GET['severidad'] = $severidad;
    include './ejemplo08_pie.php';
  } catch (\Throwable $th) {
    //throw $th;
    $mensaje = $th -> getMessage();
    $severidad = 2;
    mysqli_close($enlace);
    //header('location:ejemplo08_con.php?mensaje='.$mensaje.'&severidad='.$severidad);
  }
  
?>