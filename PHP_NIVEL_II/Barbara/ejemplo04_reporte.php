<?php
    /**
     * apertura, lectura y conversión en arreglo
     */
    $encuesta = file("./encuesta.txt");
    /**
     * recorrido del arreglo
     */
    foreach ($encuesta as $key => $value) {
        echo $value . "<br>";
    }
?>