<?php
    #Apertura en modo de añadir
    $estudiantes = fopen("data.txt", "a");
    echo "Apertura del archivo en modo añadir";
    echo "<hr>";

    #dato a añadir
    $nuevo_valor = "Profesor\n";

    #Escritura del archivo
    echo "Se ha añadido un nuevo nombre en el archivo";
    fwrite($estudiantes, $nuevo_valor);
    echo "<hr>";
    #Cierre del archivo
    fclose($estudiantes);
    echo "Archivo cerrado";

?>