<?php
    // Declaración de rasgos (traits)
    trait A{
        // atributos
        public $nombre;

        // métodos
        public function mostrarNombre(){
            echo $this->nombre . "<br>";
        }
        //abstract public function asignarNombre($nombre){};
    }

    trait B{
        public $apellido;
        
        public function mostrarApellido(){
            echo $this->apellido . "<br>";
        }
    }

    /**
     * Declaración de la clase persona, que hace uso de los rasgos 
     * Persona2 y Trabajador
     */
    class Persona{
        // Uso de los rasgos
        use A, B;

        // Métodos
        public function asignarNombre($nom){
            $this->nombre = $nom;
        }

        public function asignarApellido($ape){
            $this->apellido = $ape;
        }

        public function saludar(){
            echo "Saludo: {$this->nombre} , {$this->apellido} .<br>";
        }

    }

    // Instancia de la clase
    $obj = new Persona();
    $obj->asignarNombre("ANA");
    $obj->asignarApellido("VASQUEZ");
    $obj->saludar();

?>