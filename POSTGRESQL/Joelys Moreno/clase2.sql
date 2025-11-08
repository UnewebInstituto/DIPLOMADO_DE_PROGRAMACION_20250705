--SUMATORIA
select SUM(nombre_columna) from tabla;
--Valor Minimo
select MIN(nombre_columna) from tabla;
--Valor Maximo
select MAX(nombre_columna) from tabla;
--Valor Promedio 
select AVG(nombre_columna) from tabla;
--Conteo: solo se efectuara sobre los valores diferentes de NULL contenidosen el campo
select COUNT(nombre_columna) from tabla;

--nombre de la vista: vista_proveedores_productos
--Aplica sobre cualquier entidad de datos de donde se vaya a extraer el calculo

SELECT SUM(existencia) from vista_proveedores_productos;
SELECT MIN(precio) from vista_proveedores_productos;
SELECT MAX(precio) from vista_proveedores_productos;
SELECT AVG(precio) from vista_proveedores_productos; 
SELECT COUNT(producto) from vista_proveedores_productos;

--Distinct 
SELECT DISTINCT(nombre) from vista_proveedores_productos;
SELECT DISTINCT(producto) from vista_proveedores_productos;

--Group by

SELECT nombre from vista_proveedores_productos GROUP BY nombre;

-- Ordenamiento ASC OR DESC 
SELECT * FROM vista_proveedores_productos ORDER BY existencia;
SELECT * FROM vista_proveedores_productos ORDER BY precio DESC;

SELECT nombre as "Marca", 
SUM(existencia) as "Precio Minimo", 
min(precio) as "Precio Promedio", 
max(precio) as "Precio Maximo", 
round(avg(precio),2) as "Precio Promedio" FROM vista_proveedores_productos GROUP BY nombre;

--Operadores relacionales:
SELECT * FROM vista_proveedores_productos WHERE precio > 800;
SELECT * FROM vista_proveedores_productos WHERE precio >= 1000 AND precio <= 1500;

--Es equivalente a: 
SELECT * FROM vista_proveedores_productos WHERE precio between 1000 and 1500;

--Busqueda aproximada del valor:

SELECT * FROM vista_proveedores_productos WHERE producto like '%Refrigerador%';

--Busqueda basada en una lista de valores:
--Condicion OR
SELECT * FROM vista_proveedores_productos WHERE nombre = 'Admiral' OR nombre = 'Samsung';

-- Lista
SELECT * FROM vista_proveedores_productos WHERE nombre in ('Admiral', 'Samsung');

--Negacion
SELECT * FROM vista_proveedores_productos WHERE not (precio > 800);
SELECT * FROM vista_proveedores_productos WHERE not (precio >= 1000 AND precio <= 1500);

--Es equivalente a: 
SELECT * FROM vista_proveedores_productos WHERE not (precio between 1000 and 1500);

--Busqueda aproximada del valor:

SELECT * FROM vista_proveedores_productos WHERE not (producto like '%Refrigerador%');

--Busqueda basada en una lista de valores:
--Condicion OR
SELECT * FROM vista_proveedores_productos WHERE not (nombre = 'Admiral' OR nombre = 'Samsung');

-- Lista
SELECT * FROM vista_proveedores_productos WHERE nombre not in ('Admiral', 'Samsung');
