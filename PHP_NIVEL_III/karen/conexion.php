<?php
    try {
        //code...
        $enlace = pg_connect("host=localhost port=5432 dbname=carrito_karen user=postgres password=123456");
        echo "Conexión establecida con éxito";
    } catch (\Throwable $th) {
        echo "ERROR: ". $th->get_message();
    }
?>