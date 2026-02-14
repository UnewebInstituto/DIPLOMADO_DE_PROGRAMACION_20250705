<h1>Ejemplo04 //Estructuras de Control de Repetitivas//</h1>
<?php
  echo "<h2>Ciclo While</h2>";
  $estudiantes = ["Salomon", "Joelys", "Gabriel", "Ytzali", "Barbara", "Sebastian", "Ricardo"];

  $i = 0; #Variable de control
  echo "<ul>";
  while ($i < count($estudiantes)){
    echo "<li>".$estudiantes[$i]."</li>";
    $i = $i+1;// $i++; $i+=1; # Incremento de la variable de control
  }
  echo "</ul>";

  // Otra forma de declaracion (Arreglo Vacio) 
  $asignaturas = [];
  $asignaturas[] = "Logica de Programacion";
  $asignaturas[] = "HTML Nivel 1";
  $asignaturas[] = "MySQL";

  echo "<h2>Ciclo Do</h2>";
  echo "<ol>";
  $i = 0; # Variable de control
  do {
    echo "<li>$asignaturas[$i]</li>";
    $i+=1; # Incremento de la variable de control
  }while($i < count($asignaturas));
  echo "</ol>";

  //Otra aforma de declaracion
  $temas = Array();
  $temas[] = "Declaracion de variables";
  $temas[] = "Estructuras de Control";
  $temas[] = "Funciones";
  $temas[] = "Condicionales";

  echo "<h2>Ciclo For</h2>";
  echo "<ol type='i'>";
  for ($i= 0; $i < count($temas) ; $i++){
    echo "<li>$temas[$i]</li>";
  }
  echo "</ol>";

  //Otra forma de declaracion
  $contenido = [
    "tema1"=>"Contenido tema 1",
    "tema2"=>"Contenido tema 2",
    "tema3"=>"Contenido tema 3",
  ];

  echo "<h2>Ciclo For Each</h2>";
  echo "<ol type = 'circle'>";
  foreach ($contenido as $key => $value) {
    echo "<li>Indice:$key -> Valor:$value</li>";
  }
  echo "</ol>";
  
  var_dump($estudiantes);
  echo "<hr>";
  var_dump($asignaturas);
  echo "<hr>";
  var_dump($temas);
  echo "<hr>";
  var_dump($contenido);
  echo "<hr>"; 
?>