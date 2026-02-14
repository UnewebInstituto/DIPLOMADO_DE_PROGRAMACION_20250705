<h1>Ejemplo 05 Condicional y uso de get</h1>
<?php 
  if (isset($_GET['a']) && isset($_GET['b']) && isset($_GET['c'])) {
    $a = $_GET['a'];
    $b = $_GET['b'];
    $c = $_GET['c'];
    if($a == 0) {
      echo "<h3>valor de a debe ser de cero.</h3>";
    } else {
      $sub_radical = $b*$b - 4*$a*$c; 
      if($sub_radical < 0 ) {
        echo "<h3>expresion sub radical no puede ser negativa.</h3>";
      } else {
        $x1 = (-$b + sqrt($sub_radical))/(2*$a);
        $x2 = (-$b - sqrt($sub_radical))/(2*$a);
          echo "x1: $x1 <br> x2: $x2";
      }
    }
  } else {
    echo "<h3>Faltan por declarar variables en el llamado a la url.</h3>";
    echo "<h3>Por ejemplo:<br> http://localhost:8002/ejemplo05_condicional_y_get.php?a=valor&b=valor&c=valor</h3>";
    if(!isset($_GET['a'])) {
      echo "Falto a";
    }
    if(!isset($_GET['b'])) {
      echo "Falto b";
    }
    if(!isset($_GET['c'])) {
      echo "Falto c";
    }
  }
?>