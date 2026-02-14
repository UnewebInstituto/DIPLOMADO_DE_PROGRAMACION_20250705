<h1>Ejemplo06 condicional y uso de post</h1>
<?php
if (isset($_POST['a']) && isset($_POST['b']) && isset($_POST['c'])){
    $a = $_POST['a'];
    $b = $_POST['b'];
    $c = $_POST['c'];
    if ($a == 0){
        echo "<h3>ERROR: Valor de 'a' debe ser diferente de 0</h3>";
    }else{
        $sub_radical = $b*$b - 4*$a*$c;
        if ($sub_radical < 0){
            echo "<h3>ERROR: Expresión sub radical no puede ser negativa</h3>";
        }else{
            $x1 = (-$b + sqrt($sub_radical))/(2*$a);
            $x2 = (-$b - sqrt($sub_radical))/(2*$a);
            echo "x1: $x1 <br> x2: $x2";
        }
    }
}else{
    echo "<h3>ERROR: Faltan por declarar variables en el llamado a la url</h3>";
    echo "<h3>Por ejemplo:<br>http://localhost:8005/ejemplo05_condicional_y_get.php?a=valor&b=valor&c=valor</h3>";
    if (!isset($_POST['a'])){
        echo "Faltó 'a'<br>";
    }
    if (!isset($_POST['b'])){
        echo "Faltó 'b'<br>";
    }
    if (!isset($_POST['c'])){
        echo "Faltó 'c'<br>";
    }
}
?>
<br>
<a href="http://localhost:8005/ejemplo06_condicional_y_post.php">Regresar</a>
