<?php
    // Declaración del nombre de espacio
    namespace Controller;

    // Declaración de clase
    class PersonaController{
        // atributo
        public $nombre;

        // método
        public static function saludo($argNombre){
            $this->nombre = $argNombre
            echo "Hola {$this->nombre} desde la clase PersonaController de Controller<br>";
        }
    }

?>