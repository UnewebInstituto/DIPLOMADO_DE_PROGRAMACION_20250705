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
                echo "<img src='{$_SESSION['foto']}' width='40px' height='40px'>" . "  ";
                echo $_SESSION['nombre'] . " " . $_SESSION['apellido'];
                echo "</div>";
                echo "<a href='./ejemplo08_cerrar_sesion.php'>Cerrar sesión</a>";
            }else{
                echo "<a href='./ejemplo08_login.php'>Iniciar sesión</a>";
            }
        ?>
        </div>

        <?php if (!empty($_SESSION['nombre'])) { ?>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                    </button>
                    <a class="navbar-brand" href="#">Foro</a>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">Inicio</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="./ejemplo08_tema.php">Tema</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Título del tema" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Buscar</button>
                    </form>
                    </div>
                </div>
            </nav>
        <?php } ?>
