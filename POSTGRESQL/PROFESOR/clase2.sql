-- COLUMNAS CALCULADAS
-- Se refieren a operaciones especiales "cálculos", que se efectúan
-- sobre columnas de las tablas
-- SUMATORIA
select SUM(nombre_columna) from tabla;
-- VALOR MÍNIMO 
select MIN(nombre_columna) from tabla;
-- VALOR MÁXIMO
select MAX(nombre_columna) from tabla;
-- VALOR PROMEDIO
select AVG(nombre_columna) from tabla;
-- CONTEO: Sólo se efectuará sobre los valores diferentes de NULL
-- contenidos en el campo
select COUNT(nombre_columna) from tabla;


-- NOMBRE DE LA VISTA: vista_proveedores_productos
-- APLICA SOBRE CUALQUIER ENTIDAD DE DATOS DE DONDE
-- SE VAYA A EXTRAER EL CÁLCULO.

SELECT SUM(existencia) FROM vista_proveedores_productos;
SELECT MIN(precio) FROM vista_proveedores_productos;
SELECT MAX(precio) FROM vista_proveedores_productos;
SELECT AVG(precio) FROM vista_proveedores_productos;
SELECT COUNT(producto) FROM vista_proveedores_productos;

-- DISTINCT
SELECT DISTINCT(nombre) from vista_proveedores_productos;

SELECT DISTINCT(producto) from vista_proveedores_productos;

-- GROUP BY
SELECT nombre from vista_proveedores_productos GROUP BY nombre;

-- ORDER BY nombre_del_campo
-- ORDENAMIENTO ASCENDENTE/ASC (FORMA POR OMISIÓN) O DESCENDENTE/DESC
SELECT * FROM vista_proveedores_productos ORDER BY existencia;

SELECT * FROM vista_proveedores_productos ORDER BY precio DESC;

SELECT nombre as "Marca", 
sum(existencia) as "Existencia",
min(precio) as "Precio mínimo",
max(precio) as "Precio máximo",
round(avg(precio),2) as "Precio promedio" from vista_proveedores_productos group by nombre;

-- OPERADORES RELACIONALES
select * from vista_proveedores_productos where precio > 800;

select * from vista_proveedores_productos where precio >= 1000 and  precio <= 1500;

-- Es equivalente a:
select * from vista_proveedores_productos where precio between 1000 and 1500;

-- Búsqueda aproximada del valor
select * from vista_proveedores_productos where producto like '%Refrigerador%';

-- Búsqueda basada en una lista de valores
-- Condición OR
select * from vista_proveedores_productos where nombre = 'ADMIRAL' or nombre = 'SAMSUNG';

-- Lista
select * from vista_proveedores_productos where nombre in ('ADMIRAL', 'SAMSUNG');

-- Negación

-- OPERADORES RELACIONALES
select * from vista_proveedores_productos where not (precio > 800);

select * from vista_proveedores_productos where not (precio >= 1000 and  precio <= 1500);

-- Es equivalente a:
select * from vista_proveedores_productos where not (precio between 1000 and 1500);

-- Búsqueda aproximada del valor
select * from vista_proveedores_productos where not (producto like '%Refrigerador%');

-- Búsqueda basada en una lista de valores
-- Condición OR
select * from vista_proveedores_productos where not (nombre = 'ADMIRAL' or nombre = 'SAMSUNG');

-- Lista
select * from vista_proveedores_productos where nombre not in ('ADMIRAL', 'SAMSUNG');




