<?php
    #Apertura en modo de añadir
    $estudiantes = fopen("data.txt", "a");
    echo "Apertura del archivo en modo añadir <br>";

    #dato a añadir 
    $nuevo_valor = "Profesor \n";

    #escritura en el archivo
    fwrite($estudiantes, $nuevo_valor);
    echo "Escritura del archivo <br>";

    #cierre del archivo

    fclose($estudiantes);
    echo "Cierre del archivo <br>";

?>