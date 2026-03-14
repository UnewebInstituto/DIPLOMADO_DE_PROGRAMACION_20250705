<?php
    
    # Creación y apertura del archivo
    $estudiantes = fopen("data.txt","w");
    echo "Archivo abierto";
    
    echo "<hr>";

    #Definición del arreglo con los nombres de los estudiantes
    $curso_php_nivel_2 = ["Gabriel","sebastian","Ricardo","Joelys","Kaira","Barbara","Ytzali","Karen","Salomon","Daniela"];

    #Recorrido del arreglo

    for ($i=0; $i < count($curso_php_nivel_2) ; $i++){
        #Mostrar contenido de la pocisión que está leyendo
        echo $curso_php_nivel_2[$i]. "<br>";

        #Guardar datos en archivo
        fwrite($estudiantes, $curso_php_nivel_2[$i]. "\n");
    }
    
    echo "<hr>";
    
    # Cierre del proyecto
    fclose($estudiantes);
    echo "Archivo cerrado";

?>