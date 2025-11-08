--Columnas Calculadas
-- Se refieren a operaciones especiales "cálculos", que se efecúan sobre columnas de las tablas
-- Sumatoria
select SUM(nombre_columna) from tabla;

-- Valor Mínimo
selec MIN(nombre_columna) from tabla;

-- Valor Máximo
select MAX(nombre_columna) from tabla;

-- Valor Promedio
select AVG(nombre_columna) from tabla;

-- Conteo: Solo se efectuará sobre los valores diferentes de Null contenidos en el campo
select COUNT(nombre_columna) from tabla;

-- Nombre de la vista: vista_proveedores_productos
-- Aplica sobre cualquier entidad de datos de donde se vaya a extraer el cálculo

select sum(existencia) from vista_proveedores_productos;

select min(precio) from vista_proveedores_productos;

select max(precio) from vista_proveedores_productos;

select avg(precio) from vista_proveedores_productos;

select count(producto) from vista_proveedores_productos;

-- DISTINCT
select DISTINCT(nombre) from vista_proveedores_productos;

select DISTINCT(productos) from vista_proveedores_productos;

-- GROUP BY (Agrupamiento)
select nombre from vista_proveedores_productos GROUP BY nombre;

-- ORDENAMIENTO
-- Ordenamiento Ascendente/ASC (Forma por omisión) o Descendiente/desc
select * from vista_proveedores_productos order by existencia;

select * from vista_proveedores_productos order by precio;

select * from vista_proveedores_productos order by existencia desc;

select * from vista_proveedores_productos order by precio desc;

select nombre as "Marca", sum(existencia) as "Existencia", min(precio) as "Precio_Minimo", max(precio) as "Precio_Maximo", round(avg(precio),2) as "Precio_Promedio" from vista_proveedores_productos Group by nombre;

-- Operadores Relacionales
select * from vista_proveedores_productos where precio > 800;

select * from vista_proveedores_productos where precio >= 1000 and precio <= 1500;

-- Es equivalente a:
select * from vista_proveedores_productos where precio between 1000 and 1500;

--Busqueda aproximada del valor
select * from vista_proveedores_productos where producto like '%Refrigerador%';

-- Busqueda basada en una lista de valores
-- Condicion or
select * from vista_proveedores_productos where nombre = 'Admiral' or nombre = 'Samsung';

-- Lista
select * from vista_proveedores_productos where nombre in ('Admiral', 'Samsung');

-- Negacion
select * from vista_proveedores_productos where not (precio > 800);

select * from vista_proveedores_productos where not (precio >= 1000 and precio <= 1500);

-- Es equivalente a:
select * from vista_proveedores_productos where not (precio between 1000 and 1500);

--Busqueda aproximada del valor
select * from vista_proveedores_productos where not (producto like '%Refrigerador%');

-- Busqueda basada en una lista de valores
-- Condicion or
select * from vista_proveedores_productos where not (nombre = 'Admiral' or nombre = 'Samsung');

-- Lista
select * from vista_proveedores_productos where not (nombre in ('Admiral', 'Samsung'));
