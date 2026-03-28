<?php
session_start();
require 'config.php';

// Verificamos que el usuario esté logueado
if (!isset($_SESSION['user_id'])) {
    die("Debes iniciar sesión para comentar.");
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id_tema = $_POST['id_tema'];
    $comentario = $_POST['comentario'];
    $id_usuario = $_SESSION['user_id'];

    $sql = "INSERT INTO comentarios (id_tema, id_usuario, comentario) VALUES (?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    
    if ($stmt->execute([$id_tema, $id_usuario, $comentario])) {
        header("Location: ver_tema.php?id=" . $id_tema);
    }
}
?>