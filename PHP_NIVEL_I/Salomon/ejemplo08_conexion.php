<?php
  /* variables de conexion de Base de datos (bbdd) */
  $servidor='localhost';
  $usuario='root';
  $clave='';
  $bbdd='agenda_salomon';
  
  try { 
    //Efectuar conexion 
    $enlace = mysqli_connect($servidor,$usuario,$clave,$bbdd);
    echo 'Cnexion Exitosa...';
  } catch (\Throwable $th) {
    //throw $th;
    //Mostrar la excepcion o error ocurrido
    echo $th->getMessage();
  }
?>
