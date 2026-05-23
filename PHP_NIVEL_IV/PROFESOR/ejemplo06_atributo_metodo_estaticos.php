<?php
    class Instituto{
        // atributos
        public $nombre = 'UNEWEB';
        public $url = 'www.uneweb.edu.ve';

        // métodos
        public function obtener_url(){
            echo 'URL:' . $this->url . "<br>";
        }

        public function obtener_nombre(){
            echo 'NOMBRE:' . $this->nombre . "<br>";
        }

    }

    $curso = new Instituto();
    // Accediendo a los atributos
    echo $curso->nombre . "<br>";
    /**
     * Dado que el atributo url, esta declarado como estático
     * se puede acceder a este, a través del objeto de la clase
     * o a través del nombre de la clase, usando dicho nombre
     * seguido de :: y el nombre del atributo
     */
    echo $curso->url . "<br>";
    //echo Instituto::$url . "<br>";

    // Accediendo a los métodos
    $curso->obtener_nombre();
    Instituto::obtener_nombre();

    $curso->obtener_url();
    
?>