<?php
    include './conexion.php';
    include './encabezado.php';

    if (!$_SESSION['activo']){
        $mensaje = "Debe iniciar sesión para poder ver el carrito de compras";
        $severidad = 2;
        header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);
    }else{
        $session_id = session_id();
        $sql = "SELECT A.nombre_producto AS nombre,
                       A.nombre_archivo AS foto,
                       A.id_producto AS id_producto,
                       A.descripcion AS descripcion,
                       A.precio AS precio
            FROM productos AS A, agregar AS B
            WHERE A.id_producto = B.id_producto AND
            B.session_id = '$session_id'
            GROUP BY A.id_producto";
        $resultado = pg_query($enlace, $sql);
        $cantidad = pg_num_rows($resultado);
        if ($cantidad == 0){
            $mensaje = "No hay artículos en el carrito de compras";
            $severidad = 2;
            header('location:/?mensaje='.$mensaje.'&severidad='.$severidad);
        }else{
            echo "<a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href='./'>Ir al inicio</a>";
            echo "<form action='./validar.php' method='POST'>";
            echo "<table class='border border-gray-200 divide-y divide-gray-200'>";
            echo "<tr>";
                echo "<th class='border border-gray-200 text-center'>Nombre</th>";
                echo "<th class='border border-gray-200 text-center'>Imagen</th>";
                echo "<th class='border border-gray-200 text-center'>Cantidad</th>";
                echo "<th class='border border-gray-200 text-center'>Precio</th>";
                echo "<th class='border border-gray-200 text-center'>Acción</th>";
            echo "</tr>";
            while ($data = pg_fetch_array($resultado)){
                echo "<tr>";
                echo "<td class='border border-gray-200 text-center'>{$data['nombre']}</td>";
                echo "<td class='border border-gray-200 text-center'><img src={$data['foto']} width='150px' height='150px'></td>";
                echo "<td class='border border-gray-200 text-center'><input type='number' name='cantidad' min='1'></td>";
                echo "<td class='border border-gray-200 text-center'>{$data['precio']}</td>";
                echo "<td class='border border-gray-200 text-center'><a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href='./validar.php?id=5&id_producto=" . $data['id_producto'] . "'>Borrar</a></td>";
                echo "</tr>";
            }
            echo "</table>";
            echo "<button class='px-6 py-2.5 bg-blue-600 text-white font-medium text-sm leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out' type='submit'>Enviar</button>";
            echo "<input type='hidden' name='id' value='6'>";
            echo "</form>";
        }
    }
    include './pie.php';
?>