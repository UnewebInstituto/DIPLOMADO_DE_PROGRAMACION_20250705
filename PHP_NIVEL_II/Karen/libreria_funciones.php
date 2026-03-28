<?php
            function sumar($n1, $n2){
                /**Declaración de variable privada. Toda variable declarada *dentro de una función es privada a ella, así se use en el *cuerpo principal.
                */
                $resultador=0;
                $resultado=$n1 + $n2;
                return $resultado;
            };
            function restar($n1, $n2){
                /**Declaración de variable privada. Toda variable declarada *dentro de una función es privada a ella, así se use en el *cuerpo principal.
                */
                $resultador=0;
                $resultado=$n1 - $n2;
                return $resultado;
            };
            function multiplicar($n1, $n2){
                /**Declaración de variable privada. Toda variable declarada *dentro de una función es privada a ella, así se use en el *cuerpo principal.
                */
                $resultador=0;
                $resultado=$n1 * $n2;
                return $resultado;
            };
            function dividir($n1, $n2){
                /**Declaración de variable privada. Toda variable declarada *dentro de una función es privada a ella, así se use en el *cuerpo principal.
                */
                $resultado=0;
                if ($n2 == 0) {
                    echo "Error, división por cero";
                } else{
                    $resultado=$n1 / $n2;
                }
                return $resultado;
            };
            function resto_dividir($n1,$n2){
                $resultado =0;
                if ($n2 == 0) {
                    echo "Error, división por cero";
                } else{
                    $resultado=$n1 % $n2;
                }
                return $resultado;
            };
?>