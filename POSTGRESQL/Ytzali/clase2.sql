











Se crea una base de datos para efectuar la recuperación 
create database bd20251025_ytzali1; 

Operación de restore 
"C:\Program Files\PostgreSQL\15\bin\psql.exe" -U postgres -h localhost -W -d bd20251025_ytzali1 < "./backups/bd20251025_ytzali_20251108.sql"



--Columnas calculadas 
--Se refieren a operaciones espefciales "calculos" que se efectuan sobre columnas de las tablas

--Sumatoria
select SUM(nombre_columna) from tabla;

--Valor Mínimo
select MIN(nombre_columna) from tabla;

--Valor Máximo
select MAX(nombre_columna) from tabla;

--Valor Promedio
select AVG(nombre_columna) from tabla;

--Conteo: Solo se efectuará sobre los valores diferentes de NULL contenidos en el campo
select count(nombre_columna) from tabla;

--Nombre de la vista: vista_proveedores_productos
--Aplica sobre cualquier entidad de datos de donde se vaya a extraer el calculo.

select sum(existencia) from vista_proveedores_productos;
select min(precio) from vista_proveedores_productos;
select max(precio) from vista_proveedores_productos;
select avg(precio) from vista_proveedores_productos;
select count(producto) from vista_proveedores_productos;


--Distinct 
select Distinct(nombres) from vista_proveedores_productos;

select Distinct(producto) from vista_proveedores_productos;


-- GROUP BY (Agrupamiento)

select nombres from vista_proveedores_productos group by nombres; 

--Order by nombre_del_campo
--Ordenamientoascendente/asc (froma por omisión) o desdendente/desc
select * from vista_proveedores_productos order by existencia;

select * from vista_proveedores_productos order by existencia desc; 

--Resumen por marca
select nombres, min(precio), max(precio), avg(precio) from vista_proveedores_productos group by nombres; 

--Otro comando
select nombres, sum(existencia), min(precio), max(precio), avg(precio) from vista_proveedores_productos group by nombres; 

--Otro comando
select nombres as "Marca",
sum(existencia) as "Existencia", 
min(precio) as "Precio Mínimo", 
max(precio) as "Precio Máximo", 
avg(precio) as "Precio promedio" from vista_proveedores_productos group by nombres; 

--Otro comando
select nombres as "Marca",
sum(existencia) as "Existencia", 
min(precio) as "Precio Mínimo", 
max(precio) as "Precio Máximo", 
round(avg(precio),2) as "Precio promedio" from vista_proveedores_productos group by nombres; 

--Operadores relacionales 
select * from vista_proveedores_productos where precio > 800; 

select * from vista_proveedores_productos where precio >= 1000 and precio <= 1500; 

--Es equivalente a: 
select * from vista_proveedores_productos where precio between 1000 and 1500;


--Busqueda proximada del valor
select * from vista_proveedores_productos where producto like '%Refrigerador%';

--Busqueda basada en una lista de valores
--Condicion or
select * from vista_proveedores_productos where nombres = 'ADMIRAL' or nombres = 'SAMSUNG';

--Lista 
select * from vista_proveedores_productos where nombres in('ADMIRAL', 'SAMSUNG');

--Negación

select * from vista_proveedores_productos where not (precio > 800); 

select * from vista_proveedores_productos where not (precio >= 1000 and precio <= 1500); 

--Es equivalente a: 
select * from vista_proveedores_productos where not (precio between 1000 and 1500);

--Busqueda proximada del valor
select * from vista_proveedores_productos where not (producto like '%Refrigerador%');

--Busqueda basada en una lista de valores
--Condicion or
select * from vista_proveedores_productos where not (nombres = 'ADMIRAL' or nombres = 'SAMSUNG');

--Lista 
select * from vista_proveedores_productos where not (nombres in('ADMIRAL', 'SAMSUNG'));


--
