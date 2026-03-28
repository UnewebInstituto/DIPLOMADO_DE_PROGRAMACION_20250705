<?php 
    #Creacion y apertura del archivo
    $estudiantes = fopen("data.txt","w");
    echo "Archivo abierto";

    #Definicion de arreglo con el nombre de estudiantes 
    $curso_php_nivel_2 = ["Gabriel", "Sebastial", "Ricardo", "Joelys", "Kaira", "Barbara", "Ytzali", "Karen", "Salomon", "Daniela"];

    #Recorrido de arreglo
    for ($i=0; $i < count($curso_php_nivel_2) ; $i++) { 
        #Mostrar contenido de la posicion que se esta leyendo
        echo $curso_php_nivel_2[$i] . "<br>";
        #Guardar datos en archivos
        fwrite($estudiantes, $curso_php_nivel_2[$i] . "\n");
    }
    echo "<br>";

    #Cierre del archivo 
    fclose($estudiantes);
    echo "Archivo cerrado";

?>