<h3>Ejemplo06 iniciar cookie</h3>
<?php
    setcookie("usuario","rhen",time()+30);
    setcookie("nombre","Ricardo Motta",time()+30);
    echo "Variables de tipo cookie fueron creadas <br>";    
?>