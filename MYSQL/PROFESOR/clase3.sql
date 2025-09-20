-- COLUMNAS CALCULADAS
-- SUMATORIA
SELECT sum(cantidad) from vista_proveedores_productos;
-- VALOR MÍNIMO PARA EL PRECIO
SELECT min(precio) from vista_proveedores_productos;
-- VALOR MÁXIMO PARA EL PRECIO
SELECT max(precio) from vista_proveedores_productos;
-- VALOR PROMEDIO PARA EL PRECIO
SELECT avg(precio) from vista_proveedores_productos;
-- CANTIDAD DE REGISTROS EN LA TABLA
SELECT count(*) from vista_proveedores_productos;


-- AGRUPAMIENTO DE DATOS
-- DISTINCT

SELECT DISTINCT producto FROM vista_proveedores_productos;

-- GROUP BY

SELECT producto FROM vista_proveedores_productos GROUP BY producto;

-- AGRUPAMIENTO DEL RESULTADO DE LOS CÁLCULOS 

select producto, min(precio), max(precio), avg(precio) 
from vista_proveedores_productos 
group by producto;

-- ALIAS PARA EL NOMBRE DE LOS CAMPOS

select producto as ARTICULO,
 min(precio) as PRECIO_MINIMO, 
 max(precio) as PRECIO_MAXIMO,
 avg(precio) as PRECIO_PROMEDIO
from vista_proveedores_productos 
group by producto;

-- CREACIÓN DE VISTA A PARTIR DE LA CONSULTA ANTERIOR:

create view vista_resumen_productos as
select producto as ARTICULO,
 min(precio) as PRECIO_MINIMO, 
 max(precio) as PRECIO_MAXIMO,
 round(avg(precio),2) as PRECIO_PROMEDIO
from vista_proveedores_productos 
group by producto;

select * from vista_resumen_productos;

-- ELIMINACIÓN DE ENTIDADES
-- BORRAR TABLA
drop table nombre_tabla;

-- BORRAR VISTA
drop view nombre_vista;

-- BORRAR UNA BASE DE DATOS
drop database nombre_base_de_datos;

-- POR EJEMPLO:
drop view vista_resumen_productos;

-- OTRO EJEMPLO:
create view vista_resumen_marcas as
select proveedor as MARCA,
 min(precio) as PRECIO_MINIMO, 
 max(precio) as PRECIO_MAXIMO,
 round(avg(precio),2) as PRECIO_PROMEDIO
from vista_proveedores_productos 
group by proveedor;

-- ORDENAMIENTO DEL CONTENIDO
-- ORDER BY ASC/DESC
SELECT * FROM vista_proveedores_productos ORDER BY precio ASC;

SELECT * FROM vista_proveedores_productos ORDER BY precio DESC;

-- COMBINANDO CAMPOS
SELECT * FROM vista_proveedores_productos ORDER BY producto ASC, precio DESC;

producto  precio 
aabb      500
aabb      400
aabb      300
bbcc
bbcd 
bbdd

-- CONSULTAS CONDICIONADAS
-- WHERE CAMPO <operador relacional> VALOR
-- WHERE CAMPO <operador relacional> VALOR <operador lógico> CAMPO <operador relacional>

-- OPERADORES RELACIONALES
-- >, >=, <, <=, <>, =

-- OPERADORES LÓGICOS
-- AND , OR , NOT

-- EJEMPLO DE CONSULTA BASADA EN OPERADOR RELACIONAL
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE precio > 350; 

SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE precio > 350 and precio < 600;

SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE (precio > 350 and precio < 600) and producto = 'LAVADORA';

-- LISTA DE PRODUCTOS
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE producto = 'NEVERA' OR producto = 'LAVADORA' OR producto = 'SECADORA';

-- EQUIVALENTE AL ANTERIOR
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE producto IN('NEVERA', 'LAVADORA', 'SECADORA');

-- NEGACIÓN DE LAS 2 EXPRESIONES PREVIAS
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE NOT (producto = 'NEVERA' OR producto = 'LAVADORA' OR producto = 'SECADORA');

SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE producto NOT IN('NEVERA', 'LAVADORA', 'SECADORA');

-- CONDICIONAL BASADO EN UN RANGO:
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE precio >= 350 and precio <= 600;

-- EQUIVALENTE CONDICIONAL BASADO EN UN RANGO:
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE precio BETWEEN 350 AND 600;

-- NEGACIÓN DEL RANGO EN LA DOS EXPRESIONES
-- ANTERIORES
-- NEGADO CONDICIONAL BASADO EN UN RANGO:
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE NOT(precio >= 350 and precio <= 600);

-- NEGADO EQUIVALENTE CONDICIONAL BASADO EN UN RANGO:
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE NOT(precio BETWEEN 350 AND 600);

-- NULL ES DIFERENTE DE ESPACIO EN BLANCO
-- CAMPO CON VALOR EN BLANCO
insert into proveedores(nombre, direccion, telefono, correo_electronico) values
('','AV. VICTORIA','02129998877','info@blanco.com');

-- CAMPO CON VALOR NULL
insert into proveedores(direccion, telefono, correo_electronico) values
('AV. ROOSVELT','02128887766','info@nulo.com');

-- PLANTEAMIENTO DE LA CONSULTA
select * from proveedores where nombre = '';

select * from proveedores where nombre is NULL;

-- ASOCIACIÓN DE MUCHOS A MUCHOS
-- CREACIÓN DE LAS TABLAS
-- TABLA ALUMNOS
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

-- CARGA DE DATOS
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

insert into alumnos_asignaturas
(alumno_id, asignatura_id) values
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

-- CONSULTA COMBINADA DE LAS 3 TABLAS
SELECT alumnos.nombre,
       alumnos.apellido,
       asignaturas.nombre
       from alumnos, asignaturas, alumnos_asignaturas
       where alumnos.id = alumnos_asignaturas.alumno_id AND
             asignaturas.id = alumnos_asignaturas.asignatura_id
       order by alumnos.nombre, alumnos.apellido;