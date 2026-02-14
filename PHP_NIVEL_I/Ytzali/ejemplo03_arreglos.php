<h1>Ejmplo de Arreglos</h1>
<?php
$estudiante=["YTZALI", "BARBARA"];

//Otra forma de declaración
$asignatura=[];
$asignatura[]="Logica de programación";
$asignatura[]="HTML NIVEL I";
$asignatura[]="MYSQL";

//Otra forma de programación
$temas=Array();
$temas[]="Declaración de variables";
$temas[]="Estructuras de control";
$temas[]="Funciones";
$temas[]="Condicionales";


// Otra forma de declaración
$contenido = [
    "tema1"=>"Contenido tema 1",
    "tema2"=>"Contenido tema 2",
    "tema3"=>"Contenido tema 3",
];

var_dump($estudiante);
echo "<hr>";

var_dump($asignatura);
echo "<hr>";

var_dump($temas);
echo "<hr>";

?>