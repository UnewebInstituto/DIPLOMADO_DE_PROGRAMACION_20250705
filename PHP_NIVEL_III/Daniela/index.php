<?php
    include './conexion.php';
    include './encabezado.php';

    $query = "SELECT * from productos";
    $resultado = pg_query($enlace, $query);
    $cantidad = pg_num_rows($resultado);
    if ($cantidad > 0){
        $a = 1; // índice para la fila
        $b = 1; // indice para la columna
        while ($data = pg_fetch_array($resultado)){
            $id[$a][$b] = $data['id_producto'];
            $nombre_producto[$a][$b] = $data['nombre_producto'];
            $descripcion[$a][$b] = $data['descripcion'];
            $nombre_archivo[$a][$b] = $data['nombre_archivo'];
            $precio[$a][$b] = $data['precio'];
            $existencia[$a][$b] = $data['existencia'];

            $b = $b + 1; // Se incrementa el índice de la columna en 1
            if ($b == 4){
                $a = $a + 1 ;
                $b = 1;
            }
        }
        /*
        echo var_dump($id);
        echo "<hr>"; 
        echo var_dump($nombre_producto);
        echo "<hr>";
        echo var_dump($descripcion);
        echo "<hr>";
        echo var_dump($nombre_archivo);
        echo "<hr>";
        echo var_dump($precio);
        echo "<hr>";
        echo var_dump($existencia);
        echo "<hr>";
        */
        /**
         * Verificar la cantidad de artículos
         * para presentar en el catálogo
         */
        if ($cantidad >=3){
            $condicion = 3;
        }else{
            $condicion = $cantidad;
        }
        /**
         * Mostrar catálogo
         */
        echo "<table class='border border-gray-200 divide-y divide-gray-200'>";
        for ($c=1; $c<=$a ; $c++) { 
            echo "<tr>";
            for ($d=1; $d <= $condicion; $d++) { 
                if (!empty($id[$c][$d])){
                    echo "<td class='border border-gray-200 text-center'>";
                    echo "<b>Id:</b>" . $id[$c][$d] . "<br>";
                    echo "<b>Nombre:</b>" . $nombre_producto[$c][$d] . "<br>";
                    echo "<b>Precio:</b>" . $precio[$c][$d] . "<br>";
                    echo "<b>Existencia:</b>" . $existencia[$c][$d] .  "Unidad(es)"  . "<br>";
                    echo "<b>Descripción:</b>" . $descripcion[$c][$d] . "<br>";
                    echo "<b>Imagen:</b><img src='" . $nombre_archivo[$c][$d] . "' width='150px' height='150px'>"  . "<br>";
                    echo "<a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href='./validar.php?id=4&id_producto=" . $id[$c][$d] . "'>Agregar al carrito</a>" . "<br>";
                    echo "</td>";
                }
            }
            echo "</tr>";
        }
        echo "</table>";
    }else{
        $_GET['severidad'] = 3;
        $_GET['mensaje'] = "No hay productos cargados en el sistema";            
    }
    if ($_SESSION['carrito']){
        echo "<br>";
        echo "<a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href='./ver_carrito.php'>Ver carrito</a>";
    }
    if ($_SESSION['tipo_usuario']=='ADMINISTRADOR'){
        echo "<br>";
        echo "<a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href='./ver_carrito.php'>Menú</a>";
    }
    echo "<br>";

    echo "<a class='text-blue-600 font-medium hover:text-blue-800 underline-offset-4 hover:underline transition-all duration-200' href='./login.php'>Iniciar sesión</a>";
    echo "<br>";
    include './pie.php';
?>