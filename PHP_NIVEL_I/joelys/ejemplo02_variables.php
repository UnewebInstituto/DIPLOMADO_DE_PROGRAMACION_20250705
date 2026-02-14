<h1>Ejemplo 02 declaracion de Variables</h1>
<?php 

//Variable caracter
$nombre = "ANA";
//Variable numerica
$edad = 31;
//variable numerica con decimales
$estatura = 1.65;
//variable logic
$es_estudiante = true;
//mostar contenido de variable
echo "Nombre:" . $nombre . "<br>";
echo "<hr>";
echo "primer caracter de la variable nombre" . $nombre[0];
echo "<hr>";
echo "Edad:" . $edad . "<br>";
echo "Estatura:" . $estatura . "<br>";
echo "¿Es Estudiante?:" . $es_estudiante . "<br>";
echo "<hr>";
//comprobacion de tipo 
var_dump($nombre);
echo "<hr>";
var_dump($edad);
echo "<hr>";
var_dump($estatura);
echo "<hr>";
var_dump($es_estudiante);
echo "<hr>";
?>