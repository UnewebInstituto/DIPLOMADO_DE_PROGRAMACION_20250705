<h3>Ejemplo06 Inicia Cookie</h3>
<?php
    //Se definen par de variables de tipo cookie que duraran  30 segundos
    setcookie("usuario", "jmoreno", time()+30);
    setcookie("nombre", "Joelys Moreno", time()+30);

    echo "Variables del tipo cookie fueron creadas<br>";
?>