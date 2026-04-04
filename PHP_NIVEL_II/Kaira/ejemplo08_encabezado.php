<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Foro</title>
</head>
<body>
    <div class="container">
        <h1>Foro</h1>
        <div class="text-end">
        <?php
            if (!empty($_SESSION['nombre'])){
                echo "<div>";
                echo "<img src='{$_SESSION['foto']}' width='40px' height='40px'>";
                echo $_SESSION['nombre'] . " " . $_SESSION['apellido'];
                echo "</div>";
                echo "<a href='./ejemplo08_cerrar_sesion.php'>Cerra sesion</a>";
            }
        ?>
        </div>