
<?php
    include './ejemplo08_encabezado.php';
    #se incluye conexión a al BBDD
    include './ejemplo08_conexion.php';
    #instrucción de consulta en SQL
    $sql = "SELECT * FROM personas";
    #se intenta realizar la conexión
    try {
        #consulta realizada con éxito
        $resultado = mysqli_query($enlace, $sql);
        #se verifica si hay o no registros
        $cantidad = mysqli_num_rows($resultado);
        if ($cantidad > 0){
            # https://getbootstrap.com/docs/5.0/content/tables/
            ?>
            <h2>Borrar registro de Personas</h2>
            <div class= "table-responsive mb-3">
                <table class= "table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Cédula</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Fecha Nacimiento</th>
                            <th scope="col">Sexo</th>
                            <th scope="col">Teléfono</th>
                            <th scope="col">Correo Electrónico</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while ($datos = mysqli_fetch_array($resultado)){
                                echo "<tr>";
                                    echo"<td scope='row'>{$datos['cedula']}</td>";
                                    echo"<td scope='row'>{$datos['nombre']}</td>";
                                    echo"<td scope='row'>{$datos['apellido']}</td>";
                                    echo"<td scope='row'>{$datos['fechanac']}</td>";
                                    echo"<td scope='row'>{$datos['sexo']}</td>";
                                    echo"<td scope='row'>{$datos['telefono']}</td>";
                                    echo"<td scope='row'>{$datos['correoelectronico']}</td>";
                                    echo"<td scope='row'>{$datos['direccion']}</td>";
                                    echo "<td scope='row'><a href='./ejemplo08_bor01.php?id={$datos['id']}' 
                                    title='Borrar este registro'><img src='./img/borrar.png'></a></td>";
                                echo "</tr>";
                            }
                        $mensaje = "Fin del reporte de personas";
                        $severidad = 1;
                        ?>
                    </tbody>
                </table>
            </div>


            <?php
        }else{
            $mensaje = "No se tienen datos registrados de personas.";
            $severidad = 3;
        }

    } catch (\Throwable $th) {
        //throw $th;
        #consulta falló
        $mensaje = $th->getmessage();
        $severidad = 2;
    }
    $_GET['mensaje'] = $mensaje;
    $_GET['severidad'] = $severidad;
    include './ejemplo08_pie.php';
?>

