<?php
    class Instituto{
        // atributos
        public $nombre = 'UNEWEB';
        public static $url = 'www.uneweb.edu.ve';

        // métodos
        public function obtener_url(){
            echo 'URL:' . $this->url . "<br>";
        }

        public function obtener_nombre(){
            echo 'NOMBRE:' . self::$nombre . "<br>";
        }

    }

    $curso = new Instituto();
    echo $curso->nombre . "<br>";
    /**
     * Dado que el atributo url, esta declarado como estático
     * se puede acceder a este, a través del objeto de la clase
     * o a través del nombre de la clase, usando dicho nombe seguido de :: y el nmbre del atributo
     * 
     */
    //echo $curso->url . "<br>";
    echo Instituto::$url . "<br>";

    $curso->obtener_nombre();
    $curso->obtener_url();
    Instituto::obtener_nombre();

?>