<?php 
 include './ejemplo08_conexion.php';
 //var_dump($_POST);
 $cedula = $_POST['tipo'] . $_POST['numero'];
 $sql = "INSERT INTO personas(cedula, nombre, apellido, fechanac, sexo, telefono, correoelectronico, direccion) VALUES ('$cedula', '$_POST[nombre]', '$_POST[apellido]', '$_POST[fechanac]', '$_POST[sexo]', '$_POST[telefono]', '$_POST[correoelectronico]', '$_POST[direccion]')";
 //Se intentara almacenar en BBDD
 $mensaje = "";
 $severidad = 0;
 try {
  $resultado = mysqli_query($enlace, $sql);
  $mensaje = "datos personales fueron almacenados con exito";
  $severidad = 1;
 } catch (\Throwable $th) {
  //throw $th;
  if (mysqli_errno($enlace) == 1062) {
    $mensaje = "Datos personales no se almacenaron motivado a que la cedula " . $cedula . " o correo electronico " . $_POST['correoelectronico'] . " ya se encuentran registrados.";
    $severidad = 3;
  } else {
     $mensaje = "datos personales no fueron almacenados. Codigo:" . mysqli_errno($enlace) . ", Detalle:" . $th->getMessage();
     $severidad = 2;
  }
  
 } finally {
  //Cierra conexion con la base de datos
  mysqli_close($enlace);
  header('location:ejemplo08_ing.php?mensaje='.$mensaje.'&severidad='.$severidad);
 }
?>