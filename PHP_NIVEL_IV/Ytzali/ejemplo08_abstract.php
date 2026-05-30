<?php
    // Se define una clase abstracta
    abstract class Molde{
        // Se definen métodos abstractos
        abstract public function ingresarNombre($nombre);
        abstract public function obtenerNombre();
    }

    /**
     * Se utiliza la clase abstracta
     */
    class Persona extends Molde{
        // atributos
        private $mensaje = "Hola alumnos de UNEWEB <br>";
        private $nombre;

        // métodos
        public function mostrar(){
            echo $this->mensaje;
        }
        /**
         * Desarrollo de los métodos abstractos
         */
        public function ingresarNombre($nombre, $userName="UW"){
            $this->nombre = $nombre . ", nombre de usuario:" . $userName . "<br>";

        }
        public function obtenerNombre(){
            echo $this->nombre . "<br>";
        }
    }

    // Instancia de la clase
    $obj = new Persona();
    $obj->ingresarNombre("YTZALI RODRIGUEZ", "YRODRIGUEZ");
    $obj->obtenerNombre();
    $obj->ingresarNombre("ESTUDIANTE");
    $obj->obtenerNombre();

?>