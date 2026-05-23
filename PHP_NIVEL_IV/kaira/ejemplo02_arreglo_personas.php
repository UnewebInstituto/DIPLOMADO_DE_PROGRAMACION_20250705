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
                $this->formato($this->nombre[$i], $this->apellido[$i]);
            }
            echo "</ol>";
        }

        public function formato($n, $a){
            echo "<li>{$n}, {$a}</li>";
        }

    }

    $mis_estudiantes = new Persona();
    $mis_estudiantes->guardar('Barbara','Rodriguez');
    $mis_estudiantes->guardar('Jazmin','Villasmil');
    $mis_estudiantes->guardar('Ricardo','Motta');
    $mis_estudiantes->guardar('Daniela','Moreno');
    $mis_estudiantes->guardar('Karen','Sotomayor');
    $mis_estudiantes->guardar('Kaira','Acuña');
    $mis_estudiantes->guardar('Sebastian','Gonzalez');
    $mis_estudiantes->guardar('Gabriel','Tovar');
    
    $mis_estudiantes->mostrar();




?>