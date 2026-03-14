<?php
    #Creacion y apertura del archivos 
    $estudiantes = fopen("data.txt", "w");
    echo "Archivo Abiero";
    echo "<hr>";

    #Definicion del arreglo, con nombres de estudiantes 
    $curso_php_nivel_2 = ["GABRIEL","SEBASTIAN","RICARDO","JOELYS","KAIRA", "BARCARA","YTZALI","KAREN","SALOMON","DANIELA"];
    #Recorrido del arreglo/array
    for ($i=0; $i < count($curso_php_nivel_2); $i++) { 
        #Mostrar Contenido de la posicion que se esta leyendo
        echo $curso_php_nivel_2[$i] . "<br>";
        #Guardar datos en archivo
        fwrite($estudiantes, $curso_php_nivel_2[$i] . "\n");
    }

    echo "<hr>";
    #Cierre del archivo 
    fclose($estudiantes); 
    echo "Archivo cerrado";
?>