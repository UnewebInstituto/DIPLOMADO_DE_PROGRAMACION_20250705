<?php include "./ejemplo04_encabezado.php"; ?>

<?php
    #Apertura, lectura y conversion en arreglo
    $encuesta = file("./encuesta.txt");
    #Se procesa para generar resumen
    $resumen = [
        ['java',0],
        ['python',0],
        ['javascript',0],
        ['php',0],
        ['na',0],
    ];
    for ($i=0; $i < count($encuesta) ; $i++) { 
        $detalle = explode(";",$encuesta[$i]);
        switch ($detalle[2]) {
            case 'java':
                $resumen[0][1]++;
                break;
            case 'python':
                $resumen[1][1]++;
                break;
            case 'javascript':
                $resumen[2][1]++;
                break;
            case 'php':
                $resumen[3][1]++;
                break;    
            default:
                $resumen[4][1]++;
                break;
        }
    }
    /*
    echo "<br>";
    echo var_dump($resumen);
    echo "<br>";
    */
    #recorrido del arreglo
    $fecha = "";
    $hora = "";
    $opcion = "";
    echo "<h3>Resumen</h3>";
    echo "<table class='table striped table-bordered bordered-primary'>";
    echo "
    <thead>
        <tr>
            <th>
                Opcion
            </th>
            <th>
                Cantidad
            </th>
            <th>
                Porcentaje
            </th>
            <th>
                Grafico
            </th>
        </tr>
    </thead>
    ";
    echo "<tbody>";

    for ($i=0; $i < count($resumen) ; $i++) { 
        echo "<tr>";
            echo "<td>{$resumen[$i][0]}</td>";
            echo "<td>{$resumen[$i][1]}</td>";
            $calculo = $resumen[$i][1]/count($encuesta)*100;
            $calculo_format = number_format($calculo,2,'.',',');
            echo "<td>" . number_format($calculo,2,'.',',') . "%</td>";
            echo "<td><div class='progress' role='progressbar' aria-label='Basic example' aria-valuenow='{$calculo_format}' aria-valuemin='0' aria-valuemax='100'>
                <div class='progress-bar' style='width: {$calculo_format}%'>{$calculo_format}</div>
            </div></td>";
        echo "</tr>";
    }

    echo "</tbody>";
    echo "</table>";
    echo "<br>";
    echo "<h3>Detalle</h3>";
    echo "<table class='table table-hover'>";
    echo "
    <thead>
        <tr>
            <th scope='col'>
                Fecha
            </th>
            <th scope='col'>
                Hora
            </th>
            <th scope='col'>
                Opcion Seleccionada
            </th>
        </tr>
    </thead>
    ";
    echo "<tbody>";
    foreach ($encuesta as $key => $value) {
        echo "<tr>";
        //echo $value . "<br>";
        #Se realiza el rebanado del contenido de $value a travez del delimitador ";" para obtener el arrego $datos 
        $datos = explode(';',$value);
        
        echo "<td> {$datos[0]} </td>";
        echo "<td> {$datos[1]} </td>";
        echo "<td> {$datos[2]} </td>";
        echo "<td> {$datos[3]} </td>"; 
    }
        echo "</tr>";
    echo "</tbody>";
    echo "</table>";
?>

<?php include "./ejemplo04_pie.php"; ?>