<?php
    try {
        $enlace = pg_connect("host=localhost port=5432 dbname=carrito_profesor user=postgres password=123456");
        echo "Conexión establecida con éxito";
    } catch (\Throwable $th) {
        echo "ERROR: " . $th->get_message();
    }
?>