<h1> Ejemplo05 // Condicional y uso de Get// </h1>
<?php
  if (isset($_GET['a']) && isset($_GET['b']) && isset($_GET['c'])){
    $a = $_GE['a'];
    $b = $_GE['b'];
    $c = $_GE['c'];
    if (a == 0){
      echo "<h3>ERROR: Valor de 'a' debe ser diferente a 0</h3>";
    }else{
      $sub_radical = $b*$b - 4*$a*$c;
      if (sub_radical < 0){
        echo "<h3>ERROR> Expresion sub radical no puede ser negativa</h3>";
      }else{
        $x1 = (-$b + sqrt(sub_radical))/2*$a;
        $x2 = (-$b + sqrt(sub_radical))/2*$a;
        echo "x1: $x1 <br> x2: $x2";
      }
    }
  }else{
    echo "<h3>ERROR: Faltan por declaran variables en el llamado por URL</h3>";
    echo "<h3>Por ejemplo: <br>http:localhost:8001/ejemplo05_condicional_y_get.php?a=valor&b=valor&c=valor</h3>";
    if (!isset($_GET['a'])){
      echo "Falto 'a' <br>";
    }
    if (!isset($_GET['b'])){
      echo "Falto 'b' <br>";
    }
    if (!isset($_GET['c'])){
      echo "Falto 'c' <br>";
    }
  }
  /*
Casos de prueba:
http://localhost:8000/ejemplo05_condicional_y_get.php?a=0&b=1&c=1

http://localhost:8000/ejemplo05_condicional_y_get.php?a=1&b=1&c=1

http://localhost:8000/ejemplo05_condicional_y_get.php?a=1&b=4&c=1

*/
?>