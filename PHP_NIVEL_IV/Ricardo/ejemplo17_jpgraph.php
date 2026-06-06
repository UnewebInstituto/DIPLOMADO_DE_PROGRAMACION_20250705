<?php // content="text/plain; charset=utf-8"
require_once ('../jpgraph-4.4.3/src/jpgraph.php');
require_once ('../jpgraph-4.4.3/src/jpgraph_pie.php');
 
$data = array(40,60,21,33);
 
$graph = new PieGraph(300,200);
$graph->SetShadow();

$texto = mb_convert_encoding('Gráfico del Mes', 'ISO-8859-1', 'UTF-8');
$graph->title->Set($texto);
 
$p1 = new PiePlot($data);
$graph->Add($p1);
$graph->Stroke();
 