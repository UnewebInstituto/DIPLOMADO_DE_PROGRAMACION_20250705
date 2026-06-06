<?php
    trait Personal
    {
        // atributos
        public $nombre;
        public $apellido;
        public $sexo;

        // métodos
        public function obtenerDatosPersonales(){
            return $this->nombre . "," . $this->apellido . "," . $this->sexo;
        }
    }

    trait Academico{
        // Atributos
        public $grado;
        public $titulo;

        // Métodos
        public function obtenerDatosAcademicos(){
            return [$this->grado, $this->titulo];
        }
    }
    
    class Trabajador{
        // Usar los rasgos
        use Personal;
        use Academico;

        // atributos
        public $cargo;
        public $salario;

        // métodos
        public function __construct($argNom, $argApe, $argSex, $argGra, $argTit, $argCar, $argSal){
            $this->nombre = $argNom;
            $this->apellido = $argApe;
            $this->sexo = $argSex;
            $this->grado = $argGra;
            $this->titulo = $argTit;
            $this->cargo = $argCar;
            $this->salario = $argSal;
        }

        public function obtenerDatosTrabajador(){
            echo "<b>Datos personales</b><br>";
            echo $this->obtenerDatosPersonales();
            echo "<hr>";
            echo "<b>Datos académicos</b><br>";
            echo $this->obtenerDatosAcademicos();
            echo "<hr>";
            echo "<b>Datos laborales</b><br>";
            echo $this->cargo . "<br>";
            echo $this->salario . "<br>";
        }
    }

    // Instancia de la Clase

    $pasante = new Trabajador("Yolanda","Tortoza","F","secundaria","Bachiller","Pasante INCE",150);

    echo "<hr>";
    var_dump($pasante);
    echo "<hr>";

    $pasante->obtenerDatosTrabajador();



?>