<?php
    /**
     * variables de conexión a la BBDD
     */
    $servidor='localhost';
    $usuario='root';
    $clave='';
    $bbdd='agenda_kaira';
    try {
        // Efectuar conexión
        $enlace =  mysqli_connect($servidor,$usuario,$clave,$bbdd);
        // echo 'Conexión exitosa';
    } catch (\Throwable $th) {
        //throw $th;
        // Mostrar la excepción o error ocurrido
        echo $th->getMessage();
    }
?>