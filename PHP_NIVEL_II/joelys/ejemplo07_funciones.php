<?php    
    function sumar($n1, $n2) {
        #Declracion de variables privadas. Toda variable declarasda dentro de una funcion es privada a ella.
        $resultado = 0;
        $resultado = $n1 + $n2;
        return $resultado;
    }

    function restar($n1, $n2) {
        #Declracion de variables privadas. Toda variable declarasda dentro de una funcion es privada a ella.
        $resultado = 0;
        $resultado = $n1 - $n2;
        return $resultado;
    }

    function multiplicar($n1, $n2) {
        #Declracion de variables privadas. Toda variable declarasda dentro de una funcion es privada a ella.
        $resultado = 0;
        $resultado = $n1 * $n2;
        return $resultado;
    }

    function dividir($n1, $n2) {
        #Declracion de variables privadas. Toda variable declarasda dentro de una funcion es privada a ella.
        $resultado = 0;
        if ($n2 == 0) {
            $resultado = "Error division por 0"; 
        } else {
            $resultado = $n1 / $n2;    
        }
        
        return $resultado;
    }

    function resto_dividir($n1,$n2) {
        $resultado = 0;

        if ($n2 == 0) {
            $resultado = "Error division por 0"; 
        } else {
            $resultado = $n1 % $n2;    
        }
        
        return $resultado;

    }


    $a = 7;
    $b = 13;

    echo "Resultado con parametros(argumentos) por referencias:";
    
    //pase de parametros por referencias
    echo "<div style='color:blue;'>funcion sumar</div>";
    echo sumar($a, $b);
    echo "<br>";
    echo "Resultado con parametros(argumentos) por valor:";
    echo sumar(5,8);

    echo "<br>";

    echo "<div style='color:blue;'>funcion restar</div>";

    echo "Resultado con parametros(argumentos) por referencias:";
    
    //pase de parametros por referencias
    echo restar($a, $b);
    echo "<br>";

    echo "Resultado con parametros(argumentos) por valor:";
    echo restar(5,8);

    echo "<div style='color:green;'>funcion multiplicar</div>";

    echo "Resultado con parametros(argumentos) por referencias:";
    
    //pase de parametros por referencias
    echo multiplicar($a, $b);
    echo "<br>";

    echo "Resultado con parametros(argumentos) por valor:";
    echo multiplicar(5,8);

    echo "<div style='color:orange;'>funcion dividir</div>";

    echo "Resultado con parametros(argumentos) por referencias:";
    
    //pase de parametros por referencias
    echo dividir($a, $b);
    echo "<br>";

    echo "Resultado con parametros(argumentos) por valor:";
    echo dividir(5,8);

    echo "<br>";

    echo "Resultado con parametros(argumentos) por valor division por cero:";
    echo dividir(5,0);

    echo "<div style='color:purple;'>funcion resto division</div>";

    echo "Resultado con parametros(argumentos) por referencias:";
    
    //pase de parametros por referencias
    echo dividir($a, $b);
    echo "<br>";

    echo "Resultado con parametros(argumentos) por valor, division exacta:";
    echo dividir(8,2);

    echo "<br>";

    echo "Resultado con parametros(argumentos) por valor, division inexacta:";
    echo resto_dividir(5,8);

    echo "<br>";

    echo "Resultado con parametros(argumentos) por valor division por cero:";
    echo resto_dividir(5,0);
?>