<?php
    // Declaración de rasgos (traits)
    trait Persona2{
        // atributos
        public $nombre;

        // métodos
        public function mostrarNombre(){
            echo $this->nombre . "<br>";
        }
        //abstract public function asignarNombre($nombre){};
    }

    trait Trabajador{
        protected function hola(){
            echo "Saludos desde el rasgo Trabajador <br>";
        }
    }

    /**
     * Declaración de la clase persona, que hace uso de los rasgos 
     * Persona2 y Trabajador
     */
    class Persona{
        // Uso de los rasgos
        use Persona2, Trabajador;

        // Métodos
        public function asignarNombre($nom){
            $this->nombre = $nom;
        }

        public function hola(){
            echo "Saludo desde la clase Persona.<br>";
        }

    }

    // Instancia de la clase
    $persona = new Persona();
    $persona->asignarNombre("ANA");
    $persona->mostrarNombre();
    $persona->hola();


?>