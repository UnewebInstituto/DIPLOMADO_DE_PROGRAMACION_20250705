<?php
include './conexion.php';
// Usamos la función de PostgreSQL 'nextval'
// OJO: Esto incrementa el contador de la secuencia
$sql = "SELECT nextval('productos_id_producto_seq')";
$resultado = pg_query($enlace, $sql);
$data = pg_fetch_array($resultado);
echo "El próximo ID será: " . $data[0];
?>