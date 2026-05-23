<?php
class Loteria {
    public $numero;
    public $intentos;
    public $resultado = false;
    public $historial = []; // Almacena los números que salieron para mostrarlos en la UI

    public function __construct($nmro, $ints) {
        // Validamos y sanitizamos los datos de entrada
        $this->numero = intval($nmro);
        $this->intentos = min(intval($ints), 50); // Límite de 50 intentos para no romper la pantalla
    }

    public function sorteo() {
        // Evitamos errores de división por cero si el número es 0
        $minimo = $this->numero > 0 ? round($this->numero / 2) : 1;
        $maximo = $this->numero > 0 ? $this->numero * 2 : 10;

        for ($i = 0; $i < $this->intentos; $i++) {
            $extraccion = rand($minimo, $maximo);
            $gano = $this->comparar($extraccion);
            
            // Guardamos el registro para la interfaz gráfica
            $this->historial[] = [
                'numero' => $extraccion,
                'ganador' => $gano
            ];

            // Si ya ganó, rompemos el bucle (opcional, pero realista)
            if ($gano) {
                $this->resultado = true;
                break;
            }
        }
    }

    private function comparar($arg_extraccion) {
        return ($arg_extraccion == $this->numero);
    }
}

// Procesar el juego si se envía el formulario
$juegoEjecutado = false;
$loteria = null;

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['numero'], $_POST['intentos'])) {
    $loteria = new Loteria($_POST['numero'], $_POST['intentos']);
    $loteria->sorteo();
    $juegoEjecutado = true;
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sorteo Premium | Lotería Interactiva</title>
    <!-- Tailwind CSS para un diseño minimalista y moderno -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Google Fonts: Inter -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; }
        .ball-animation { animation: pop 0.4s ease-out forwards; }
        @keyframes pop {
            0% { transform: scale(0.7); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }
    </style>
</head>
<body class="bg-slate-950 text-slate-100 min-h-screen flex flex-col justify-between selection:bg-amber-500 selection:text-slate-900">

    <!-- Header / Navbar -->
    <header class="border-b border-slate-800/80 backdrop-blur-md sticky top-0 bg-slate-950/70 z-50">
        <div class="max-w-5xl mx-auto px-6 py-4 flex justify-between items-center">
            <div class="flex items-center gap-2">
                <span class="h-3 w-3 rounded-full bg-amber-500 animate-pulse"></span>
                <span class="font-bold tracking-wider text-sm uppercase text-slate-300">Chance.AI</span>
            </div>
            <span class="text-xs text-slate-500 bg-slate-900 border border-slate-800 px-3 py-1 rounded-full">Sorteos en Vivo</span>
        </div>
    </header>

    <!-- Contenido Principal -->
    <main class="max-w-4xl mx-auto px-6 py-12 w-full flex-grow grid md:grid-cols-5 gap-8 items-start">
        
        <!-- Columna Formulario (2/5 del ancho) -->
        <div class="md:col-span-2 bg-slate-900/50 border border-slate-800 p-6 rounded-2xl backdrop-blur-sm shadow-xl">
            <h1 class="text-xl font-semibold mb-2 text-white">Configura tu Jugada</h1>
            <p class="text-xs text-slate-400 mb-6">Prueba tu suerte contra nuestro algoritmo de extracción aleatoria.</p>

            <form action="" method="POST" class="space-y-5">
                <div>
                    <label for="numero" class="block text-xs font-semibold uppercase tracking-wider text-slate-400 mb-2">Tu número de la suerte</label>
                    <input type="number" name="numero" id="numero" min="1" required 
                           value="<?php echo isset($_POST['numero']) ? htmlspecialchars($_POST['numero']) : '7'; ?>"
                           class="w-full bg-slate-950 border border-slate-800 rounded-xl px-4 py-3 text-white focus:outline-none focus:border-amber-500 transition-colors text-lg font-medium">
                </div>

                <div>
                    <label for="intentos" class="block text-xs font-semibold uppercase tracking-wider text-slate-400 mb-2">Cantidad de Intentos (Max 50)</label>
                    <input type="number" name="intentos" id="intentos" min="1" max="50" required 
                           value="<?php echo isset($_POST['intentos']) ? htmlspecialchars($_POST['intentos']) : '12'; ?>"
                           class="w-full bg-slate-950 border border-slate-800 rounded-xl px-4 py-3 text-white focus:outline-none focus:border-amber-500 transition-colors text-lg font-medium">
                </div>

                <button type="submit" class="w-full bg-amber-500 hover:bg-amber-400 text-slate-950 font-bold py-3.5 px-4 rounded-xl transition-all duration-200 transform hover:-translate-y-0.5 active:translate-y-0 shadow-lg shadow-amber-500/10 hover:shadow-amber-500/20 text-center">
                    Iniciar Sorteo
                </button>
            </form>
        </div>

        <!-- Columna Resultados (3/5 del ancho) -->
        <div class="md:col-span-3 space-y-6">
            <?php if ($juegoEjecutado && $loteria): ?>
                
                <!-- Cartel de Resultado Principal -->
                <?php if ($loteria->resultado): ?>
                    <div class="bg-emerald-500/10 border border-emerald-500/30 p-6 rounded-2xl flex items-center gap-4 shadow-2xl shadow-emerald-500/5">
                        <div class="h-12 w-12 rounded-full bg-emerald-500 text-slate-950 flex items-center justify-center text-2xl font-bold">✓</div>
                        <div>
                            <h2 class="text-emerald-400 font-semibold text-lg">¡FELICITACIONES, HUBO GANADOR!</h2>
                            <p class="text-slate-300 text-sm">El número <span class="font-bold text-white"><?php echo $loteria->numero; ?></span> fue extraído exitosamente.</p>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="bg-rose-500/10 border border-rose-500/20 p-6 rounded-2xl flex items-center gap-4">
                        <div class="h-12 w-12 rounded-full bg-rose-500/20 text-rose-400 flex items-center justify-center text-xl font-bold">✕</div>
                        <div>
                            <h2 class="text-rose-400 font-semibold text-base">Siga Intentando</h2>
                            <p class="text-slate-400 text-sm">Tu número no salió en esta ronda de extracciones.</p>
                        </div>
                    </div>
                <?php endif; ?>

                <!-- Historial Interactivo de Balotas -->
                <div class="bg-slate-900/30 border border-slate-800/60 p-6 rounded-2xl">
                    <h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-4">Flujo de Extracción en Tiempo Real</h3>
                    
                    <div class="flex flex-wrap gap-3">
                        <?php foreach ($loteria->historial as $index => $tiro): ?>
                            <?php 
                                $esGanador = $tiro['ganador'];
                                $claseBalota = $esGanador 
                                    ? 'bg-amber-500 text-slate-950 font-bold scale-110 shadow-lg shadow-amber-500/50 border-amber-400' 
                                    : 'bg-slate-900 text-slate-300 border-slate-800 hover:border-slate-700';
                            ?>
                            <div class="ball-animation flex flex-col items-center" style="animation-delay: <?php echo $index * 0.05; ?>s;">
                                <div class="w-12 h-12 rounded-full border flex items-center justify-center text-sm transition-all duration-300 <?php echo $claseBalota; ?>">
                                    <?php echo $tiro['numero']; ?>
                                </div>
                                <span class="text-[10px] text-slate-600 mt-1">#<?php echo $index + 1; ?></span>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>

            <?php else: ?>
                <!-- Estado Inicial / Vacío -->
                <div class="border border-dashed border-slate-800 rounded-2xl p-12 text-center flex flex-col items-center justify-center min-h-[300px]">
                    <div class="w-16 h-16 rounded-2xl bg-slate-900 flex items-center justify-center text-slate-400 mb-4 text-2xl border border-slate-800">
                        🎲
                    </div>
                    <h2 class="text-slate-300 font-medium mb-1">Esperando tu jugada</h2>
                    <p class="text-sm text-slate-500 max-w-xs">Introduce tus números en el panel izquierdo para generar el sorteo matemático simulado.</p>
                </div>
            <?php endif; ?>
        </div>

    </main>

    <!-- Footer -->
    <footer class="border-t border-slate-900 py-6 text-center text-xs text-slate-600">
        <p>&copy; <?php echo date('Y'); ?> Chance.AI - Simulación de Lotería Basada en Rangos Dinámicos</p>
    </footer>

</body>
</html>