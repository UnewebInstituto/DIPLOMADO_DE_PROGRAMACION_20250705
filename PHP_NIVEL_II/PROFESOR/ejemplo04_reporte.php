<?php
    /**
     * Apertura, lectura y conversión en arreglo
     */
    $encuesta = file("./encuesta.txt");
    /**
     * Recorrido del arreglo
     */
    foreach ($encuesta as $key => $value) {
        echo $value . "<br>";
    }


?>