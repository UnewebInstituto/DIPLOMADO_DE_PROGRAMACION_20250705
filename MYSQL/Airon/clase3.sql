-- Columnas calculadas

select sum(cantidad) from vista_proveedores_productos;
select min(precio) from vista_proveedores_productos;
select max(precio) from vista_proveedores_productos;
select avg(precio) from vista_proveedores_productos;
select count(*) from vista_proveedores_productos;

-- Agrupamiento de Datos
-- Distinc 

select distinct producto from vista_proveedores_productos;

-- Group By

select producto from vista_proveedores_productos Group by producto;

-- Agrupamiento del resultado de los calculos

select producto, min(precio), max(precio), avg(precio) from vista_proveedores_productos Group by producto;

-- Agrupamiento del resultado de los calculos con Alias

select producto as Articulo, min(precio) as Precio_Minimo, max(precio) as Precio_Maximo, avg(precio) as Precio_Promedio from vista_proveedores_productos Group by producto;

-- Creción de Vista a Partir de la Consulta Anterior

create view vista_resumen_productos as select producto as Articulo, min(precio) as Precio_Minimo, max(precio) as Precio_Maximo, round(avg(precio),2) as Precio_Promedio from vista_proveedores_productos Group by producto;

-- Eliminacion de Entidades
--Borrar tabla
drop table nombre_tabla;

-- Borrar vista
drop view nombre_vista;

-- Borrar base de datos
drop view nombre_base_de_datos;

-- Otro Ejemplo:
create view vista_resumen_marcas as select proveedor as Marca, min(precio) as Precio_Minimo, max(precio) as Precio_Maximo, round(avg(precio),2) as Precio_Promedio from vista_proveedores_productos Group by proveedor;

--Ordenamiento del Contenido
-- Order by asc/desc
select * from vista_proveedores_productos order by precio asc;

select * from vista_proveedores_productos order by precio desc;

-- Combinando Campos
select * from vista_proveedores_productos order by producto asc, precio desc;

-- Consultas Condicionadas
-- Where campo <operador relacional> valor
-- where campo <operacional  relacional> valor <operador logico> campo <operador relacional>

-- Operadores Relacionales 
-- >, =>, <, <=, <>, =

-- Operadores Logicos
-- and, or, not

-- Ejemplo de Consulta Basada en Operador Relacional
select proveedor, producto, precio from vista_proveedores_productos where precio > 350;

select proveedor, producto, precio from vista_proveedores_productos where precio > 350 and precio < 600;

select proveedor, producto, precio from vista_proveedores_productos where precio > 350 and precio < 600 and producto = "lavadora";

--Lista de Productos
select proveedor, producto, precio from vista_proveedores_productos where producto = "nevera" or producto = "secadora";

-- Equivalente al anterior
select proveedor, producto, precio from vista_proveedores_productos where producto in("nevera", "lavadora", "secadora");

-- Negacion de las 2 expresiones previas
select proveedor, producto, precio from vista_proveedores_productos where not (producto = "nevera" or producto = "secadora");

-- Equivalente al anterior
select proveedor, producto, precio from vista_proveedores_productos where not(producto in("nevera", "lavadora", "secadora"));

--Condicional Basado en un Rango:
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE precio >= 350 and precio <= 600;

-- Equivalente al condicional basado en un rango
select proveedor, producto, precio from vista_proveedores_productos where precio between 350 and 600;

-- Negacion del rango en las dos expresiones anteriores
SELECT proveedor, producto, precio FROM vista_proveedores_productos
WHERE not(precio >= 350 and precio <= 600);

select proveedor, producto, precio from vista_proveedores_productos where not(precio between 350 and 600);

-- Null es diferente a espacio en Blanco
-- Campo con valor en blanco
insert into proveedores(nombre, direccion, telefono, correo_electronico) values
("", "Av. Victoria", "021254687415", "info@blanco.com");

-- Campo con valor Null
insert into proveedores(direccion, telefono, correo_electronico) values
("Av. Roosevelt", "021254685815", "info@null.com");

-- Planteamiento de la Consulta
select * from proveedores where nombre = "";

select * from proveedores where nombre is null;

--Asociacion de Muchos a muchos
--Creacion de Tablas
--Tabla de Alumnos
create table alumnos(
    id integer auto_increment,
    nombre varchar(50),
    apellido varchar(50),
    primary key(id)
);

--Tabla de Asignaturas
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
insert into alumnos(nombre, apellido)
values 
("Barbara", "Villasmil"),
("Ytzali", "Rodriguez"),
("Airon", "Ortega");

insert into asignaturas(nombre)
values 
("matematica"),
("Fisica"),
("Quimica"),
("Castellano");

insert into alumnos_asignaturas(alumno_id,asignatura_id)
values
(1,3),
(1,4),
(2,1),
(2,3),
(3,2),
(3,3);  

--Consulta Combinada de las 3 tablas
select alumnos.nombre, alumnos.apellido, asignaturas.nombre from alumnos, asignaturas, alumnos asignaturas where alumnos.id = alumnos_asignaturas.alumnos_id and asignaturas.id = alumnos_asignaturas.asignatura_id;

SELECT alumnos.nombre,
       alumnos.apellido,
       asignaturas.nombre
       from alumnos, asignaturas, alumnos_asignaturas
       where alumnos.id = alumnos_asignaturas.alumno_id AND
             asignaturas.id = alumnos_asignaturas.asignatura_id;

SELECT alumnos.nombre,
       alumnos.apellido,
       asignaturas.nombre
       from alumnos, asignaturas, alumnos_asignaturas
       where alumnos.id = alumnos_asignaturas.alumno_id AND
             asignaturas.id = alumnos_asignaturas.asignatura_id order by alumnos.nombre, alumnos.apellido;
