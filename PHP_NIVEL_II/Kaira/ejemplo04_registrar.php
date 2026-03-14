<?php
    date_default_timezone_set("America/caracas");
    $encuesta = fopen("./encuesta.txt", "a");
    $hora = date("H:i:s"); 
    $fecha = date("Y-m-d");
    $opcion = $_POST['opcion'];
    $registro = $fecha . ";" . $hora . ";" . $opcion . ";\n";
    fwrite($encuesta,$registro);
    fclose($encuesta);
    $mensaje = "Opcion seleccionada se registro con exito";
    header("location:/?mensaje=".$mensaje);
?>