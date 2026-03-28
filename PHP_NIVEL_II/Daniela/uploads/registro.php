<?php
session_start();
require 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $email = $_POST['email'];
    // Ciframos la contraseña por seguridad
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    // Manejo de la Imagen de Perfil
    $foto_nombre = $_FILES['foto']['name'];
    $ruta_temporal = $_FILES['foto']['tmp_name'];
    $carpeta_destino = "uploads/" . time() . "_" . $foto_nombre;

    if (move_uploaded_file($ruta_temporal, $carpeta_destino)) {
        // Insertar en la BD usando Sentencias Preparadas
        $sql = "INSERT INTO usuarios (nombre, apellido, email, password, foto_perfil) 
                VALUES (?, ?, ?, ?, ?)";
        $stmt = $pdo->prepare($sql);
        
        if ($stmt->execute([$nombre, $apellido, $email, $password, $carpeta_destino])) {
            echo "¡Registro exitoso! Ya puedes iniciar sesión.";
        }
    } else {
        echo "Error al subir la imagen.";
    }
}
?>