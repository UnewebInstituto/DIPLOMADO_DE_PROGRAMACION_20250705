<?php
    #Apertura en modo de añadir
    echo "Apertura del archivo en modo añadir <br>";
    $estudiantes = fopen("data.txt","a");

    #Dato a añadir 
    $nuevo_valor = "PROFESOR\n";

    #escritura en el archivo
    fwrite($estudiantes, $nuevo_valor);
    echo "Escritura del Archivo <br>";

    #cierre del archivo
    fclose($estudiantes);
    echo "Cierre del archivo <br>";
?>