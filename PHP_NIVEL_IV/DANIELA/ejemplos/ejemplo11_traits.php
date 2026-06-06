<?php
trait Personal
{
    // atributos
    public string $nombre;
    public string $apellido;
    public string $sexo;

    // métodos
    public function obtenerDatosPersonales(): string {
        return $this->nombre . ", " . $this->apellido . ", " . $this->sexo;
    }
}

trait Academico {
    // Atributos
    public string $grado;
    public string $titulo;

    // Métodos
    public function obtenerDatosAcademicos(): string {
        return $this->grado . ", " . $this->titulo;
    }
}

class Trabajador {
    // Importación limpia de rasgos
    use Personal, Academico;

    // Usamos "Constructor Property Promotion" de PHP 8 para declarar y asignar todo a la vez
    public function __construct(
        string $nombre,
        string $apellido,
        string $sexo,
        string $grado,
        string $titulo,
        public string $cargo,
        public float|int $salario
    ) {
        // Asignamos las propiedades que vienen de los traits
        $this->nombre = $nombre;
        $this->apellido = $apellido;
        $this->sexo = $sexo;
        $this->grado = $grado;
        $this->titulo = $titulo;
    }

    public function obtenerDatosTrabajador(): void {
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

// Instancia única y ejecución limpia de la Clase
$pasante = new Trabajador("Yolanda", "Tortoza", "F", "secundaria", "Bachiller", "Pasante INCE", 150);
$pasante->obtenerDatosTrabajador();
?>