<h1>Ejemplo02 declaración de variables</h1>
<?php
// Variable caracter
$nombre="ANA";
// Variable numérica
$edad=61;
// Variable numérica con décimales
$estatura=1.65;
// Variable lógica (booleana)
$es_estudiante=true;
// Mostrar contenido de variables
echo "NOMBRE:".$nombre."<br>";
echo "PRIMER CARÁCTER DE LA VARIABLE NOMBRE:".$nombre[0]."<br>";
echo "EDAD:".$edad."<br>";
echo "ESTATURA:".$estatura."<br>";
echo "¿ES ESTUDIANTE?:".$es_estudiante."<br>";
echo "<hr>";
// Comprobación de tipo
var_dump($nombre);
echo "<hr>";
var_dump($edad);
echo "<hr>";
var_dump($estatura);
echo "<hr>";
var_dump($es_estudiante);
echo "<hr>";
?>
