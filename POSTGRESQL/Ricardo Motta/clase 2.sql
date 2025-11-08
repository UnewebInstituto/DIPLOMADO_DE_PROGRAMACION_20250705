--COLUMNAS CALCULADAS
-- Se refieren a operaciones especiales "calculos", que se efectuan sobre 
-- columnas de las tablas 
--SUMATORIA
select sum(nombre_columna) from tabla;
--VALOR MINIMO
select min(nombre_columna) from tabla;
--VALOR MAXIMO
select max(nombre_columna) from tabla;
--VALOR PROMEDIO
select avg(nombre_columna) from tabla;
--CONTEO: solo se efectuara sobre los valores diferentes de NULL contenidos en el campo
select count(nombre_columna) from tabla;

--Nombre de la vista: vista_proveedores_productos
--APLICA SOBRE CUALQUIER ENTIDAD DE DATOS DE DONDE SE VAYA A EXTRAER EL CALCULO.

SELECT SUM(existencia) FROM vista_proveedores_productos;
SELECT MIN(precio) FROM vista_proveedores_productos;
SELECT MAX(precio) FROM vista_proveedores_productos;
SELECT AVG(precio) FROM vista_proveedores_productos;
SELECT COUNT(producto) FROM vista_proveedores_productos;

--DISTINCT
select distinct(nombre) from vista_proveedores_productos;

select distinct(producto) from vista_proveedores_productos;

--Group by

select nombre from vista_proveedores_productos group by nombre;

-- Order by:  Ordenamiento ascendente /ASC(forma por omision) o Descente/DESC
select * from vista_proveedores_productos order by existencia;

select * from vista_proveedores_productos order by precio DESC;

--Resumen por marca

select nombre, min(precio), max(precio), avg(precio) from vista_proveedores_productos group by nombre;


select nombre, sum(existencia), max(precio), avg(precio) from vista_proveedores_productos group by nombre;


select nombre as "Marca",
sum(existencia) as "existencia",
min(precio) as "precio minimo",
max(precio) as "precio maximo",
round(avg(precio),2) as "precio promedio" from vista_proveedores_productos group by nombre;

--Operadores relacionales 
select * from vista_proveedores_productos where precio > 800;


select * from vista_proveedores_productos where precio >= 1000 and precio <= 1500;

-- Es equivalente a: 
select * from vista_proveedores_productos where precio between 1000 and 1500;

--Busqueda aproximada del valor 
select * from vista_proveedores_productos where producto like '%Refrigerador%';

--Busqueda basada en una lista de valores
select * from vista_proveedores_productos where nombre = 'ADMIRAL' or nombre ='SAMSUNG';

--Lista
select * from vista_proveedores_productos where nombre in ('ADMIRAL', 'SAMSUNG');

--Negacion


select * from vista_proveedores_productos where not (precio > 800);


select * from vista_proveedores_productos where not (precio >= 1000 and precio <= 1500);

-- Es equivalente a: 
select * from vista_proveedores_productos where not (precio between 1000 and 1500);

--Busqueda aproximada del valor 
select * from vista_proveedores_productos where not (producto like '%Refrigerador%');

--Busqueda basada en una lista de valores
select * from vista_proveedores_productos where not (nombre = 'ADMIRAL' or nombre ='SAMSUNG');

--Lista
select * from vista_proveedores_productos where not (nombre in ('ADMIRAL', 'SAMSUNG'));
