

<?php
    include './ejemplo08_encabezado.php';
    
    include './ejemplo08_conexion.php';

    $sql = "SELECT * FROM comentarios WHERE id_tema = '$_GET[id_tema]' ORDER BY fecha, hora DESC";



    try {
        $resultado = mysqli_query($enlace, $sql);
        $cantidad = mysqli_num_rows($resultado);
        echo "<div class='text-center'>";
        echo "<h2 class='text-center'>Comentarios registrados</h2>";
        echo "<a href='./'>Ir al Inicio</a> ";
        echo "</div>";
        if ($cantidad > 0){
        # Se encontraron temas registrados
        ?>
            <div class="table-responsive mb-3">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Comentario</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Hora</th>
                        </tr>
                    </thead>
                    <tbody>
                        

                        <?php
                            while ($datos = mysqli_fetch_array($resultado)){
                                echo "<tr>";
                                    echo "<td scope='row'><a href='./ejemplo08_comentario.php?id_tema={$datos['id']}' title='Añadir comentario acerca del tema'>{$datos['titulo']}</a></td>";
                                    echo "<td scope='row'>{$datos['fecha']}</td>";
                                    echo "<td scope='row'>{$datos['hora']}</td>";
                                echo "</tr>";
                            }
                        $mensaje = "Fin de los temas registrados";
                        $severidad = 1;
                        ?>
                    </tbody>
                </table>
            </div>
    <?php
        }else{
            # No hay temas registrados
            $mensaje = "No hay temas registrados";
            $severidad = 3;
          }
    } catch (\Throwable $th) {
        $mensaje = $th->getMessage();
        $severidad = 2;
        // Cierra conexión a la BBDD
        mysqli_close($enlace);
    }
    $_GET['mensaje'] = $mensaje;
    $_GET['severidad'] = $severidad;
    include './ejemplo08_pie.php';
?>