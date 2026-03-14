<?php
    
    # Creación y apertura del archivo
    $estudiantes = fopen("data.txt","r");
    echo "Archivo abierto";
    
    echo "<hr>";

    $temporal = "";
    $salto_de_linea = "\n";
    
    while (!feof($estudiantes)){
        
        #Se lee 1 byte de información
        $temporal = fread($estudiantes, 1);

        if ($temporal == $salto_de_linea){
            echo "<br>";
        }else{
        
            echo $temporal;
        }
    }
    
    echo "<hr>";
    
    # Cierre del proyecto
    fclose($estudiantes);
    echo "Archivo cerrado";

?>