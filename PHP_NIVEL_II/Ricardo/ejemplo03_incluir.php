<?php
    #Apertura en modo de añadir
    $estudiantes = fopen("data.txt","a");
    echo "Apertura del archivo en modo añadir <br>";

    #Dato a añadir 
    $nuevo_valor = "PROFESOR\n";

    #Escritura en el archivo
    fwrite($estudiantes, $nuevo_valor);
    echo "Escritura del archivo <br>";

    #Cierre del archivo
    fclose($estudiantes);
    echo "Cierre del archivo <br>";
?>