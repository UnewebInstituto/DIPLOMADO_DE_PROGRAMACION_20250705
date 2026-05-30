<?php
session_start();

// 1ra. Se define la clase abstracta
abstract class Molde {
    abstract public function ingresarNombre($nombre);
    abstract public function obtenerNombre();
}

/**
 * Se utiliza la clase abstracta
 */
class Persona extends Molde {
    // atributos
    private $mensaje = "Hola alumnos de UNEWEB <br>";
    private $nombre;

    // Getters para renderizar limpiamente en la interfaz HTML
    public function getMensaje() {
        return $this->mensaje;
    }
    
    public function getNombreCompleto() {
        return $this->nombre;
    }

    // métodos
    public function mostrar(){
        return $this->mensaje;
    }

    /**
     * Desarrollo de los métodos abstractos
     */
    public function ingresarNombre($nombre, $userName = "UW"){
        $this->nombre = $nombre . ", nombre de usuario: " . $userName . "<br>";
    }

    public function obtenerNombre(){
        return $this->nombre . "<br>";
    }
}

// --- BANCO DE DATOS INTERACTIVO (SESIÓN) ---
// Si la sesión está vacía, ejecutamos tu instancia de prueba por defecto
if (!isset($_SESSION['lista_personas'])) {
    $_SESSION['lista_personas'] = [];
    
    // Tu código de prueba original ejecutado dentro del ecosistema gráfico:
    $obj = new Persona();
    $obj->ingresarNombre("HENRY DUQUE", "HDUQUE");
    
    $_SESSION['lista_personas'][] = [
        'saludo' => $obj->mostrar(),
        'datos'  => $obj->getNombreCompleto()
    ];
}

$notificacion = "";
$estadoNotificacion = "w3-hide";

// Procesar entradas del usuario
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['accion'])) {
    if ($_POST['accion'] === 'registrar') {
        $nombreInput = trim($_POST['nombre']);
        $userInput = trim($_POST['username']);

        if (!empty($nombreInput)) {
            $nuevaPersona = new Persona();
            
            if (!empty($userInput)) {
                $nuevaPersona->ingresarNombre($nombreInput, $userInput);
            } else {
                $nuevaPersona->ingresarNombre($nombreInput);
            }

            $_SESSION['lista_personas'][] = [
                'saludo' => $nuevaPersona->mostrar(),
                'datos'  => $nuevaPersona->getNombreCompleto()
            ];

            $notificacion = "¡Objeto instanciado correctamente desde la estructura abstracta!";
            $estadoNotificacion = "w3-panel w3-green w3-round w3-animate-right";
        } else {
            $notificacion = "Por favor, escribe un nombre válido.";
            $estadoNotificacion = "w3-panel w3-red w3-round w3-animate-shake";
        }
    } elseif ($_POST['accion'] === 'limpiar') {
        $_SESSION['lista_personas'] = [];
        $notificacion = "Memoria limpia. Sin instancias activas.";
        $estadoNotificacion = "w3-panel w3-orange w3-text-white w3-round";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UNEWEB - Control de Clases Abstractas</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="w3-light-grey" style="min-height: 100vh; font-family: sans-serif;">

    <div class="w3-bar w3-black w3-card-4 w3-padding-small">
        <div class="w3-content" style="max-width: 800px;">
            <span class="w3-bar-item w3-text-amber"><b><i class="fa fa-code"></i> WORKSPACE POO</b></span>
            <span class="w3-bar-item w3-right w3-small w3-text-grey w3-hide-small" style="margin-top: 4px;">UNEWEB Avanzado</span>
        </div>
    </div>

    <div class="w3-content" style="max-width: 800px; padding: 24px 16px;">
        
        <div class="<?php echo $estadoNotificacion; ?> w3-padding w3-card-2">
            <p class="w3-margin-none"><i class="fa fa-terminal"></i> <b>Consola:</b> <?php echo $notificacion; ?></p>
        </div>

        <div class="w3-row-padding" style="margin: 0 -16px;">
            
            <div class="w3-col m5 s12" style="margin-bottom: 24px;">
                <div class="w3-card-4 w3-white w3-round-large">
                    <header class="w3-container w3-teal w3-round-top-large w3-padding">
                        <h5 style="margin:0;"><i class="fa fa-cube"></i> <b>Clase Persona</b></h5>
                        <span class="w3-tiny w3-opacity">Derivada de la Abstracta Molde</span>
                    </header>
                    
                    <form method="POST" class="w3-container w3-padding-16">
                        <input type="hidden" name="accion" value="registrar">
                        
                        <p>
                            <label class="w3-text-dark-grey w3-small"><b>Nombre de la Persona:</b></label>
                            <input class="w3-input w3-border w3-round w3-light-grey focus:w3-white" type="text" name="nombre" placeholder="Ej. HENRY DUQUE" required>
                        </p>
                        
                        <p>
                            <label class="w3-text-dark-grey w3-small"><b>Nombre de Usuario (Parámetro Opcional):</b></label>
                            <input class="w3-input w3-border w3-round w3-light-grey" type="text" name="username" placeholder="Por defecto es 'UW'">
                        </p>
                        
                        <button type="submit" class="w3-button w3-block w3-amber w3-round-large w3-margin-top w3-hover-teal">
                            <b><i class="fa fa-play-circle"></i> Ejecutar Instancia</b>
                        </button>
                    </form>
                </div>
            </div>

            <div class="w3-col m7 s12">
                <div class="w3-card-4 w3-white w3-round-large">
                    <header class="w3-container w3-dark-grey w3-round-top-large w3-padding w3-display-container">
                        <h5 style="margin:0;"><i class="fa fa-desktop"></i> <b>Salida del Navegador (`echo`)</b></h5>
                        
                        <?php if (!empty($_SESSION['lista_personas'])): ?>
                            <form method="POST" style="display:inline;">
                                <button type="submit" name="accion" value="limpiar" class="w3-button w3-display-right w3-red w3-tiny w3-round-large" style="margin-right:12px; padding: 4px 10px;">
                                    <i class="fa fa-refresh"></i> Reset Memoria
                                </button>
                            </form>
                        <?php endif; ?>
                    </header>

                    <div class="w3-container w3-padding-16">
                        <?php if (empty($_SESSION['lista_personas'])): ?>
                            <div class="w3-center w3-padding-32 w3-text-light-grey w3-light-gray w3-round-large">
                                <i class="fa fa-database w3-xxxlarge"></i>
                                <p class="w3-text-grey">No hay datos procesados en el buffer actual.</p>
                            </div>
                        <?php else: ?>
                            <ul class="w3-ul w3-card-2 w3-round-large w3-white overflow-hidden">
                                <?php foreach ($_SESSION['lista_personas'] as $index => $item): ?>
                                    <li class="w3-padding-large w3-border-bottom">
                                        <div class="w3-row">
                                            <div class="w3-col s1 w3-center">
                                                <span class="w3-badge w3-grey"><?php echo $index + 1; ?></span>
                                            </div>
                                            <div class="w3-col s11" style="padding-left:8px;">
                                                <span class="w3-text-blue w3-small font-bold">
                                                    <strong>Método mostrar():</strong> <?php echo $item['saludo']; ?>
                                                </span>
                                                <div class="w3-light-grey w3-padding-small w3-round w3-margin-top w3-text-charcoal" style="font-family: monospace; font-size: 11px; border-left: 3px solid #ffc107;">
                                                    <strong>Método obtenerNombre():</strong><br>
                                                    <?php echo $item['datos']; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        <?php endif; ?>
                    </div>
                </div>
            </div>

        </div>

    </div>

</body>
</html>