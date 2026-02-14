<h1>Ejemplo Estructuras de Control Repetitivas</h1>

<?php

echo "<h2>Ciclo While</h2>";
$estudiantes=["Salomon","Joelys","Gabriel","Ytzali","Barbara","Sebastian","Ricardo"];


$i = 0; #variable de control
echo "<ul>";
while ($i < count($estudiantes)) {
  echo "<li>" . $estudiantes[$i] . "</li>";
  $i = $i+1; // $i++; $i+=1

}
echo "</ul>";

//otra forma de declaracion
echo "<h2>Ciclo Do</h2>";

$asignaturas=[];
$asignaturas[]="Logica de Programacion";
$asignaturas[]="HTML Nivel I";
$asignaturas[]="Mysql";
echo "<ol>";
$i=0;
do {
   echo "<li>$asignaturas[$i]</li>";
   $i+=1;
}while ($i < count($asignaturas));
echo "</ol>";

//otra forma de declaracion
echo "<h2>Ciclo For</h2>";

$temas=Array();
$temas[]="Declaracion de variables";
$temas[]="Estructuras de control";
$temas[]="Functiones";
$temas[]="Condicionales";

echo "<ol type='i'>";
for ($i=0; $i < count($temas) ; $i++) { 
  echo "<li>$temas[$i]</li>";
}
echo "</ol>";

//otra forma de declaracion
echo "<h2>Ciclo Foreach</h2>";

$contenido = [
  "tema1" => "Contenido tema 1",
  "tema2" => "Contenido tema 2",
  "tema3" => "Contenido tema 3",
];

echo "<ul type='circle'>";
  foreach ($contenido as $key => $value) {
    echo "<li>Indice:$key, Valor:$value</li>";
  }
echo "</ul>";

var_dump($estudiantes);
echo "<hr>";

var_dump($asignaturas);
echo "<hr>";

var_dump($temas);
echo "<hr>";

var_dump($contenido);
echo "<hr>";
?>
