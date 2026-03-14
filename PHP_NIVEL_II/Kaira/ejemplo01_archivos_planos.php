<?php
    $estudiantes = fopen("data.txt","w");
    echo "Archivo abierto";

    echo "<hr>";

    $curso_php_nivel_2 = ["gabriel", "sebastian","ricardo","joelys","kaira","barbara","daniela","salomon","karen"];

    for ($i=0 ; $i < count($curso_php_nivel_2); $i++)
    { 
        # mostrar contenido de la posicion que se esta leyendo
        echo $curso_php_nivel_2[$i] . "<br>";

        fwrite($estudiantes, $curso_php_nivel_2[$i] . "\n");
    }

    echo "<hr>";
    
    fclose($estudiantes);
    echo "Archivo cerrado";

?>