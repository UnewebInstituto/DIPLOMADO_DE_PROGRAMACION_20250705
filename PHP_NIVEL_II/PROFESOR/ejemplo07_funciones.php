<?php
    # 1-) Declaración de dependencias
    # NA

    # 2-) Declaración de funciones
    function sumar($n1, $n2){
        /**
         * Declaración de variable privada. Toda
         * variable declarada dentro de una función
         * es privada a ella.
         **/ 
        $resultado = 0;
        $resultado = $n1 + $n2;
        return $resultado;
    }

    function restar($n1, $n2){
        $resultado = 0;
        $resultado = $n1 - $n2;
        return $resultado;
    }

    function multiplicar($n1, $n2){
        $resultado = 0;
        $resultado = $n1 * $n2;
        return $resultado;
    }

    function dividir($n1, $n2){
        $resultado = 0;
        if ($n2 == 0){
            $resultado = 'Error: División por cero';
        }else{
            $resultado = $n1 / $n2;
        }
        return $resultado;
    }

    function resto_dividir($n1, $n2){
        $resultado = 0;
        if ($n2 == 0){
            $resultado = 'Error: División por cero';
        }else{
            $resultado = $n1 % $n2;
        }
        return $resultado;
    }


    # 3-) Declaración de variables
    $a = 7;
    $b = 13;

    # 4-) Declaración cuerpo principal del programa
    echo "Resultado con parámetros (argumentos) por referencia:";
    // Pase de parámetros por referencia
    echo "<div style='color:blue'>función sumar()</div>";
    echo sumar($a, $b);
    echo "<br>";
     
    echo "Resultado con parámetros (argumentos) por valor:";
    echo sumar(5,8);
    
    echo "<br><br>";
    echo "<div style='color:red'>función restar()</div>";
    echo "Resultado con parámetros (argumentos) por referencia:";
    echo restar($a, $b);
    echo "<br>"; 
    echo "Resultado con parámetros (argumentos) por valor:";
    echo restar(5,8);

    echo "<br><br>";
    echo "<div style='color:green'>función multiplicar()</div>";
    echo "Resultado con parámetros (argumentos) por referencia:";
    echo multiplicar($a, $b);
    echo "<br>";
    echo "Resultado con parámetros (argumentos) por valor:";
    echo multiplicar(5,8);

    echo "<br><br>";
    echo "<div style='color:orange'>función dividir()</div>";
    echo "Resultado con parámetros (argumentos) por referencia:";
    echo dividir($a, $b);
    echo "<br>"; 
    echo "Resultado con parámetros (argumentos) por valor:";
    echo dividir(5,8);
    echo "<br>"; 
    echo "Resultado con parámetros (argumentos) por valor división por cero:";
    echo dividir(5,0);

    echo "<br><br>";
    echo "<div style='color:purple'>función resto división()</div>";
    echo "Resultado con parámetros (argumentos) por referencia:";
    echo dividir($a, $b);
    echo "<br>"; 
    echo "Resultado con parámetros (argumentos) por valor división exacta:";
    echo dividir(8,2);
    echo "<br>"; 
    echo "Resultado con parámetros (argumentos) por valor división inexacta:";
    echo dividir(5,8);
    echo "<br>"; 
    echo "Resultado con parámetros (argumentos) por valor división por cero:";
    echo dividir(5,0);

?>