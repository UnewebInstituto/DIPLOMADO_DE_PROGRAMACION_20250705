<?php
try {
    $enlace = pg_connect("host=localhost port=5432 dbname=carrito_kaira user=postgres password=123456");
    echo "Conexion establecida con exito";

} catch (\Throwable $th) {
    echo "ERRROR:" . $th->get_message();
}

?>