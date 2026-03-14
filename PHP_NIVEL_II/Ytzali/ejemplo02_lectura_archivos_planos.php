<?php
    #Apertura del archivo 
    $estudiantes = fopen("data.txt", "r");
    $temporal = "";
    $salto_de_linea = "\n";
    while (!feof($estudiantes)){
        #Se lee un byte de informacion
        $temporal = fread($estudiantes,1);
        if ($temporal == $salto_de_linea){
            echo "<br>";
        }else{
            echo $temporal;
        }
    }
    #Cierre del archivo
    fclose($estudiantes);


?>