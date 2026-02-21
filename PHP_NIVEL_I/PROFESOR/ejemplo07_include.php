<link rel="stylesheet" href="./css/ejemplo07_estilo.css">
<div style='background-color:gray;color:white;text-align:center;padding:20px'>
    <h1>Ejemplo07 Include en php</h1>
</div>
<?php
    include './ejemplo07_include_encabezado.php';
?>
<div class='estilo1'>Esta sección es HTML</div>
<div class='estilo2'>Esta sección es HTML</div>
<?php
    include './ejemplo07_include_pie.php';
?>
<br>
<button id='btnPrueba'>PRUEBA</button>
<button onclick="alert('Este mensaje es otra prueba');">PRUEBA 1</button>
<script src="./js/ejemplo07_script.js"></script>