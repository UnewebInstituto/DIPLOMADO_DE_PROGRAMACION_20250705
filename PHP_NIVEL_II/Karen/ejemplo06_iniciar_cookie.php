<?php
    echo "<h3> Ejemplo06- Iniciar sesión </h3>";
    #Se definen par de variables de tipo cookie que durará 30 segundos
    setcookie("usuario", "ksotomayor",time()+30);
    setcookie("nombre", "karen Sotomayor",time()+30);
    echo "Variables de tipo Cookie, fueron creadas<br>";
?>