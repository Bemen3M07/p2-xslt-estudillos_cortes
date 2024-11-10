<?php
// Verificar si el formulario se ha enviado por método POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Escapar caracteres especiales para prevenir inyecciones
    $nombre = htmlspecialchars($_POST["nombre"]);
    $email = htmlspecialchars($_POST["email"]);
    $contrasena = htmlspecialchars($_POST["contrasena"]);
} else {
    $nombre = $email = $contrasena = "";
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Datos Recibidos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        p {
            font-size: 18px;
            color: #555;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Datos Recibidos</h1>

        <?php if (!empty($nombre) && !empty($email) && !empty($contrasena)): ?>
            <p><strong>Nombre:</strong> <?php echo $nombre; ?></p>
            <p><strong>Email:</strong> <?php echo $email; ?></p>
            <p><strong>Contraseña:</strong> (oculta)</p>
        <?php else: ?>
            <p>No se han recibido datos del formulario.</p>
        <?php endif; ?>
    </div>
</body>
</html>
