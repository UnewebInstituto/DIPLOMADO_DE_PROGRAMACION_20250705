<?php
    class Vehiculo{
        public $motor = false;
        public $marca;
        public $color;

        public function __construct($marc, $colo){
            $this->marca = $marc;
            $this->color = $colo;

        }
        
        public function estado(){
            echo "El vhivulo {$this->marca} {$this->color} se encuentra";
            if ($this->motor == true){
                echo "Encendido<br>";
            }else{
                echo "Apagado<br>";
            }
        }
    public function encender(){
            if ($this->motor == true){
                echo "El vehículo ya se encontraba encendido<br>";
            }else{
                $this->motor = true;
                echo "El vehículo fué encendido<br>";
            }
        }

    }

     class Autobus extends Vehiculo{

        public $puestos;

        public function parada(){
            echo "El autobus esta en la parada<br>";
        }

    }

    class Moto extends Vehiculo{
        public function pirueta(){
            echo "La moto esta a punto de estrellarse<br>";
        }
    }



    // Instancia de la clase
    $carro = new Vehiculo('TOYOTA', 'AZUL');
    $carro->estado();
    $carro->encender();
    $carro->estado();

    echo "<hr>";

    $escolar = new Autobus('ENCAVA', 'AMARILLO');
    $escolar->estado();
    $escolar->encender();
    $escolar->estado();
    $escolar->puestos = 28;
    $escolar->parada();

    echo "<hr>";

    $transporte = new Moto('HONDA', 'ROJO');
    $transporte->estado();
    $transporte->encender();
    $transporte->estado();
    $transporte->pirueta();
?>