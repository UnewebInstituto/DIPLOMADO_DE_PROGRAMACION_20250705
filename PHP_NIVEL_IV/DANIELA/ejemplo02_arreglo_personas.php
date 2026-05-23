<?php
    Class Persona{
        // atributos
        public $nombre = Array();
        public $apellido = Array();

        // métodos
        public function guardar($nom, $ape){
            $this->nombre[]= $nom;
            $this->apellido[]= $ape;
        }

        public function mostrar(){
            echo "<h2>Estudiantes de POO en PHP</h2>";
            echo "<ol>";
            for ($i=0; $i < count($this->nombre); $i++) { 
                // 1ra. forma
                //$this->formato($this->nombre[$i], $this->apellido[$i]);
                // 2da. forma
                self::formato($this->nombre[$i], $this->apellido[$i]);


            }
            echo "</ol>";
        }

        public function formato($n, $a){
            echo "<li>{$n}, {$a}</li>";
        }

    }

    // Instancia de la clase (creación del objeto)
    $mis_estudiantes = new Persona();

    $mis_estudiantes->guardar('YTZALI','RODRIGUEZ');
    $mis_estudiantes->guardar('BÁRBARA','VILLASMIL');
    $mis_estudiantes->guardar('RICARDO','MOTTA');
    $mis_estudiantes->guardar('DANIELA','MORENO');
    $mis_estudiantes->guardar('KAREN','SOTOMAYOR');
    $mis_estudiantes->guardar('KAIRA','ACUÑA');
    $mis_estudiantes->guardar('SEBASTIÁN','GONZALEZ');
    $mis_estudiantes->guardar('GABRIEL','TOVAR');

    $mis_estudiantes->mostrar();



?>