<?php
    // Declaración del namespace
    namespace Model;

    // Declaración de la clase
    class Persona{
        // atributo
        public $nombre;

        // método
        public static function saludo($argNombre){
            $this->nombre = $argNombre
            echo "Hola {$this->nombre} desde la clase Persona de Model<br>";
        }
    }