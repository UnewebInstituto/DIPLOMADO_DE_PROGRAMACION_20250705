<!-- para el uso de aparencia bootstrap 
 https://www.w3schools.com/bootstrap5/bootstrap_forms.php
 
 # https://getbootstrap.com/docs/5.0/content/tables/
 para tablas con bootstrap
 -->

<?php
    include './ejemplo08_encabezado.php';
    
    #Se oncluye conexion a la base de datos
    include  './ejemplo08_conexion.php';
    
    #instruccion de consulta en sql 
    $sql = "SELECT * from personas";

    #Se intenta realizar la conexion 
    try {
        #Consulta realizada con exito
        $resultado = mysqli_query($enlace, $sql);
        #Se verifica si hay o no registros
        $cantidad = mysqli_num_rows($resultado);
        if ($cantidad > 0) {
            ?>
            <h2>Reporte de Personas</h2>
                <div class="table-responsive mb-3">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Cedula</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Fechanac</th>
                                <th scope="col">Sexo</th>
                                <th scope="col">Telefono</th>
                                <th scope="col">Correo</th>
                                <th scope="col">Direccion</th>
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
                                        echo "<td scope='row'>{$datos['correo']}</td>";
                                        echo "<td scope='row'>{$datos['direccion']}</td>";
                                    echo "</tr>";
                                }
                            $mensaje = "Fin del reporte de Personas";
                            $severidad = 1;
                            ?>
                        </tbody>   
                    </table>
                </div>
            
            <?php

        }else {
        $mensaje = "No se tienen datos registrados de personas";
        $severidad = 3;   
        }

    } catch (\Throwable $th) {
        #Consulta erronea o fallo 
        $mensaje = $th->getmessage();
        $severidad = 2; 
    }
    $_GET['mensaje'] = $mensaje;
    $_GET['severidad'] = $severidad;

    include './ejemplo08_pie.php';
?>


