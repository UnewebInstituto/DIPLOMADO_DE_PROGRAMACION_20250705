-U USUARIO DE LA BASE DE DATOS:postgres
-h NOMBRE DEL SERVIDOR: localhost
-W nombre de la base de datos a respaldar: bd20251025_barbara

-- lo que se indica desssppués del ">", corresponde al archivo donde se deja la copia de respaldo, puede contener o no la ruta

"C:\Program Files\PostgreSQL\15\bin\pg_dump.exe" -U postgres -h localhost -W bd20251025_barbara > "./backups/bd20251025_barbara_20251108.sql"


--se crea bse de datos para efectuar la recuperación
create database bd20251025_barbara1;

--operción de restore
"C:\Program Files\PostgreSQL\15\bin\psql.exe" -U postgres -h localhost -W -d bd20251025_barbara1 < "./backups/bd20251025_barbara_20251108.sql"

------------------------------------

--COLUMNAS CALCULADAS
--se refieren a operaciones especiales "cálculos", que se efectúan sobre columnas de las tablas
--SUMATORIA
select SUM(nombre_columna) from tabla;
--VALOR MINIMO
select MIN(nombre_columna) from tabla;
--VALOR MAXIMO
select MAX(nombre_columna) from tabla;
--VALOR PROMEDIO
select AVG(nombre_columna) from tabla;
--CONTEO: Solo se efectuará sobre los valores diferentes de NULL
--contenidos del campo
select COUNT(nombre_columna) from tabla;



--NOMBRE DE LA VISTA: vista_proveedores_productos
--APLICA SOBRE CUALQUIER ENTIDAD DE DATOSS DE DONDE SE VAYA A EXTRAER EL CÁLCULO

SELECT SUM(existencia) from vista_proveedores_productos;
SELECT MIN(precio) from vista_proveedores_productos;
SELECT MAX(precio) from vista_proveedores_productos;
SELECT AVG(precio) from vista_proveedores_productos;
SELECT COUNT(producto) from vista_proveedores_productos;

--DISTINCT (ELIMINAR FILAS DUPLICADAS)
SELECT DISTINCT(nombre) from vista_proveedores_productos;

SELECT DISTINCT(producto) from vista_proveedores_productos;


--GROUP BY (AGRUPAMIENTO)
SELECT nombre from vista_proveedores_productos GROUP BY nombre;

--ORDENAMIENTO ASCENDENTE/ASC (FORMA POR OMISIÓN) O DESCENDENTE/DESC
SELECT * FROM vista_proveedores_productos ORDER BY existencia;

SELECT * FROM vista_proveedores_productos ORDER BY precio DESC;

SELECT nombre as "Marca",
sum(existencia) as "Existencia",
min(precio) as "Precio minimo",
max(precio) as "Precio maximo",
round(avg(precio),2) as "Precio promedio" from
vista_proveedores_productos group by nombre;

--OPERADORES RELACIONALES
select * from vista_proveedores_productos where precio > 800;

select * from vista_proveedores_productos where precio >= 800 and precio <= 1500;

--es equivalente a:
select * from vista_proveedores_productos where precio between 1000 and 1500;

--búsqueda aproximada del valor
select * from vista_proveedores_productos where producto like '%Refrigerador%';

--búsqueda basada en una lista de valores
--CONDICIÓN OR
select * from vista_proveedores_productos where nombre = 'ADMIRAL' or nombre = 'SAMSUNG';

--lista
select * from vista_proveedores_productos where nombre in ('ADMIRAL', 'SAMSUNG');

--negación

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
