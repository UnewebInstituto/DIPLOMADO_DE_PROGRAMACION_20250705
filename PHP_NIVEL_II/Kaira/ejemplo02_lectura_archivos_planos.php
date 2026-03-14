<?php

    $estudiantes = fopen("data.txt","r");
    $temporal = "";
    $salto_de_linea = "\n";

    while (!feof($estudiantes)){
        $temporal = fread($estudiantes,1);
        if ($temporal == $salto_de_linea){
            echo "<br>";
        }else{
            echo $temporal;
        }
    }

    fclose($estudiantes);


?>