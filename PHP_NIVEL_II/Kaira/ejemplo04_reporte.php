<?php

    $encuesta = file("./encuesta.txt");
    foreach ($encuesta as $key => $value) {
        echo $value . "<br>";
    }

?>