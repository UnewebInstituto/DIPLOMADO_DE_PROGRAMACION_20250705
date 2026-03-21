<h3>Ejemplo 06 Iniciar Cookie</h3>
<?php
    #Se definen par de variables de tipo cookie que durarán 3os
    setcookie("usuario", "Yrodriguez", time()+30);
    setcookie("nombre", "Ytzali Rodriguez", time()+30);
    echo "Variables de tipo coockie fueron creadas. <br>";

    
?>