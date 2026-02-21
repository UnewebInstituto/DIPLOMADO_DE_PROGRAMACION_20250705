<h1> Ejericio //Condicional y uso de POST con Sucesión Fibonacci//</h1>
<?php
  if (isset($_POST['num1']) && isset($_POST['num2']) && isset($_POST['serie'])){
    $num1 = $_POST['num1'];
    $num2 = $_POST['num2'];
    $serie = $_POST['serie'];
      if ($serie <= 0){
        echo "<h3>Elegiste que se mostraran 0 numeros</h3>";
      } else{
        $i = 0; 
      while ($i < $serie) {
          echo "<b>$num1</b>" . " "; //Para concatenar, mostrar el numero con espacios
          $suma = $num1 + $num2; 
          $num1 = $num2;         
          $num2 = $suma;
          
          $i++;
      }
    } 
    } else{
    if (!isset($_POST['num1'])){
      echo "Faltó el primer número <br>";
    }
    if (!isset($_POST['num2'])){
      echo "Faltó el segundo número <br>";
    }
    if (!isset($_POST['serie'])){
      echo "Faltó la cantidad de números en la serie <br>";
    }
    }
?>

<a href="./ejercicio_fibonacci.php">Volver al Menu</a>