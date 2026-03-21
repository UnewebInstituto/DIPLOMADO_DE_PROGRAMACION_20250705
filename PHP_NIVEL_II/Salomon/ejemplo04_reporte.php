<?php
    include "./ejemplo04_encabezado.php";

    #Apertura, lectura y conversion en arreglo o array del archivo 
    $encuesta = file("./encuesta.txt");
    #Se procesa para generar resumen
    $resumen = [
        ['JAVA',0],
        ['PYTHON',0],
        ['JAVASCRIPT',0],
        ['PHP',0],
        ['N/A',0],
    ]; 
    for ($i=0; $i < count($encuesta); $i++) { 
        $detalle = explode(";", $encuesta[$i]);
        #0 = fecha, 1 = hora, 2 = opcion, 3 = salto de linea
        switch ($detalle[2]) {
            case 'JAVA':
                $resumen[0][1]++;
                break;
            case 'PYTHON':
                $resumen[1][1]++;
                break;
            case 'JAVASCRIPT':
                $resumen[2][1]++;
                break;
            case 'PHP':
                $resumen[3][1]++;
                break;        
            default:
            #N/A ninguna de las anteriores
                $resumen[4][1]++;
                break;
        }         
    }


    # Recorrido del arreglo
    $fecha="";
    $hora="";
    $opcion="";
    echo "<h3>Resumen</h3>";
    echo "<table class = 'table table-striped table-bordered'>";
    echo "<thead>
        <tr>
            <th>Opcion</th>
            <th>Cantidad</th>
            <th>Porcentaje</th>
            <th>Grafico</th>
        </tr>
    </thead>";
    echo "<tbody>";
        for ($i=0; $i < count($resumen); $i++) { 
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
    echo "<thead>
            <tr>
                <th scope='col'>Fecha</th>
                <th scope='col'>Hora</th>
                <th scope='col'>Repuesta</th>
            </tr>
        </thead>";
    echo "<tbody>";
    foreach ($encuesta as $key => $value) {
        echo "<tr>";
        /* echo $value . "<br>"; */

    #Se realiza la separacion del contenido de $value generado por la encuesta en el archivo plano, a traves del delimitador ";", para obtener el arreglo "$datos"
        $datos = explode(';',$value);
        echo "<td>{$datos[0]}</td>" ; #fecha
        echo "<td>{$datos[1]}</td>" ; #hora
        echo "<td>{$datos[2]}</td>" ; #opcion
        echo "<td>{$datos[3]}</td>" ; #caracter de salto linea invisible
        echo "</tr>";
    }
    echo "</tbody>";
    echo "</table>";
    include "./ejemplo04_pie.php";
?>