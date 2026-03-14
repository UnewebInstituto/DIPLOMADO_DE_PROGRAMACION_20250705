<?php
    echo "Apertura del archivo en modo de añadir <br>";
    $estudiantes = fopen("data.txt","a");

    $nuevo_valor = "profesor";

    fwrite($estudiantes, $nuevo_valor);
    echo "Escritura del archivo en modo de añadir <br>";



    fclose($estudiantes);
    echo "Cierre del archivo en modo de añadir <br>";


?>
