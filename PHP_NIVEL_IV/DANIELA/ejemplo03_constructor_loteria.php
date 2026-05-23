<?php
    class Loteria{
        // atributos
        public $numero;
        public $intentos;
        public $resultado = false;

        // métodos
        public function __construct($nmro,$ints)
        {
            /**
             * El método constructor es el responsable
             * de inicializar el objeto a partir de la 
             * instancia de la clase
             */
            $this->numero = $nmro;
            $this->intentos = $ints;
        }

        public function sorteo(){
            $minimo = $this->numero/2;
            $maximo = $this->numero*2;
            for ($i=0; $i < $this->intentos ; $i++) { 
                $extraccion = rand($minimo, $maximo);
                $this->comparar($extraccion);
            }
               
        }

        public function comparar($arg_extraccion){
            echo  "Comparando {$arg_extraccion} con {$this->numero}<br>";
            if ($arg_extraccion == $this->numero){
                $this->resultado = true;
                echo "FELICITACIONES, HUBO GANADOR<br>";
            }else{
                echo "SIGA INTENTANDO<br>";
            }
        }

        public function __destruct()
        {
            if ($this->resultado == true){
                echo "EL NÚMERO GANADOR FUE: {$this->numero}<br>";
            }
        }
    }

    // Instancia de la clase
    $elchance = new Loteria(7,13);
    $elchance->sorteo();
?>