<h1>Ejemplo02 declaracion de variables<h1>
 <?php
//Variable caracter
$nombre= "ANA";
//Variable numerica
$edad= 61;
//Variable numerica con decimales
$estatura= 1.65;
//variable logica (booleana)
$es_estudiante=true;
// Mostrar contenido de variables
echo "NOMBRE:" .$nombre." <br>";
echo "EDAD:" .$edad." <br>";
echo "ESTATURA:" .$estatura." <br>";
echo "ES ESTUDIANTE?:" .$es_estudiante." <br>";
echo "<hr>";


//Comprobacion de tipo
var_dump($nombre);
var_dump($edad);
var_dump($estatura);
var_dump($es_estudiante);

?>
