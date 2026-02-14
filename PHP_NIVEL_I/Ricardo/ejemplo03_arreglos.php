<h1>Ejemplo de arreglos</h1>
<?php

echo "<h2>Ciclo While</h2>";
$estudiantes=["SALOMON","JOELYS","GABRIEL","YTZALI","BARBARA","SEBASTIAN","RICARDO"];


$i = 0; # Variable de control
echo "<ul>";
while ($i < count($estudiantes)){
    echo "<li>".$estudiantes[$i]."</li>";
    $i = $i+1;// $i++; $i+=1;
}
echo "</ul>";



$asignaturas[];
$asignaturas[]="LOGICA DE PROGRAMACION";
$asignaturas[]="HTML NIVEL I";
$asignaturas[]="MYSQL";

//Otra forma de declaracion
$temas=array();
$temas[]="Declaracion de variables";
$temas[]="Estructuras de control";
$temas[]="Funciones";
$temas[]="Condicionales";

//Otra forma de declaracion 

// Otra forma de declaración
$contenido = [
    "tema1"=>"Contenido tema 1",
    "tema2"=>"Contenido tema 2",
    "tema3"=>"Contenido tema 3",
];


var_dump($estudiantes);
echo "<hr>";

var_dump($temas)
echo "<hr>";

var_dump($contenido)
echo "<hr>";

?>