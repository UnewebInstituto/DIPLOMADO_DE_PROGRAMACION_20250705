<h1>Ejemplo03 //Arreglos//</h1>
<?php
  $estudiantes = ["Salomon", "Joelys", "Gabriel", "Ytzali", "Barbara", "Sebastian", "Ricardo"];

  // Otra forma de declaracion (Arreglo Vacio) 
  $asignaturas = [];
  $asignaturas[] = "Logica de Programacion";
  $asignaturas[] = "HTML Nivel 1";
  $asignaturas[] = "MySQL";

  //Otra aforma de declaracion
  $temas = Array();
  $temas[] = "Declaracion de variables";
  $temas[] = "Estructuras de Control";
  $temas[] = "Funciones";
  $temas[] = "Condicionales";

  //Otra forma de declaracion
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