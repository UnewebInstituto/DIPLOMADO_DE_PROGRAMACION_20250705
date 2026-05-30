<?php
session_start();

// --- DECLARACIÓN DE RASGOS (TRAITS) ---
trait Persona2 {
    public $nombre;

    public function mostrarNombre(){
        return $this->nombre . "<br>";
    }
}

trait Trabajador {
    // Cambiado a public para que la interfaz pueda forzar su ejecución si se requiere probar por fuera
    public function saludoDesdeTrait(){
        return "Saludos desde el rasgo Trabajador <br>";
    }
    
    protected function hola(){
        return "Saludos desde el rasgo Trabajador <br>";
    }
}

/**
 * Declaración de la clase persona que usa los rasgos
 */
class Persona {
    // Uso / Inyección de los rasgos
    use Persona2, Trabajador;

    // Métodos de la clase
    public function asignarNombre($nom){
        $this->nombre = $nom;
    }

    // Este método tiene prioridad sobre el método 'hola' del trait Trabajador
    public function hola(){
        return "Saludo desde la clase Persona.<br>";
    }
}

// --- PERSISTENCIA EN SESIÓN (CONTROLADOR) ---
if (!isset($_SESSION['lista_traits'])) {
    $_SESSION['lista_traits'] = [];
    
    // Tu simulación original por defecto en el primer arranque:
    $personaDemo = new Persona();
    $personaDemo->asignarNombre("ANA");
    
    $_SESSION['lista_traits'][] = [
        'nombre' => $personaDemo->mostrarNombre(),
        'saludo' => $personaDemo->hola(),
        'trait_saludo' => $personaDemo->saludoDesdeTrait()
    ];
}

$notificacion = "";
$estadoNotificacion = "w3-hide";

// Capturar acciones del panel W3.CSS
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['accion'])) {
    if ($_POST['accion'] === 'inyectar') {
        $nombreInput = trim($_POST['nombre']);

        if (!empty($nombreInput)) {
            $nuevaPersona = new Persona();
            $nuevaPersona->asignarNombre(strtoupper($nombreInput));

            $_SESSION['lista_traits'][] = [
                'nombre' => $nuevaPersona->mostrarNombre(),
                'saludo' => $nuevaPersona->hola(),
                'trait_saludo' => $nuevaPersona->saludoDesdeTrait()
            ];

            $notificacion = "¡Clase instanciada! Los Traits se inyectaron en tiempo de ejecución.";
            $estadoNotificacion = "w3-panel w3-green w3-round w3-animate-right";
        } else {
            $notificacion = "Por favor, introduce un nombre para el objeto.";
            $estadoNotificacion = "w3-panel w3-red w3-round w3-animate-shake";
        }
    } elseif ($_POST['accion'] === 'limpiar') {
        $_SESSION['lista_traits'] = [];
        $notificacion = "Ecosistema de rasgos vaciado.";
        $estadoNotificacion = "w3-panel w3-orange w3-text-white w3-round";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Traits Workspace - W3.CSS</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="w3-dark-grey" style="min-height: 100vh; font-family: sans-serif; display: flex; flex-direction: column; justify-content: space-between;">

    <div class="w3-bar w3-black w3-card-4 w3-padding-small">
        <div class="w3-content" style="max-width: 850px;">
            <span class="w3-bar-item w3-text-amber font-mono"><b><i class="fa fa-code-fork"></i> PHP TRAITS (RASGOS)</b></span>
            <span class="w3-bar-item w3-right w3-small w3-text-grey w3-hide-small" style="margin-top: 4px;">UNEWEB Lección Avanzada</span>
        </div>
    </div>

    <div class="w3-content" style="max-width: 850px; width:100%; padding: 20px 16px; flex-grow: 1;">
        
        <div class="<?php echo $estadoNotificacion; ?> w3-padding w3-card-2">
            <p class="w3-margin-none"><i class="fa fa-terminal"></i> <b>Consola:</b> <?php echo $notificacion; ?></p>
        </div>

        <div class="w3-row-padding" style="margin: 0 -16px;">
            
            <div class="w3-col m5 s12" style="margin-bottom: 20px;">
                <div class="w3-card-4 w3-black w3-border w3-border-dark-grey w3-round-large">
                    <header class="w3-container w3-blue-grey w3-padding">
                        <h5 style="margin:0;"><i class="fa fa-wrench"></i> <b>Inyector de Rasgos</b></h5>
                    </header>
                    
                    <form method="POST" class="w3-container w3-padding-16">
                        <input type="hidden" name="accion" value="inyectar">
                        
                        <p>
                            <label class="w3-text-amber w3-small"><b>Nombre a asignar al objeto:</b></label>
                            <input class="w3-input w3-border w3-round w3-grey w3-text-white focus:w3-black" type="text" name="nombre" placeholder="Ej. ANA, PEDRO..." required>
                        </p>

                        <div class="w3-panel w3-card w3-light-grey w3-text-black w3-small w3-round w3-padding-small" style="font-size: 11px;">
                            <b class="w3-text-indigo"><i class="fa fa-cubes"></i> Arquitectura del Objeto:</b>
                            <ul class="w3-ul w3-dense" style="padding-left: 10px;">
                                <li>➕ Trait <b>Persona2</b> &rarr; <i>(Aporta $nombre y mostrarNombre)</i></li>
                                <li>➕ Trait <b>Trabajador</b> &rarr; <i>(Aporta saludoDesdeTrait)</i></li>
                                <li>✨ Clase <b>Persona</b> &rarr; <i>(Domina método hola())</i></li>
                            </ul>
                        </div>
                        
                        <button type="submit" class="w3-button w3-block w3-amber w3-round w3-margin-top w3-hover-blue-grey">
                            <b><i class="fa fa-bolt"></i> Compilar &amp; Ejecutar</b>
                        </button>
                    </form>
                </div>
            </div>

            <div class="w3-col m7 s12">
                <div class="w3-card-4 w3-white w3-round-large w3-text-black">
                    <header class="w3-container w3-black w3-round-top-large w3-padding w3-display-container">
                        <h5 style="margin:0;"><i class="fa fa-play-circle"></i> <b>Instancias Ejecutadas</b></h5>
                        
                        <?php if (!empty($_SESSION['lista_traits'])): ?>
                            <form method="POST" style="display:inline;">
                                <button type="submit" name="accion" value="limpiar" class="w3-button w3-display-right w3-red w3-tiny w3-round" style="margin-right:12px; padding: 2px 8px;">
                                    <i class="fa fa-trash"></i> Reset
                                </button>
                            </form>
                        <?php endif; ?>
                    </header>

                    <div class="w3-container w3-padding">
                        <?php if (empty($_SESSION['lista_traits'])): ?>
                            <div class="w3-center w3-padding-48 w3-text-grey w3-light-grey w3-round-large">
                                <i class="fa fa-chain-broken w3-xxxlarge"></i>
                                <p>No hay instancias en ejecición en este momento.</p>
                            </div>
                        <?php else: ?>
                            <?php foreach ($_SESSION['lista_traits'] as $index => $item): ?>
                                <div class="w3-panel w3-border-left w3-border-teal w3-light-grey w3-padding-small w3-margin-bottom w3-card-2 w3-round-right">
                                    <div class="w3-row">
                                        <div class="w3-col s12">
                                            <span class="w3-badge w3-teal font-bold w3-small">Obj #<?php echo $index + 1; ?></span>
                                            <span class="w3-margin-left font-mono"><b>Asignado:</b> <?php echo $item['nombre']; ?></span>
                                        </div>
                                    </div>
                                    <hr style="margin: 6px 0; border-top: 1px dashed #ccc;">
                                    
                                    <div class="w3-row w3-tiny font-mono">
                                        <div class="w3-col s12 w3-padding-small">
                                            <span class="w3-text-blue"><b>$obj-&gt;hola();</b></span> <span class="w3-text-grey">(Precedencia de Clase)</span><br>
                                            <span class="w3-text-dark-grey">&rArr; <?php echo $item['saludo']; ?></span>
                                        </div>
                                        <div class="w3-col s12 w3-padding-small w3-pale-yellow">
                                            <span class="w3-text-deep-orange"><b>$obj-&gt;saludoDesdeTrait();</b></span> <span class="w3-text-grey">(Inyectado del Trait)</span><br>
                                            <span class="w3-text-dark-grey">&rArr; <?php echo $item['trait_saludo']; ?></span>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <footer class="w3-container w3-black w3-center w3-padding-16 w3-small">
        <p class="w3-margin-none">UNEWEB &bull; Entendiendo los Traits y la Precedencia de Métodos en PHP 8 &bull; 2026</p>
    </footer>

</body>
</html>