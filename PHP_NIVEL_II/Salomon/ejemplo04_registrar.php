<?php
    date_default_timezone_set("America/Caracas");
    $fecha = date("Y-m-d"); 
    $hora = date("H:i:s");
    $encuesta = fopen("./encuesta.txt", "a");
    $opcion = $_POST['opcion'];
    $registro = $fecha . ";" . $hora . ";" . $opcion . ";\n";
    fwrite($encuesta,$registro);
    fclose($encuesta);
    $mensaje = "Opcion seleccionada se registro con exito!!!";
    header("location:/?mensaje=" . $mensaje);  
    
?>