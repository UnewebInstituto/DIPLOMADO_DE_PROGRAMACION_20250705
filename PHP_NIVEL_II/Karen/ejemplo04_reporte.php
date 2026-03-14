<?php
    #Apertura, lectura y conversión del archivo
    $encuesta = file("./encuesta.txt");

    foreach ($encuesta as $key => $value) {
        echo $value. "<br>";
    }
?>