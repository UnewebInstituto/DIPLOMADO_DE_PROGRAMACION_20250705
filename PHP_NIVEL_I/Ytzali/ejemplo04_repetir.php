<h1>Ejemplo de Estructuras de Control Repetitivas</h1>
<?php
echo "<h2>Ciclo While</h2>";
$estudiantes=["SALOMÓN","JOELYS","GABRIEL","YTZALI","BARBARA","SEBASTIAN","RICARDO"];

$i = 0; # Variable de control
echo "<ul>";
while ($i < count($estudiantes)){
    echo "<li>".$estudiantes[$i]."</li>";
    $i = $i+1;// $i++; $i+=1;
}
echo "</ul>";


// Otra forma de declaración
echo "<h2>Ciclo Do</h2>";
$asignaturas=[];
$asignaturas[]="LÓGICA DE PROGRAMACIÓN";
$asignaturas[]="HTML NIVEL I";
$asignaturas[]="MYSQL";

echo "<ol>";
$i = 0; # Declaración de variable de control
do{
    echo "<li>$asignaturas[$i]</li>";
    $i += 1; // Incremento variable de control
}while($i < count($asignaturas));
echo "</ol>";

// Otra forma de declaración
$temas=Array();
$temas[]="Declaración de variables";
$temas[]="Estructuras de control";
$temas[]="Funciones";
$temas[]="Condicionales";

echo "<h2>Ciclo For</h2>";
echo "<ol type='i'>";
for ($i=0; $i < count($temas) ; $i++) { 
    echo "<li>$temas[$i]</li>";
}

echo "</ol>";



// Otra forma de declaración
$contenido = [
    "tema1"=>"Contenido tema 1",
    "tema2"=>"Contenido tema 2",
    "tema3"=>"Contenido tema 3",
];

echo "<h2>Ciclo For Each</h2>";
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