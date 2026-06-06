<?php

require_once ('../jpgraph-4.4.3/src/jpgraph.php');
require_once ('../jpgraph-4.4.3/src/jpgraph_bar.php');
 
$datay=array(12,8,19,3,10,5);
 
// Create the graph. These two calls are always required
$graph = new Graph(300,200);
$graph->SetScale('textlin');
 
// Add a drop shadow
$graph->SetShadow();
 
// Adjust the margin a bit to make more room for titles
$graph->SetMargin(40,30,20,40);
 
// Create a bar pot
$bplot = new BarPlot($datay);
 
// Adjust fill color
$bplot->SetFillColor('orange');
$graph->Add($bplot);
 
// Setup the titles
$texto = mb_convert_encoding('Gráfico del Mes', 'ISO-8859-1', 'UTF-8');
$graph->title->Set($texto);
$texto = mb_convert_encoding('Período', 'ISO-8859-1', 'UTF-8');
$graph->xaxis->title->Set($texto);
$graph->yaxis->title->Set('Cantidad');
 
$graph->title->SetFont(FF_FONT1,FS_BOLD);
$graph->yaxis->title->SetFont(FF_FONT1,FS_BOLD);
$graph->xaxis->title->SetFont(FF_FONT1,FS_BOLD);
 
// Display the graph
$graph->Stroke();
?>