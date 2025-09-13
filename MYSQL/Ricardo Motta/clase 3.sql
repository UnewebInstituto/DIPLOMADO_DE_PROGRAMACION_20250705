-- Columnas calculadas
--Sumatoria
select sum(cantidad) from vista_proveedores_productos;
--Valor minimo para el precio
select min(precio) from vista_proveedores_productos;
--Valor maximo para el precio
select max(precio) from vista_proveedores_productos;
--Valor promedio
select avg(precio) from vista_proveedores_productos;
--Cantidad de registros en la tabla
select count(*) from vista_proveedores_productos;

--Agrupamientos de datos
--Distinct
select distinct producto from vista_proveedores_productos

--Group by

SELECT producto from vista_proveedores_productos Group by producto;

--Agrupamiento del resultado de los calculos

SELECT producto, min(precio), max(precio), avg(precio) from vista_proveedores_productos Group by producto;

--Alias para el nombre de los campos

SELECT producto as ARTICULO, min(precio) as PRECIO_MINIMO, 
max(precio) as PRECIO_MAXIMO, avg(precio) as PRECIO_PROMEDIO from 
vista_proveedores_productos Group by producto;

--Creacion de vista  a partir de la consulta anterior:
create view vista_resumen_productos as 
SELECT producto as ARTICULO, min(precio) as PRECIO_MINIMO, 
max(precio) as PRECIO_MAXIMO, round(avg(precio),2) as PRECIO_PROMEDIO from 
vista_proveedores_productos Group by producto;

select * from vista_resumen_productos;

--Eliminacion de entidades
--Borrar tabla
drop table nombre_tabla;

--Borrar vista
drop view nombre_vista;

--Borrar una base de datos
drop database nombre_base_de_datos

--Otro ejemplo:
create view vista_resumen_marcas as 
SELECT proveedor as MARCA, min(precio) as PRECIO_MINIMO, 
max(precio) as PRECIO_MAXIMO, round(avg(precio),2) as PRECIO_PROMEDIO from 
vista_proveedores_productos Group by proveedor;

-- Ordenamiento del contenido
select * from vista_proveedores_productos order by precio asc;
select * from vista_proveedores_productos order by precio desc;

--Combinando campos
select * from vista_proveedores_productos order by producto asc, precio desc;

--Consultas condicionadas
-- Where campo <operador relacional> VALOR
-- Where campo <operador relacional> VALOR 
--<operador logico> Campo <operador relacional
-- Operadores relacionales
-- >, >=, <, <=, <>, =

--Operadores logicos
--AND , OR, NOT

-- Ejemplo de consulta basada en operador relacional
select proveedor, producto, precio from vista_proveedores_productos 
where precio > 350;

SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE precio > 350 and precio < 600;

SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE (precio > 350 and precio < 600) and producto = 'LAVADORA';

SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE (precio > 350 and precio < 600) and producto = 'LAVADORA' OR 
producto = 'SECADORA' or producto = 'NEVERA'

-- Equivalente al anterior

select proveedor, producto, precio from vista_proveedores_productos
where producto in ('NEVERA', 'LAVADORA', 'SECADORA');

--Negacion de las 2 expresiones previas
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE NOT (producto = 'NEVERA' OR producto = 'LAVADORA' OR producto = 'SECADORA');

select proveedor, producto, precio from vista_proveedores_productos
where producto not in ('NEVERA', 'LAVADORA', 'SECADORA');

--Condicional basado en un rango:
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE precio >= 350 and precio <= 600;

--Equivalente condicional basado en un rango:
select proveedor, producto, precio from vista_proveedores_productos
where precio BETWEEN 350 and 600;

--Negacion del rango en las dos expresiones anteriores

SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE not (precio >= 350 and precio <= 600);


select proveedor, producto, precio from vista_proveedores_productos
where not (precio BETWEEN 350 and 600);

--Null es diferente de espacio en blanco 
--Campo con valor en blanco
insert into proveedores(nombre, direccion, telefono, correo_electronico)values
('','AV.VICTORIA','02129998877','info@blanco.com');

--Campo con valor en null
insert into proveedores(direccion, telefono, correo_electronico) values
('AV. ROOSVELT','02128887766','info@nulo.com');

--Planteamiento de la consulta
select * from proveedores where nombre = '';

select * from proveedores where nombre is null;


--Asociacion de muchos a muchos 
--Creacion de las tablas
--Tabla alumnos

create table alumnos(
    id integer auto_increment
    nombre varchar(50),
    apellido varchar(50),
    primary key(id)
    );

create table asignaturas(
    id integer auto_increment,
    nombre varchar(50),
    primary key(id)
);

create table alumnos_asignaturas(
    alumno_id integer,
    asignatura_id integer,
    primary key(alumno_id, asignatura_id),
    foreign key(alumno_id) references alumnos(id) on delete cascade on update cascade,
    foreign key(asignatura_id) references asignaturas(id) on delete cascade on update cascade
);


-- Carga de datos
insert into alumnos (nombre,apellido)
values
('BARBARA','VILLASMIL'),
('YTZALI','RODRIGUEZ'),
('AIRON','ORTEGA'),
('MOISES','VILLEGAS'),
('RICARDO','MOTTA'),
('ISMAEL','HERNADEZ'),
('DANIEL','ROJAS');

insert into asignaturas(nombre)
values
('MATEMATICA'),
('FISICA'),
('QUIMICA'),
('CASTELLANO');

insert into alumnos_asignaturas(alumno_id, asignatura_id)values
(1,1),
(1,2),
(1,3),
(1,4),
(2,1),
(2,3),
(3,2),
(3,4),
(4,1),
(4,3),
(4,4),
(5,2),
(6,1),
(6,2),
(6,3),
(6,4),
(7,4);

--Consulta combinada de las tres tablas
SELECT alumnos.nombre,
       alumnos.apellido,
       asignaturas.nombre
       from alumnos, asignaturas, alumnos_asignaturas
       where alumnos.id = alumnos_asignaturas.alumno_id AND
             asignaturas.id = alumnos_asignaturas.asignatura_id
             order by alumnos.nombre, apellido; 