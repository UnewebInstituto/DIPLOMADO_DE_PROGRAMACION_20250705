<link rel="stylesheet" href="./css/ejemplo07_estilo.css">

<div style="background-color:gray;color:white;text-align:center;padding:20px">
    <h1>Ejemplo 07 Include en PHP</h1>
</div>

<?php
include './ejemplo07_include_encabezado.php';
?>

<div class="estilo1">Esta seccion es HTML</div>
<div class="estilo2">Esta seccion es HTML</div>

<?php 
include './ejemplo07_include_pie.php';
?>

<br>
<button id="btnPrueba">PRUBA</button>
<button onclick="alert('Este mensaje es ortra prueba');">PRUBA 1</button>
<script src="./js/ejemplo07_script.js"></script>

