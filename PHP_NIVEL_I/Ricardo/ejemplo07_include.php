<link rel="stylesheet" href="./css/ejemplo07.css">
<div style='background-color:gray;text-align:center;padding:20px;color:white'>

<h1>Ejemplo 07 Include en PHP</h1>
</div>

<?php
    include './ejemplo07_include_encabezado.php';
?>

<div class='estilo1'>Esta seccion es HTML</div>
<div class='estilo2'>Esta seccion es HTML</div>


<?php
  include './ejemplo07_include_pie.php';
?>
<button id='btnPrueba'>Prueba</button><br>
<button onclick="alert('Este mensaje es otra prueba');">PRUEBA 1</button><br>
<script src="./js/ejemplo07_script.js"></script>