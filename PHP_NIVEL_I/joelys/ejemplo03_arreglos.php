<h1>Ejemplo de Arreglos</h1>

<?php
$estudiantes=["Salomon","Joelys","Gabriel","Ytzali","Barbara","Sebastian","Ricardo"];
//otra forma de declaracion
$asignaturas=[];
$asignaturas[]="Logica de Programacion";
$asignaturas[]="HTML Nivel I";
$asignaturas[]="Mysql";
//otra forma de declaracion
$temas=Array();
$temas[]="Declaracion de variables";
$temas[]="Estructuras de control";
$temas[]="Functiones";
$temas[]="Condicionales";
//otra forma de declaracion
$contenido = [
  "tema1" => "Contenido tema 1",
  "tema2" => "Contenido tema 2",
  "tema3" => "Contenido tema 3",
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
