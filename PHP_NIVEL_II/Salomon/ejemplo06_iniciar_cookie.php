<h3>Ejemplo06 - Iniciar Cookie</h3>
<?php
    #Se define la sesion cookie con un par de variables que duran 30 segundos
    setcookie("usuario", "sgamez",time()+30);
    setcookie("nombre", "Salomon Gamez",time()+30);
    echo "Variables tipo cookie fueron creadas<br>";
?>