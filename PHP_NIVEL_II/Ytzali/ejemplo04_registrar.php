<?php
date_default_timezone_set("American/Caracas");
    $fecha = date("Y-m-d");
    $hora = date("H:i:s");
    $encuesta = fopen("./encuesta.txt","a");
    $opcion = $_POST['opcion'];
    $registro = $fecha . ";" . $hora . ";" . $opcion . ";\n";
    fwrite($encuesta, $registro);
    fclose($encuesta);
    $mensaje = "Opcion seleccionada se registro con éxito";
    header("location:/?mensaje=" . $mensaje);
    #       URL              Variable que lleva el valor

?>