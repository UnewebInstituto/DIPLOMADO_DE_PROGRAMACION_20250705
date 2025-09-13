-- COLUMNAS CALCULADAS

--SUMATORIA
select sum(cantidad) from vista_proveedores_productos;
--VALOR MINIMO PARA EL PRECIO
select min(precio) from vista_proveedores_productos;
--VALOR MAXIMO PARA EL PRECIO
select max(precio) from vista_proveedores_productos;
--VALOR PROMEDIO PARA EL PRECIO
select avg(precio) from vista_proveedores_productos;
--CANTIDAD DE REGISTROS EN LA TABLA
select count(*) from vista_proveedores_productos;

--AGRUPAMIENTO DE DATOS
--DISTINCT
select distinct producto from vista_proveedores_productos;

--GROUP BY
select producto from vista_proveedores_productos group by producto;

--AGRUPAMIENTO DEL RESULTADO DE LOS CÁLCULOS
select producto, min(precio), max(precio), avg(precio) from vista_proveedores_productos group by producto;

--ALIAS PARA EL NOMBRE DE LOS CAMPOS
select producto as ARTICULO,
min(precio) as PRECIO_MINIMO,
max(precio) as PRECIO_MAXIMO,
avg(precio) as PRECIO_PROMEDIO
from vista_proveedores_productos
group by producto;

--CREACIÓN DE VISTA A PARTIR DE LA CONSULTA ANTERIOR:
create view vista_resumen_productos as
select producto as ARTICULO,
min(precio) as PRECIO_MINIMO,
max(precio) as PRECIO_MAXIMO,
round(avg(precio),2) as PRECIO_PROMEDIO
from vista_proveedores_productos
group by producto;

--para verla
select * from vista_resumen_productos;

--ELIMINACIÓN DE ENTIDADES
--BORRAR TABLA
drop table nombre_tabla;

--BORRAR UNA VISTA
drop view nombre_vista;

--BORRAR UNA BASE DE DATOS
drop database nombre_base_de_datos;

-- por ejemplo:
drop view vista_resumen_productos;

--otro ejemplo:
create view vista_resumen_marcas as
select producto as MARCA,
min(precio) as PRECIO_MINIMO,
max(precio) as PRECIO_MAXIMO,
round(avg(precio),2) as PRECIO_PROMEDIO
from vista_proveedores_productos
group by proveedor;

--para verla
select * from vista_resumen_marcas;

--ORDENAMIENTO DEL CONTENIDO
--ORDER BY ASCENDENTE/DESCENDENTE
select * from vista_proveedores_productos order by precio asc;

select * from vista_proveedores_productos order by precio desc;

--COMBINANDO CAMPOS
select * from vista_proveedores_productos order by producto ASC, precio DESC;


--CONSULTAS CONDICIONADAS
--WHERE CAMPO <operador relacional> VALOR 

--WHERE CAMPO <operador relacional> VALOR <operador lógico> CAMPO <operador relacional>

--OPERADORES RELACIONALES
-- >, >=, <, <=, <>, =

--OPERADORES LÓGICOS
-- AND, OR, NOT

--EJEMPLO DE CONSULTA BASADA EN OPERADOR RELACIONAL
select proveedor, producto, precio from vista_proveedores_productos where precio > 350;

select proveedor, producto, precio from vista_proveedores_productos where precio > 350 and precio <600;

select proveedor, producto, precio from vista_proveedores_productos where precio > 350 and precio <600 and producto = 'LAVADORA';

--LISTA DE PRODUCTOS
select proveedor, producto, precio from vista_proveedores_productos where producto = 'NEVERA' OR producto = 'LAVADORA' OR producto = 'SECADORA';

--EQUIVALENTE AL ANTERIOR
select proveedor, producto, precio from vista_proveedores_productos where producto IN('NEVERA', 'LAVADORA', 'SECADORA');

--NEGACIÓN DE LAS 2 EXPRESIONES PREVIAS
select proveedor, producto, precio from vista_proveedores_productos where NOT(producto = 'NEVERA' OR producto = 'LAVADORA' OR producto = 'SECADORA');

select proveedor, producto, precio from vista_proveedores_productos where producto NOT IN('NEVERA', 'LAVADORA', 'SECADORA');

--CONDICIONAL BASADO EN UN RANGO:
select proveedor, producto, precio from vista_proveedores_productos where precio >= 350 and precio <= 600;

--EQUIVALENTE CONDICIONAL BASADO EN UN RANGO:
select proveedor, producto, precio from vista_proveedores_productos where precio BETWEEN 350 AND 600;

--NEGACIÓN DEL RANGO EN LS DOS EXPRESIONES ANTERIORES:
select proveedor, producto, precio from vista_proveedores_productos where NOT(precio >= 350 and precio <= 600);


--NULL ES DIFERENTE DE ESPACIO EN BLANCO
--CAMPO CON VALOR EN BLANCO
insert into proveedores(nombre, direccion, telefono, correo_electronico) values ('', 'AV. VICTORIA', '02129998877', 'info@blanco.com');

--CAMPO CON VALOR NULL
insert into proveedores(direccion, telefono, correo_electronico) values ('AV. ROOSVELT', '02128887766', 'info@nulo.com');

--PLANTEAMIENTO DE LA CONSULTA DE MANERA INDIVIDUAL
select * from proveedores where nombre = '';

select * from proveedores where nombre is NULL;

--ASOCIACIÓN DE MUCHOS A MUCHOS
--CREACIÓN DE LAS TABLAS
--TABLA ALUMNOS
create table alumnos(
    id integer auto_increment,
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

--CARGA DE DATOS
insert into alumnos(nombre, apellido)
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

insert into alumnos_asignaturas(
    alumno_id, asignatura_id) values
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

--CONSULTA COMBINADA DE LAS 3 TABLAS
SELECT alumnos.nombre,
       alumnos.apellido,
       asignaturas.nombre
       from alumnos, asignaturas, alumnos_asignaturas
       where alumnos.id = alumnos_asignaturas.alumno_id AND
             asignaturas.id = alumnos_asignaturas.asignatura_id
       order by alumnos.nombre, alumnos.apellido;