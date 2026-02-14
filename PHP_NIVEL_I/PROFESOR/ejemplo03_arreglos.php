<h1>Ejemplo de Arreglos</h1>
<?php
$estudiantes=["SALOMÓN","JOELYS","GABRIEL","YTZALI","BARBARA","SEBASTIAN","RICARDO"];

// Otra forma de declaración
$asignaturas=[];
$asignaturas[]="LÓGICA DE PROGRAMACIÓN";
$asignaturas[]="HTML NIVEL I";
$asignaturas[]="MYSQL";

// Otra forma de declaración
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

var_dump($estudiantes);
echo "<hr>";

var_dump($asignaturas);
echo "<hr>";

var_dump($temas);
echo "<hr>";

var_dump($contenido);
echo "<hr>";

?>