<?php
  Class Persona{
    // Atributos 
    public $nombre = Array();
    public $apellido = Array();

    // metodos 
    public function guardar($nom, $ape){
      $this->nombre[] = $nom;
      $this->apellido[] = $ape;
    }

    public function mostrar(){
        echo "<h2>Estudiantes de POO en PHP</h2>";
        echo "<ol>";
      for ($i=0; $i < count($this->nombre) ; $i++) { 
        // 1era forma 
        //$this->formato($this->nombre[$i], $this->apellido[$i]);
        //2da forma
        self::formato($this->nombre[$i], $this->apellido[$i]);
        //2da forma
      }
      echo "</ol>";
    }
  
    public function formato($n, $a){
      echo "<li>{$n}, {$a}</li>";
    
    }

  }

  //Instancia de la clase (Creaciones del objeto) 
    $mis_estudiantes = new Persona();
    $mis_estudiantes->guardar('YTZALI', 'RODRIGUEZ');
    $mis_estudiantes->guardar('BARBARA', 'VILLASMIL');
    
    $mis_estudiantes->mostrar();
    

?>