<h1>Ejemplo02 //Declaracion de variables//</h1>
<?php 
  // Variable caracter
  $nombre="ANA";
  //Variable Numerica
  $edad=61;
  //Variable numerica con decimales 
  $estatura=1.65;
  //variable logica (booleana)
  $es_estudiante=true;

  //Mostrar contenido de variables
  echo "Nombre=".$nombre."<br>";
  echo "Primer caracter de la variable nombre:".$nombre[0]."<br>";
  echo "Edad=".$edad."<br>";
  echo "Estructura=".$estatura."<br>";
  echo "Es Estudiante?=".$es_estudiante."<br>";
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