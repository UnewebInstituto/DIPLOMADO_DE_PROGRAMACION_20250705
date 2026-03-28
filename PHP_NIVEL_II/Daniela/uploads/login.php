<?php
session_start();
require 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $stmt = $pdo->prepare("SELECT * FROM usuarios WHERE email = ?");
    $stmt->execute([$email]);
    $user = $stmt->fetch();

    // Verificamos si el usuario existe y la clave es correcta
    if ($user && password_verify($password, $user['password'])) {
        // Creamos la sesión del usuario
        $_SESSION['user_id'] = $user['id_usuario'];
        $_SESSION['user_nombre'] = $user['nombre'];
        $_SESSION['user_foto'] = $user['foto_perfil'];

        header("Location: foro_principal.php");
        exit;
    } else {
        echo "Correo o contraseña incorrectos.";
    }
}
?>