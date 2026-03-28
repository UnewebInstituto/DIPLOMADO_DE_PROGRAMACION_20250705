<?php 
    #1- Declaracion de dependenias 
    # N/A

    #2- Declaracion de funciones
    function sumar($n1, $n2){
        //Declaracion de variable privada, toda variable declarada dentro de una funcion es privada a ella.
        $resultado = 0;
        $resultado = $n1 + $n2;
        return $resultado;
    };

    function restar($n1, $n2){
        $resultado = 0;
        $resultado = $n1 - $n2;
        return $resultado;
    };

    function multiplicar($n1, $n2){
        $resultado = 0;
        $resultado = $n1 * $n2;
        return $resultado;
    };

    function dividir($n1, $n2){
        $resultado = 0;
        if ($n2 == 0){
            $resultado = 'Error: Division entre cero';
        }else{
            $resultado = $n1 / $n2;   
        };
        return $resultado;
    };

    function resto_dividir($n1, $n2){
        $resultado = 0;
        if ($n2 == 0){
            $resultado = 'Error: Division entre cero';
        }else{
            $resultado = $n1 % $n2;   
        };
        return $resultado;
    };

    #3- Declaracion de Variables
    $a = 7;
    $b = 13;

    #4- Cuerpo principal del programa
    #Por suma
    echo "<div style='color: blue'>function sumar()</div>";
    echo "resultado con parametros (argumentos) por referencia= ";
    //Base de parametros por referencia 
    echo sumar($a, $b); 
    echo "<hr>";
    echo "resultado con parametros (argumentos) por valor= ";
    echo sumar(5, 8);
    echo "<hr>";
    echo "<br>";

    #Por resta  
    echo "<div style='color: red'>function restar()</div>";  
    echo "resultado con parametros (argumentos) por referencia= ";
    //Base de parametros por referencia 
    echo restar($a, $b); 
    echo "<hr>";
    echo "resultado con parametros (argumentos) por valor= ";
    echo restar(5, 8);
    echo "<hr>";
    echo "<br>";

    #Por multiplicacion  
    echo "<div style='color: green'>function multipicar()</div>";  
    echo "resultado con parametros (argumentos) por referencia= ";
    //Base de parametros por referencia 
    echo multiplicar($a, $b); 
    echo "<hr>";
    echo "resultado con parametros (argumentos) por valor= ";
    echo multiplicar(5, 8);
    echo "<hr>";
    echo "<br>";

    #Por division  
    echo "<div style='color: gray'>function dividir()</div>";  
    echo "resultado con parametros (argumentos) por referencia= ";
    //Base de parametros por referencia 
    echo dividir($a, $b); 
    echo "<hr>";
    echo "resultado con parametros (argumentos) por valor= ";
    echo dividir(8, 2);
    echo "<hr>";
    echo "resultado con parametros (argumentos) por valor divison con 0= ";
    echo dividir(8, 0);
    echo "<hr>";
    echo "<br>";

    #Por division mostrando el cociente  
    echo "<div style='color: orange'>function resto_dividir()</div>";  
    echo "resultado con parametros (argumentos) por referencia= ";
    //Base de parametros por referencia 
    echo resto_dividir($a, $b); 
    echo "<hr>";
    echo "resultado con parametros (argumentos) por valor division exacta= ";
    echo resto_dividir(8, 2);
    echo "<hr>";
    echo "resultado con parametros (argumentos) por valor division inesacta= ";
    echo resto_dividir(5, 8);
    echo "<hr>";
    echo "resultado con parametros (argumentos) por valor divison con 0= ";
    echo resto_dividir(8, 0);
    echo "<hr>";
    echo "<br>";
?>