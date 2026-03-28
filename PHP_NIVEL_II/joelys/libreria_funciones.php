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

?>