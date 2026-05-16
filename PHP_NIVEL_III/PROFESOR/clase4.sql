SELECT A.nombre_producto AS nombre,
                       A.nombre_archivo AS foto,
                       A.id_producto AS id_producto,
                       A.descripcion AS descripcion,
                       A.precio AS precio
            FROM productos AS A, agregar AS B
            WHERE A.id_producto = B.id_producto AND
            B.session_id = 'ijecda447v901hl6mfbv0398e4'
            GROUP BY A.id_producto;