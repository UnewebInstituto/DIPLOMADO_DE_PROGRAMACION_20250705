<?php
//Declaracion de variables para la conexion a la base de datos
$servidor = 'localhost';
$usuario = 'root';
$clave = '';
$bbdd = 'agenda_ytzali';

try {
    //Efectuar conexion
    $enlace = mysqli_connect($servidor, $usuario, $clave, $bbdd);
    echo 'Conexion exitosa';
} catch (\Throwable $th) {
    //throw $th;}
    //Mostrar la excepcion o error ocurrido
    echo $th->getMessage();
}


?>