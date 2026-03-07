
<?php
    include './ejemplo08_encabezado.php';
    # Se incluye conexion a la BBDD
    include './ejemplo08_conexion.php';
    # Intruccion de consulta en SQL
    $sql = "SELECT * from personas";
    # Se intenta realizar la conexion
    try {
        # Consulta realizada con éxito
        $resultado = mysqli_query($enlace, $sql);
        #Se vereifica si hay o no registros
        $cantidad = mysqli_num_rows($resultado);
        if ($cantidad > 0){
            # https://getbootstrap.com/docs/5.0/content/tables/
            ?>
            <h2>Reporte de Personas</h2>
            <div class= "table-responsive mb-3">
                <table class= "table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Cédula</th> 
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Fecha De Nacimiento</th>
                            <th scope="col">Sexo</th>
                            <th scope="col">Teléfono</th>
                            <th scope="col">Correo Electrónico</th>
                            <th scope="col">Dirección</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while ($datos = mysqli_fetch_array($resultado)){
                                echo "<tr>";
                                    echo "<td scope='row'>{$datos['cedula']}</td>";
                                    echo "<td scope='row'>{$datos['nombre']}</td>";
                                    echo "<td scope='row'>{$datos['apellido']}</td>";
                                    echo "<td scope='row'>{$datos['fechanac']}</td>";
                                    echo "<td scope='row'>{$datos['sexo']}</td>";
                                    echo "<td scope='row'>{$datos['telefono']}</td>";
                                    echo "<td scope='row'>{$datos['correoelectronico']}</td>";
                                    echo "<td scope='row'>{$datos['direccion']}</td>";                                
                                echo "</tr>";
                            }
                    $mensaje = "Fin del reporte de Personas.";
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
        # Consulta falló
        $mensaje = $th->getmessage();
        $severidad = 2;
    }
    $_GET['mensaje'] = $mensaje;
    $_GET['severidad'] = $severidad;
    include './ejemplo08_pie.php';
?>

