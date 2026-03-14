<?php
    #apertura del archivo
    $estudiantes = fopen("data.txt", "r");
    $temporal = "";
    $salto_de_linea = "\n";
    while (!feof($estudiantes)){
        #se lee un byte de información
        $temporal = fread($estudiantes,1);
        if ($temporal == $salto_de_linea){
            echo "<br>";
        }else{
            echo $temporal;
        }
    }

    #cierre del archivo
    fclose($estudiantes);
?>