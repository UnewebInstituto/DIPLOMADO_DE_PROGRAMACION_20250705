<?php
    #Creacion y apertura del archivo
    $estudiantes = fopen("data.txt","w");
     echo "Archivo abierto";
     echo "<hr>";
    #Cierre del archivo
    #Definicion de arreglo con el nombre de estudiantes
    $curso_php_nivel_2= ["grabriel","sebastian","Ricardo","Joelys","Kaira","Barbara","Ytzali","Karen","Salomon","Daniela"];
    #Recorrido del arreglo
    for ($i=0; $i < count($curso_php_nivel_2) ; $i++) {

        echo $curso_php_nivel_2[$i] . "<br>";

        #guardar datos en archivo
        fwrite($estudiantes,$curso_php_nivel_2[$i] . "\n" );
    }

    echo "<hr>";
    fclose($estudiantes);
    echo "Archivo cerrado";

?>