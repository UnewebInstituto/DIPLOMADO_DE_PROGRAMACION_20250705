<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.html");
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mi Foro</title>
    <style>
        .perfil-nav { display: flex; align-items: center; background: #eee; padding: 10px; }
        .perfil-nav img { width: 40px; height: 40px; border-radius: 50%; margin-right: 10px; object-fit: cover; }
    </style>
</head>
<body>

<nav class="perfil-nav">
    <img src="<?php echo $_SESSION['user_foto']; ?>" alt="Foto de perfil">
    <span>Bienvenido, <strong><?php echo $_SESSION['user_nombre']; ?></strong></span>
    <a href="logout.php" style="margin-left: auto;">Cerrar Sesión</a>
</nav>

<h1>Temas del Foro</h1>
<a href="crear_tema.html">+ Crear Nuevo Tema</a>

</body>
</html>