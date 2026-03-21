<h3>Ejemplo06 Iniciar Cookie</h3>
<?php
    # Se definen par de variables de tipo
    # cookie que durarán 30 segundos
    setcookie("usuario","hduque",time()+30);
    setcookie("nombre","Henry Duque",time()+30);
    echo "Variables del tipo cookie fueron creadas<br>";
?>