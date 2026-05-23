<?php
    class Usuario{
        // atributos
        public $nombre;
        public $id_usuario;
        private $clave;

        // métodos
        public function __construct($nom, $idusua)
        {
            $this->nombre = $nom;
            $this->id_usuario = $idusua;
            $this->clave = '1234';
        }

        public function cambiar_clave($nva_clave){
            $this->clave = $nva_clave;
            return "La clave fué actualzada<br>";
        }

        public function obtener_clave(){
            return "La clave actual es: {$this->clave}<br>";
        }

    }

    $usuario1 = new Usuario('HENRY DUQUE', 'hduque');
    echo "RESULTADO var_dump()<br>";
    echo var_dump($usuario1);

    echo "RESULTADOS DE LA INSPECCIÓN DE CADA ATRIBUTO<br>";
    echo $usuario1->nombre . "<br>";
    echo $usuario1->id_usuario . "<br>";
    /**
     * La siguiente instrucción da error, dada la naturaleza
     * privada del atributo
     *  */
    echo $usuario1->clave . "<br>";

    echo $usuario1->obtener_clave();

    $usuario1->cambiar_clave('ABCD');

    echo $usuario1->obtener_clave();
?>