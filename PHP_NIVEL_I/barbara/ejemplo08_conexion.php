<?php 
    /**
     * variables de conexión a la BBDD
     */
    $servidor='localhost';
    $usuario='root';
    $clave='';
    $bbdd='agenda_barbara';

    try{
        //efectuar conexión
        $enlace = mysqli_connect($servidor,$usuario,$clave,$bbdd);
        //echo 'Conexión exitosa';
    }catch(\Throwable $th) {
        //throw $th;
        //mostar la excepción o error ocurrido
        echo $th->getMessage();
    }
?>