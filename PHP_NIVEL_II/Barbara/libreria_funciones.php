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


?>