<?php 
include './ejemplo08_encabezado.php';
#se incluyer conexion a la BBDD
include './ejemplo08_conexion.php';
# instrucciones de consulta SQL
$sql = "SELECT * FROM personas";
# Se intenta realizar la conexion
try {
    #consulta realizada con exito
    $resultado = mysqli_query($enlace, $sql);
    #se verifica si hay o no registros
    $cantidad = mysqli_num_rows($resultado);
    if ($cantidad > 0) {
        ?>
        <h2>Actualizar Registros de Personas</h2>
        <div class="table_responsive mb-3">
            <table class="table table-striped table-hover">
            <thead>
                <tr>
                <th scope="col">Cedula</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Fecha de Nacimiento</th>
                <th scope="col">Sexo</th>
                <th scope="col">Telefono</th>
                <th scope="col">Correo Electronico</th>
                <th scope="col">Direccion</th>
                <th scope="col">Accion</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                while ($datos = mysqli_fetch_array($resultado)) {
                    echo "<tr>";
                        echo "<td scope='row'>{$datos['cedula']}</td>";
                        echo "<td scope='row'>{$datos['nombre']}</td>";
                        echo "<td scope='row'>{$datos['apellido']}</td>";
                        echo "<td scope='row'>{$datos['fechanac']}</td>";
                        echo "<td scope='row'>{$datos['sexo']}</td>";
                        echo "<td scope='row'>{$datos['telefono']}</td>";
                        echo "<td scope='row'>{$datos['correoelectronico']}</td>";
                        echo "<td scope='row'>{$datos['direccion']}</td>";
                        echo "<td scope='row'><a href='./ejemplo08_act01.php?id={$datos['id']}' title='Actualizar este registro'><img src='./img/actualizar.png'></a></td>";
                    echo "</tr>";
                } 
                $mensaje = "Fin del reporte de personas";
                $severidad = 1;
                ?>
            </tbody>
        </table>
        </div> 

<?php    
    } else {
        $mensaje = "No se tienen datos registrados de personas";
        $severidad = 3;
    }
} catch (\Throwable $th) {
    //throw $th;
    # consulta fallo
    $mensaje = $th->getmessage();
    $severidad = 2;
}

$_GET['mensaje'] = $mensaje;
$_GET['severidad'] = $severidad;
include './ejemplo08_pie.php';
?>