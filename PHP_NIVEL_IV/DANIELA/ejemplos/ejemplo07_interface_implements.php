<?php
session_start();

// --- INTERFACES ORIGINALES ---
interface Auto {
    public function encender();
    public function apagar();
}

interface Gasolina extends Auto {
    public function vaciarTanque();
    public function llenarTanque($cant);
}

// --- CLASE ABSTRACTA PARA EVITAR REPETIR CÓDIGO ---
abstract class VehiculoBase implements Gasolina {
    protected $estado;
    protected $tanque;
    protected $capacidadMaxima;
    protected $nombre;
    protected $rendimiento; // Cuántos km rinde por litro (km / X)

    public function __construct($estado = false, $tanque = 0) {
        $this->estado = $estado;
        $this->tanque = $tanque;
    }

    public function getEstado() { return $this->estado; }
    public function getTanque() { return $this->tanque; }
    public function getCapacidad() { return $this->capacidadMaxima; }
    public function getNombre() { return $this->nombre; }

    public function encender() {
        if ($this->estado == true) {
            return "El {$this->nombre} ya se encuentra encendido.<br>";
        }
        if ($this->tanque <= 0) {
            return "El {$this->nombre} no puede encender porque no tiene combustible.<br>";
        }
        $this->estado = true;
        return "El {$this->nombre} fue encendido.<br>";
    }

    public function apagar() {
        if ($this->estado == false) {
            return "El {$this->nombre} ya se encontraba apagado.<br>";
        }
        $this->estado = false;
        return "El {$this->nombre} fue apagado.<br>";
    }

    public function llenarTanque($litros) {
        $this->tanque += $litros;
        if ($this->tanque > $this->capacidadMaxima) {
            $this->tanque = $this->capacidadMaxima;
        }
        return "Tanque del {$this->nombre} cargado. Nivel actual: {$this->tanque} litros.<br>";
    }

    public function vaciarTanque() {
        $this->tanque = 0;
        $this->estado = false;
        return "El tanque del {$this->nombre} fue vaciado.<br>";
    }

    public function usar($kilometraje) {
        if (!$this->estado) {
            return "Atención, para usar el {$this->nombre}, primero se debe encender.<br>";
        }
        
        $consumo = $kilometraje / $this->rendimiento;
        $this->tanque -= $consumo;
        
        if ($this->tanque <= 0) {
            $this->tanque = 0;
            $this->estado = false;
            return "¡Alerta! El {$this->nombre} se quedó sin combustible y se apagó en el camino.<br>";
        }
        
        return "Viaje de {$kilometraje}km en {$this->nombre} completado. Quedan " . round($this->tanque, 1) . "L.<br>";
    }
}

// --- NUEVOS MODELOS (POLIMORFISMO) ---

class Deportivo extends VehiculoBase {
    protected $capacidadMaxima = 100;
    protected $nombre = "Mustang Deportivo";
    protected $rendimiento = 3; // Consume mucho (1L cada 3km)
}

class CamionetaSUV extends VehiculoBase {
    protected $capacidadMaxima = 140;
    protected $nombre = "Camioneta SUV 4x4";
    protected $rendimiento = 5; // Consumo intermedio (1L cada 5km)
}

class Motocicleta extends VehiculoBase {
    protected $capacidadMaxima = 20;
    protected $nombre = "Moto Ninja Japonesa";
    protected $rendimiento = 15; // Muy económica (1L cada 15km)
}

// --- CONTROLADOR DE SESIÓN MULTI-VEHÍCULO ---
$vehiculosDisponibles = ['deportivo' => 'Deportivo', 'suv' => 'CamionetaSUV', 'moto' => 'Motocicleta'];

// Detectar qué vehículo está seleccionado
$tipoActual = isset($_POST['vehiculo_tipo']) ? $_POST['vehiculo_tipo'] : (isset($_SESSION['vehiculo_actual']) ? $_SESSION['vehiculo_actual'] : 'deportivo');
$_SESSION['vehiculo_actual'] = $tipoActual;

// Inicializar la persistencia para el tipo elegido si no existe
if (!isset($_SESSION[$tipoActual])) {
    $_SESSION[$tipoActual] = ['estado' => false, 'tanque' => 0];
}

// Instanciar dinámicamente la clase correspondiente
$claseVehiculo = $vehiculosDisponibles[$tipoActual];
$miVehiculo = new $claseVehiculo($_SESSION[$tipoActual]['estado'], $_SESSION[$tipoActual]['tanque']);

$mensaje = "Panel multivehículo activo. Controlando: " . $miVehiculo->getNombre();
$colorAlerta = "w3-blue-grey";

// Procesar Acciones del Garaje
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['accion'])) {
    switch ($_POST['accion']) {
        case 'encender':
            $mensaje = $miVehiculo->encender();
            $colorAlerta = $miVehiculo->getEstado() ? "w3-green" : "w3-red";
            break;
        case 'apagar':
            $mensaje = $miVehiculo->apagar();
            $colorAlerta = "w3-orange w3-text-white";
            break;
        case 'llenar_30':
            $mensaje = $miVehiculo->llenarTanque(30);
            $colorAlerta = "w3-teal";
            break;
        case 'vaciar':
            $mensaje = $miVehiculo->vaciarTanque();
            $colorAlerta = "w3-red";
            break;
        case 'usar_60':
            $mensaje = $miVehiculo->usar(60);
            $colorAlerta = $miVehiculo->getEstado() ? "w3-blue" : "w3-red";
            break;
        case 'usar_120':
            $mensaje = $miVehiculo->usar(120);
            $colorAlerta = $miVehiculo->getEstado() ? "w3-blue" : "w3-red";
            break;
    }
    // Sincronizar estado del vehículo activo en la sesión
    $_SESSION[$tipoActual]['estado'] = $miVehiculo->getEstado();
    $_SESSION[$tipoActual]['tanque'] = $miVehiculo->getTanque();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garaje Virtual Avanzado - W3.CSS</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-dark-grey" style="min-height: 100vh; display: flex; align-items: center; justify-content: center;">

    <div style="width: 100%; max-width: 480px; padding: 12px;">
        <div class="w3-card-4 w3-black w3-round-large">
            
            <div class="w3-container w3-padding-small w3-dark-grey w3-round-top-large w3-center">
                <form method="POST" id="form-cambio-vehiculo">
                    <label class="w3-tiny"><b>SELECCIONAR VEHÍCULO DEL GARAJE:</b></label>
                    <select name="vehiculo_tipo" class="w3-select w3-border w3-round w3-small w3-black w3-text-amber w3-center" onchange="this.form.submit()" style="margin-top: 4px; font-weight: bold; text-align-last:center;">
                        <option value="deportivo" <?php echo $tipoActual == 'deportivo' ? 'selected' : ''; ?>>🏎️ Mustang Deportivo (100L Max)</option>
                        <option value="suv" <?php echo $tipoActual == 'suv' ? 'selected' : ''; ?>>🚙 Camioneta SUV 4x4 (140L Max)</option>
                        <option value="moto" <?php echo $tipoActual == 'moto' ? 'selected' : ''; ?>>🏍️ Moto Ninja Japonesa (20L Max)</option>
                    </select>
                </form>
            </div>

            <header class="w3-container w3-center w3-padding-16">
                <h3 class="w3-wide w3-text-amber" style="margin:0;"><b><?php echo strtoupper($miVehiculo->getNombre()); ?></b></h3>
                <div class="w3-margin-top">
                    <?php if ($miVehiculo->getEstado()): ?>
                        <span class="w3-tag w3-round w3-green w3-animate-fading"><b>MOTOR ENCENDIDO</b></span>
                    <?php else: ?>
                        <span class="w3-tag w3-round w3-red"><b>MOTOR APAGADO</b></span>
                    <?php endif; ?>
                </div>
            </header>

            <div class="w3-container w3-padding-small">
                <div class="w3-panel w3-leftbar w3-border-amber <?php echo $colorAlerta; ?> w3-padding-small w3-small w3-round">
                    <p class="w3-margin-none" style="font-family: monospace;"><strong>Log:</strong> <?php echo $mensaje; ?></p>
                </div>
            </div>

            <div class="w3-container w3-padding-large">
                <div class="w3-row">
                    <div class="w3-col s6 w3-text-gray"><b>⛽ Nivel de Combustible:</b></div>
                    <div class="w3-col s6 w3-right-align w3-large w3-text-sand">
                        <b><?php echo round($miVehiculo->getTanque(), 1); ?> / <?php echo $miVehiculo->getCapacidad(); ?> <span class="w3-small">L</span></b>
                    </div>
                </div>

                <?php 
                    $porcentaje = ($miVehiculo->getTanque() / $miVehiculo->getCapacidad()) * 100;
                    $colorBarra = "w3-green";
                    if ($porcentaje <= 20) $colorBarra = "w3-red";
                    elseif ($porcentaje <= 50) $colorBarra = "w3-orange";
                ?>
                <div class="w3-light-grey w3-round-xlarge w3-border w3-border-dark-grey" style="margin-top: 6px;">
                    <div class="w3-container w3-round-xlarge <?php echo $colorBarra; ?>" 
                         style="width: <?php echo $porcentaje; ?>%; height: 16px; transition: width 0.4s ease;">
                    </div>
                </div>
            </div>

            <div class="w3-container w3-padding-16">
                <div class="w3-row-padding w3-grey w3-padding w3-round-large w3-text-black">
                    <div class="w3-col s12 w3-tiny w3-center"><b>PROBAR RENDIMIENTO EN CARRETERA</b></div>
                    <form method="POST" class="w3-margin-top">
                        <input type="hidden" name="vehiculo_tipo" value="<?php echo $tipoActual; ?>">
                        <div class="w3-col s6">
                            <button type="submit" name="accion" value="usar_60" class="w3-button w3-block w3-amber w3-round w3-small w3-hover-orange">
                                🏁 Recorrer 60 km
                            </button>
                        </div>
                        <div class="w3-col s6">
                            <button type="submit" name="accion" value="usar_120" class="w3-button w3-block w3-amber w3-round w3-small w3-hover-orange">
                                🏁 Recorrer 120 km
                            </button>
                        </div>
                    </form>
                </div>
            </div>

            <footer class="w3-container w3-padding-16 w3-light-grey w3-border-top w3-round-bottom-large">
                <form method="POST" class="w3-row-padding">
                    <input type="hidden" name="vehiculo_tipo" value="<?php echo $tipoActual; ?>">
                    <div class="w3-col s6" style="margin-bottom: 8px;">
                        <button type="submit" name="accion" value="encender" class="w3-button w3-block w3-green w3-round-large w3-padding-large">
                            🔑 Arrancar
                        </button>
                    </div>
                    <div class="w3-col s6" style="margin-bottom: 8px;">
                        <button type="submit" name="accion" value="apagar" class="w3-button w3-block w3-red w3-round-large w3-padding-large">
                            🛑 Apagar
                        </button>
                    </div>
                    <div class="w3-col s6">
                        <button type="submit" name="accion" value="llenar_30" class="w3-button w3-block w3-white w3-border w3-round-large w3-small">
                            ⛽ Cargar 30L
                        </button>
                    </div>
                    <div class="w3-col s6">
                        <button type="submit" name="accion" value="vaciar" class="w3-button w3-block w3-black w3-text-red w3-border w3-border-red w3-round-large w3-small">
                            🗑️ Vaciar
                        </button>
                    </div>
                </form>
            </footer>

        </div>
    </div>

</body>
</html>