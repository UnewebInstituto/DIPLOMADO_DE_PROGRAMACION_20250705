<?php
    include "./ejemplo04_header.php";
    /**
     * Apertura, lectura y conversión en arreglo
     */
    $encuesta = file("./encuesta.txt");
    /**
     * Se procesa para generar resumen
     */
    $resumen = [
        ['js',0],
        ['python',0],
        ['PHP',0],
        ['NA',0],
    ];
    for ($i=0; $i < count($encuesta) ; $i++) { 
        $detalle = explode(";",$encuesta[$i]);
        /**
         * 0: Fecha
         * 1: Hora
         * 2: Opción
         * 3: Salto de línea
         */
        switch ($detalle[2]) {
            case 'js':
                $resumen[0][1]++;
                break;
            case 'python':
                $resumen[1][1]++;
                break;
            case 'PHP':
                $resumen[2][1]++;
                break;
            default:
                // NA
                $resumen[3][1]++;
                break;
        }
    }
    /**
    * echo "<hr>";
    * echo var_dump($resumen);
    * echo "<hr>";
    */


    /**
     * Recorrido del arreglo
     */
    $fecha='';
    $hora='';
    $opcion='';
    echo "<h3>Resumen</h3>";
    echo "<table class='table table-striped table-bordered'>";
    echo "<thead>
        <tr>
            <th>Opción</th>
            <th>Cantidad</th>
            <th>Porcentaje</th>
            <th>Gráfico</th>
        </tr>
    </thead>";
    echo "<tbody>";
    for ($i=0; $i < count($resumen) ; $i++) { 
        echo "<tr>";
            echo "<td>{$resumen[$i][0]}</td>";
            echo "<td>{$resumen[$i][1]}</td>";
            $calculo = $resumen[$i][1]/count($encuesta)*100;
            $calculo_formato = number_format($calculo,2,'.',',');
            echo "<td>{$calculo_formato}%</td>";
            echo "<td>
                <div class='progress'>
                    <div class='progress-bar progress-bar-striped progress-bar-animated' style='width:{$calculo_formato}%'>$calculo_formato</div>
                </div>
                </td>";
        echo "</tr>";
    }


    echo "</tbody>";
    echo "</table>";
    
    echo "<hr>";
    echo "<h3>Detalle</h3>";
    echo "<table class='table table-hover'>";
    echo "
        <thead>
            <tr>
                <th scope='col'>Fecha</th>
                <th scope='col'>Hora</th>
                <th scope='col'>Opción seleccionada</th>
            </tr>
        </thead>
    ";
    echo "<tbody>";
    foreach ($encuesta as $key => $value) {
        echo "<tr>";
        #echo $value . "<br>";
        /**
         * Se realiza el revanado del contenido de $value
         * a través del delimitador ";", para obtener el 
         * arreglo "$datos"
         */
        $datos = explode(';',$value);
        echo "<td>{$datos[0]}</td>" ; #fecha
        echo "<td>{$datos[1]}</td>" ; #hora
        echo "<td>{$datos[2]}</td>" ; #opción
        echo "<td>{$datos[3]}</td>" ; #caracter de salto de línea no visible
        echo "</tr>";
    }
    echo "</tbody>";
    echo "</table>";
    include "./ejemplo04_footer.php";
?>