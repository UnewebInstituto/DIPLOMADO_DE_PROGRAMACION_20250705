<?php 
  /** Variables de conexion a base de datos */
  $servidor='localhost';
  $usuario='root';
  $clave='';
  $bbdd='agenda_joelys';
  //Efectuar conexion
  try {
    $enlace = mysqli_connect($servidor,$usuario,$clave,$bbdd);
   // echo 'Conexion Exitosa';
  } catch (\Throwable $th) {
    //throw $th;
    //Mostrar exception or error ocurrido
    echo $th->getMessage();
  }
?>