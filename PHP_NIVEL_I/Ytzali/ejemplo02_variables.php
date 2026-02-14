<h1>Ejemplo02 declaración de variables</h1>

<?php
//Variable caracter 
$nombre="Ana";
//Variable númerica
$edad=61;
//Variable numerica con decimales
$estatura=1.65;
//Variable logica(booleana)
$es_estudiante=true;

//Mostrar contenido de las variables
echo "NOMBRE: ".$nombre."<br>";
echo "PRIMER CARACTER DE LA VARIABLE NOMBRE: ".$nombre[0]."<br>";
echo "EDAD: ".$edad."<br>";
echo "ESTATURA: ".$estatura."<br>";
echo "¿ES ESTUDIANTE?: ".$es_estudiante."<br>";
echo "<hr>";

//Comprobacion de tipo
var_dump($nombre);
echo "<hr>";
var_dump($edad);
echo "<hr>";
var_dump($estatura);
echo "<hr>";
var_dump($es_estudiante);
echo "<hr>";
?>