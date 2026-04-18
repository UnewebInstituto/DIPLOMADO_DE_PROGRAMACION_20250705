<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <title>Carrito de Compras</title>
</head>
<body>
    <div class="ml-8 mr-8 mt-4" >
        <h1 class="text-xl font-bold">Carrito de Compras></h1>
        <div class= text-right>
        <?php
            if (!empty($_SESSION['nombre'])){
                echo "<div>";
                echo "<img src='{$_SESSION['foto']}' width='40px' height='40px'>" . "  ";
                echo $_SESSION['nombre'] . " " . $_SESSION['apellido'];
                echo "</div>";
                echo "<a href='./cerrar_sesion.php'>Cerrar sesión</a>";
            }else{
                echo "<a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200'  href='./login.php'>Iniciar sesión</a>";
            }
        ?>
        </div>

