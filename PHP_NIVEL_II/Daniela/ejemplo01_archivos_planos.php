<?php
    # Creación y apertura del archivo
    $estudiantes = fopen("data.txt","w");
    echo "Archivo abierto";
    echo "<hr>";
    #Definicion de arreglo con el nombre de estudiantes
    $curso_php_nivel_2 = ["GABRIEL","SEBASTIAN","RICARDO","JOELYS","KAIRA","BARBARA","YTZALI","KAREN","SALOMON","DANIELA"];
    #Recorrido del arreglo
    for ($i=0;  $i < count($curso_php_nivel_2)  ; $i++)  { 
        # Mostrar contenido de la posición que se está leyendo
        echo $curso_php_nivel_2[$i] . "<br>";
        #Guardar datos en archivo
        fwrite($estudiantes,$curso_php_nivel_2[$i] . "\n" );
    }

    echo "<hr>";
    #Cierre del archivo
    fclose($estudiantes);
    echo "Archivo cerrado"
?>