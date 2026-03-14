<?php
    #Apertura del archivo
    $estudiantes = fopen("data.txt", "a"); 
    echo "Apertura del archivo en modo anadir <br>";

    #Dato a  anadir
    $nuevo_valor = "PROFESOR\n";

    #Escritura en el archivo
    echo "Se ha escrito en el archivo <br>";
    fwrite($estudiantes, $nuevo_valor);

    #Cierre del archivo
    fclose($estudiantes);
    echo "Se ha cerrado el archivo <br>";
?>