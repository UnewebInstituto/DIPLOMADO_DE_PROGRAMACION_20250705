<?php
// Iniciamos sesión para mantener el estado del auto entre clics de la interfaz interactiva
session_start();

// 1ra. Interface a definir
interface Auto {
    public function encender();
    public function apagar();
}

// 2da. declaración de interface que hereda la 1ra.
interface Gasolina extends Auto {
    public function vaciarTanque();
    public function llenarTanque($cant);
}

/**
 * Se define clase que implementa Gasolina con lógica corregida
 */
class Deportivo implements Gasolina {
    private $estado = false;
    private $tanque = 0;
    private $capacidadMax = 80; // Límite lógico para el tanque

    public function __construct($estado = false, $tanque = 0) {
        $this->estado = $estado;
        $this->tanque = $tanque;
    }

    public function encender() {
        if ($this->estado == true) {
            return "SISTEMA: Los propulsores ya están activos.";
        }
        if ($this->tanque <= 0) {
            return "ERROR: Inyección de combustible fallida. Tanque vacío.";
        }
        $this->estado = true;
        return "SISTEMA: Núcleo encendido. Vehículo listo para el hiperespacio.";
    }

    public function apagar() {
        if ($this->estado == false) {
            return "SISTEMA: Los sistemas ya se encuentran en reposo.";
        }
        $this->estado = false;
        return "SISTEMA: Motores apagados. Energía redirigida a escudos.";
    }

    public function llenarTanque($litros) {
        if ($this->tanque + $litros > $this->capacidadMax) {
            $inyectados = $this->capacidadMax - $this->tanque;
            $this->tanque = $this->capacidadMax;
            return "REPOSTAJE: Tanque lleno al máximo de su capacidad. Se añadieron {$inyectados}L.";
        }
        $this->tanque += $litros;
        return "REPOSTAJE: Se han inyectado {$litros}L de plasma-combustible.";
    }

    public function vaciarTanque() {
        $this->tanque = 0;
        $this->estado = false;
        return "ADVERTENCIA: Tanque purgado por completo. Sistemas en apagado de emergencia.";
    }

    // CORRECCIÓN DE LÓGICA AQUÍ:
    public function usar($kilometraje) {
        if (!$this->estado) {
            return "ERROR: Operación rechazada. Encienda el núcleo del vehículo primero.";
        }

        $consumo = $kilometraje / 3;

        // Validar si la gasolina alcanza para todo el viaje o solo una parte
        if ($this->tanque - $consumo <= 0) {
            $distanciaPosible = $this->tanque * 3;
            $this->tanque = 0;
            $this->estado = false;
            return "ALERTA CRÍTICA: Combustible agotado a mitad de camino. Recorriste solo {$distanciaPosible} Km antes de que el motor se apagara.";
        }

        // Si el combustible es suficiente, procedemos con el descuento y el retorno
        $this->tanque -= $consumo;
        return "NAVEGACIÓN: Trayecto completado. Recorridos: {$kilometraje} Km | Consumo: " . round($consumo, 2) . "L.";
    }

    public function consultarEstado() {
        return $this->estado ? "ACTIVO" : "REPOSO";
    }

    public function getTanque() {
        return $this->tanque;
    }
}

// --- MANEJO DE LA INTERFAZ INTERACTIVA ---
// Rehidratar el estado desde la sesión o crear uno nuevo
if (!isset($_SESSION['auto_estado'])) {
    $_SESSION['auto_estado'] = false;
    $_SESSION['auto_tanque'] = 0;
}

$mustang = new Deportivo($_SESSION['auto_estado'], $_SESSION['auto_tanque']);
$consola_output = "Esperando comandos del piloto...";

// Procesar acciones de los botones
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['accion'])) {
        switch ($_POST['accion']) {
            case 'encender':
                $consola_output = $mustang->encender();
                break;
            case 'apagar':
                $consola_output = $mustang->apagar();
                break;
            case 'cargar':
                $consola_output = $mustang->llenarTanque(20);
                break;
            case 'vaciar':
                $consola_output = $mustang->vaciarTanque();
                break;
            case 'viajar':
                $km = floatval($_POST['km'] ?? 0);
                if ($km > 0) {
                    $consola_output = $mustang->usar($km);
                } else {
                    $consola_output = "ERROR: Ingrese una distancia cuántica válida.";
                }
                break;
        }
        // Guardar nuevo estado en la sesión
        $_SESSION['auto_estado'] = $mustang->consultarEstado() === "ACTIVO";
        $_SESSION['auto_tanque'] = $mustang->getTanque();
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cyber HUD - Control de Deportivo</title>
    <style>
        :root {
            --neon-cyan: #00f3ff;
            --neon-pink: #ff0055;
            --dark-bg: #0a0a12;
            --panel-bg: rgba(16, 16, 28, 0.75);
        }

        body {
            background-color: var(--dark-bg);
            color: #e2e8f0;
            font-family: 'Courier New', Courier, monospace;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            overflow: hidden;
            background-image: radial-gradient(circle at 50% 50%, #1e1e38 0%, #0a0a12 80%);
        }

        /* Contenedor Principal Sci-Fi */
        .hud-container {
            width: 450px;
            background: var(--panel-bg);
            border: 2px solid var(--neon-cyan);
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.2), inset 0 0 15px rgba(0, 243, 255, 0.1);
            backdrop-filter: blur(10px);
            position: relative;
        }

        .hud-container::before {
            content: "SYSTEM HUD v4.02";
            position: absolute;
            top: -12px;
            left: 20px;
            background: var(--dark-bg);
            padding: 0 10px;
            font-size: 11px;
            color: var(--neon-cyan);
            letter-spacing: 2px;
        }

        h2 {
            text-align: center;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 4px;
            margin-top: 0;
            text-shadow: 0 0 8px var(--neon-cyan);
            font-size: 20px;
        }

        /* Pantallas de Estado */
        .telemetria {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
            margin-bottom: 20px;
        }

        .stat-box {
            background: rgba(0, 0, 0, 0.4);
            border: 1px solid rgba(0, 243, 255, 0.3);
            padding: 10px;
            text-align: center;
            border-radius: 6px;
        }

        .stat-label {
            font-size: 10px;
            color: #8a8ab5;
            text-transform: uppercase;
            margin-bottom: 5px;
        }

        .stat-value {
            font-size: 22px;
            font-weight: bold;
            color: #fff;
        }

        .status-activo { color: var(--neon-cyan); text-shadow: 0 0 10px var(--neon-cyan); }
        .status-reposo { color: var(--neon-pink); text-shadow: 0 0 10px var(--neon-pink); }

        /* Consola de diagnóstico */
        .consola {
            background: #05050a;
            border-left: 3px solid var(--neon-pink);
            padding: 12px;
            font-size: 12px;
            height: 60px;
            margin-bottom: 25px;
            overflow-y: auto;
            color: #a0aec0;
            box-shadow: inset 0 0 8px rgba(0,0,0,0.8);
        }

        /* Botones e Inputs del Panel */
        .grid-botones {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 12px;
            margin-bottom: 15px;
        }

        button {
            background: transparent;
            border: 1px solid var(--neon-cyan);
            color: var(--neon-cyan);
            padding: 10px;
            cursor: pointer;
            font-family: inherit;
            font-weight: bold;
            text-transform: uppercase;
            transition: all 0.3s ease;
            border-radius: 4px;
        }

        button:hover {
            background: var(--neon-cyan);
            color: #000;
            box-shadow: 0 0 15px var(--neon-cyan);
        }

        button.btn-danger {
            border-color: var(--neon-pink);
            color: var(--neon-pink);
        }

        button.btn-danger:hover {
            background: var(--neon-pink);
            color: #fff;
            box-shadow: 0 0 15px var(--neon-pink);
        }

        .control-viaje {
            display: flex;
            gap: 10px;
            border-top: 1px dashed rgba(0, 243, 255, 0.2);
            padding-top: 15px;
        }

        input[type="number"] {
            flex: 1;
            background: #05050a;
            border: 1px solid rgba(0, 243, 255, 0.4);
            color: #fff;
            padding: 8px;
            font-family: inherit;
            text-align: center;
            border-radius: 4px;
        }

        input[type="number"]:focus {
            outline: none;
            border-color: var(--neon-cyan);
            box-shadow: 0 0 8px rgba(0, 243, 255, 0.4);
        }
    </style>
</head>
<body>

<div class="hud-container">
    <h2>Hyperion Drive</h2>
    
    <div class="telemetria">
        <div class="stat-box">
            <div class="stat-label">Núcleo</div>
            <div class="stat-value <?php echo $mustang->consultarEstado() === 'ACTIVO' ? 'status-activo' : 'status-reposo'; ?>">
                <?php echo $mustang->consultarEstado(); ?>
            </div>
        </div>
        <div class="stat-box">
            <div class="stat-label">Plasma Tanque</div>
            <div class="stat-value" style="color: var(--neon-cyan);">
                <?php echo round($mustang->getTanque(), 1); ?>L
            </div>
        </div>
    </div>

    <div class="consola">
        > <?php echo $consola_output; ?>
    </div>

    <form method="POST">
        <div class="grid-botones">
            <button type="submit" name="accion" value="encender">Ignición</button>
            <button type="submit" name="accion" value="apagar" class="btn-danger">Extinguir</button>
            <button type="submit" name="accion" value="cargar">Inyectar +20L</button>
            <button type="submit" name="accion" value="vaciar" class="btn-danger">Purgar Tanque</button>
        </div>

        <div class="control-viaje">
            <input type="number" name="km" placeholder="Distancia (Km)" min="1" max="500">
            <button type="submit" name="accion" value="viajar" style="flex: 1;">Saltar al hiperespacio</button>
        </div>
    </form>
</div>

</body>
</html>