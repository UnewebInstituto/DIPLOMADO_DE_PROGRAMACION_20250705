<?php
    try{
        $enlace = pg_connect("host=localhost port=5432 dbname=carrito_ricardo user=postgres password=123456");
        echo "Conexion establecida con exito";
    } catch (\Throwable $th)
    {
        echo "ERROR: " .
        $th -> get_message();
    }


?>