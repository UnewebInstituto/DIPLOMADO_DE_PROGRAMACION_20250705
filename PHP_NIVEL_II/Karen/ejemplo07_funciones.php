<?php
    # 1- Declaración de dependencias o librerías

    # 2- Declaración de funciones
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
    # 3- Declaración de variables
        echo "<b>Para sumas:</b> <br>";
        $a =7;
        $b =13;
        echo "resultado de parámetro por referencia: ";
        //Pase de parámetro por referencia
        echo sumar($a, $b);
        
        echo "<hr>";
        
        //Pase de parámetros por valor
        echo "resultado de parámetro por valor: ";
        echo sumar(5, 10);
        
        echo "<hr>";

        echo "<b>Para restas:</b> <br>";
        
        echo "resultado de parámetro por referencia: ";
        //Pase de parámetro por referencia
        echo restar($a, $b);

        echo "<hr>";
        
        //Pase de parámetros por valor
        echo "resultado de parámetro por valor: ";
        echo restar(5, 10);

        echo "<hr>";

        echo "<b>Para multiplicar:</b> <br>";
        
        echo "resultado de parámetro por referencia: ";
        //Pase de parámetro por referencia
        echo multiplicar($a, $b);

        echo "<hr>";
        
        //Pase de parámetros por valor
        echo "resultado de parámetro por valor: ";
        echo multiplicar(5, 10);

        echo "<hr>";

        echo "<b>Para dividir:</b> <br>";
        
        echo "resultado de parámetro por referencia: ";
        //Pase de parámetro por referencia
        echo dividir($a, $b);
        echo "<hr>";
        echo "resultado de parámetro división por cero: ";
        echo dividir(5,0);

        
        echo "<hr>";

        echo "<b>Para resto de división:</b> <br>";
        
        echo "resultado división inexacta: ";
        //Pase de parámetro por referencia
        echo resto_dividir($a, $b);
        echo "<hr>";
        echo "resultado de división por cero: ";
        echo resto_dividir(5,0);
        echo "<hr>";
        echo "resultado de división exacta: ";
        echo resto_dividir(8,2);
    # 4- Cuerpo principal del programa

?>