<?php
    // 1ra. Interface a definir
    interface Auto{
        // Declaración de métodos en la interface
        public function encender();
        public function apagar();
    }

    // 2da. declaración de interface que hereda la 1ra. declaración
    interface Gasolina extends Auto{
        public function vaciarTanque();
        public function llenarTanque($cant);
    }
    /**
     * Gasolina
     * [ llenarTanque($cant) ]
     * [ vaciarTanque() ]
     * [ apagar() ]      <-- heredado
     * [ encender() ]    <-- heredado
     * 
     */

    /**
     * Se define clase que implementa Gasolina
     */
    class Deportivo implements Gasolina{
        // atributos
        private $estado = false;
        private $tanque = 0;

        // métodos
        public function encender(){
            if ($this->estado == true){
                return "El vehículo ya se encuentra encendido.<br>";
            }else{
                if ($this->tanque <= 0 ){
                    return "El vehículo no puede ser encendido, porque no tiene combustible.<br>";
                }else{
                    $this->estado = true;
                    return "El vehículo fué encendido.<br>";
                }
            }

        }

        public function apagar(){
            if ($this->estado == true){
                $this->estado = false;
                return "El vehículo fué apagado.<br>";
            }else{
                return "El vehículo ya se encontraba apagado.<br>";
            }
        }

        public function llenarTanque($litros){
            $this->tanque += $litros;
            return "El tanque fue cargado con {$litros} litros de combustible, el nivel marca {$this->tanque} litros.<br>";
        }

        public function vaciarTanque(){
            $this->tanque = 0;
            $this->estado = false;
            return "El tanque fue vaciado.<br>";
        }

        // Implementación de método que no se encontraba
        // en las interfaces
        public function usar($kilometraje){
            return "Litros de combustible restantes {$this->tanque} litros.<br>";
            if ($this->estado == true){
                $consumo = $kilometraje / 3;
                return "Kilometraje recorrido {$kilometraje} Km. combustible consumido {$consumo} Ltrs.<br>";
                $this->tanque = $this->tanque - $consumo;

                if ($this->tanque <= 0) {
                    return "Atención, el vehículo se apagó dado que se quedó sin combustible.<br>";
                    $this->estado = false;
                }
            }else{
                return "Atención, para usar el vehículo, primero se debe encender.<br>";
            }
        }

        public function consultarEstado(){
            if ($this->estado == true){
                return "El vehículo se encuentra encendido.<br>";
            }else{
                return "El vehículo se encuentra apagado.<br>";
            }
        }

    }

    $mustang = new Deportivo();
    echo $mustang->llenarTanque(60);
    echo $mustang->encender();
    echo $mustang->consultarEstado();
    echo $mustang->usar(60); // recorre 20 km
    echo $mustang->usar(120); // recorre 40 km
    echo $mustang->usar(10); // intenta recorrer 1 km
    echo $mustang->consultarEstado();

?>