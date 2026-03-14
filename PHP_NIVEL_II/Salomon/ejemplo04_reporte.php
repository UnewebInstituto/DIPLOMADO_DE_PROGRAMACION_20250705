<?php
    #Apertura, lectura y conversion en arreglo o array del archivo 
    $encuesta = file("./encuesta.txt");

    foreach ($encuesta as $key => $value) {
        echo $value . "<br>";
    }
?>