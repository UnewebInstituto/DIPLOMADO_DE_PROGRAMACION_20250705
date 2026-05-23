<?php
    class Vehiculo{
        // atributos
        public $motor = false;
        public $marca;
        public $color;
        // métodos
        public function __construct($marc, $colo){
            $this->marca = $marc;
            $this->color = $colo;
        }

        public function estado(){
            echo "El vehículo {$this->marca} {$this->color} se encuentra ";
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

    // SUB CLASES
    class Autobus extends Vehiculo{
        // atributos
        public $puestos;

        // metodos
        public function parada(){
            echo "El autobus está en la parada<br>";
        }

    }

    class Moto extends Vehiculo{
        // atributos
        // No hay

        // metodos
        public function piroeta(){
            echo "La moto está a punto de estrellarse<br>";
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
    $transporte->piroeta();
?>