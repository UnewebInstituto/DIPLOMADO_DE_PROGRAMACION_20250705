--CREACION DE BASE DE DATOS
create database bd_nelly_20250830;
--VISUALIZAR LAS BASES DE DATOS CONTENIDAS
--EN EL SERVIDOR
show databases;

--MOSTRA LAS BASES DE DATOS , QUE EN EL CONTENIDO
-- DEL NOMBRE SE ENCUENTRA  EN EL TEXTO_20250803
show database like '%_20250830%';
--CREACION DE LA TABLA CONCTACTO
create table contactos(
          nombre varchar(80),
          apellido varchar(80),
          telefono varchar(11),
          direccion text,
          correo_electronico text
);  

--CONSULTAR ESTRUCTURA DE UNA TABLA
--1ra forma:
describe contactos;
show create table contactos;

--GUARDAR DATOS EN UNA TABLA
insert into contactos(nombre, apellido,telefono,direccion,correo_electronico)
value
('ANA','VASQUEZ','02123547896','SANTA FE','av@gmail.com');
--consultar datos de una tabla
--VER TODAS LAS COLUMNAS*
select * FROM contactos;

--VER ALGUNAS COLUMNAS DE LA TABLA (SE INDICA LA LISTA DE CAMPO)
select  nombre,apellido,telefono from contactos;
insert into contactos(nombre, apellido,telefono,direccion,correo_electronico)
value
('YOLANDA','TORTOZA','02123741234','CATIA LA MAR','yt@hotmail.com'),
('LIBIA','COLS','02123534100','GUARENAS','lc@gmail.com'),
('HERDRINA','MONASTERIOS','02126741234','LOS VALLES DEL TUY','hm@hotmail.com');

--BORRAR REGISTRO DE LA TABLA
--BORRADO TOTAL
DELETE FROM contactos;
TRUNCATE contactos;
--BORRADO CONDICIONADO
DELETE FROM contactos WHERE nombre = 'ANA';
DELETE FROM contactos WHERE nombre ='YOLANDA';

--añadir  un campo en la tabla
--se añadira el campo id de tipo 
--entero y auto incremental, al principio.
--este campo debe clave primaria
ALTER TABLE contactos add column id integer auto_increment  primary key first;

--AÑADIR CAMPOS EN UNA TABLA
-- POR OMISION LOS CAMPOS SE AÑADE AL FINAL
alter table contactos add column telefono_ofi varchar(11);

-- AÑADIR CAMPO DESPUÉS DE CAMPO PRE EXISTENTE
alter table contactos add column telefono_hab  varchar(11) after correo_electronico;

alter table contactos add column telefono_cel  varchar(11) after telefono_hab;

-- CAMBIAR NOMBRE DE CAMPOS O TIPOS DE DATOS
alter table contactos change column telefono_cel telf_cel varchar(11);
alter table contactos change column telefono_hab telf_hab varchar(11);
alter table contactos change column telefono_ofi telf_ofi varchar(11);

-- ACTUALIZACIÓN DEL CONTENIDO DE UN CAMPO EN LA TABLA

UPDATE CONTACTOS SET telf_hab ='02125554433';

select proveedores.nombre,
       productos.nombre,
       productos.precio,
       productos.cantidad,
       from proveedores, productos
       where proveedor_id = productos.proveedor_id;
---definicion  de alias para tablas y campos 

-- DEFINICIÓN DE ALIAS PARA TABLAS Y CAMPOS
SELECT A.nombre as proveedor,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;

