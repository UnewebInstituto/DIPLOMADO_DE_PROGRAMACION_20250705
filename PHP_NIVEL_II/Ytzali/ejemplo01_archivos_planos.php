<?php
    # Creación y apertura del archivo
    $estudiantes = fopen("data.txt","w");
    echo "Archivo abierto";
    echo "<hr>";
    # Definición de arreglo con el nombre de estudiantes
    $curso_php_nivel_2 = ["GABRIEL","SEBASTIAN","RICARDO","JOELYS","KAIRA","BARBARA","YTZALI","KAREN","SALOMÓN","DANIELA"];
    # Recorrido del arreglo
    for ($i=0; $i < count($curso_php_nivel_2) ; $i++) { 
        # Mostrar contenido de la posición que se esta leyendo
        echo $curso_php_nivel_2[$i] . "<br>";
        # Guardar datos en archivo
        fwrite($estudiantes,$curso_php_nivel_2[$i] . "\n");
    }
    echo "<hr>";
    # Cierre del archivo
    fclose($estudiantes);
    echo "Archivo Cerrado";
?>