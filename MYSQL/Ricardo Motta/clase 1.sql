-- Conexion a la base de datos--
mysq -u root -p

-- CREACION DE BASE DATOS --
create database bd_ricardo_20253008;

-- Visualizar las bases datps contenidas en el servidor

show databases;

--Mostrar las bases de datos, que en el contenido del nombre 
-- se encuentre el texto _20250830
show database like '%_20250830%'


--Creacion de la tabla contactos
create table contactos(
    nombre varchar(80),
    apellido varchar(80),
    telefono varchar(11),
    direccion text,
    correo_electronico text
);

-- Consultar estructura de una tabla
--1ra. forma:
describe contactos;
--2da.forma
show create table contactos

--Como guardar datos en una tabla
insert into contactos(nombre,apellido,telefono,direccion,
correo_electronico)
value
('Ana','Vasquez','02121234567','SANTA FE','av@gmail.com');

--Consultar datos de una tabla
--Ver todas las columnas *
select*from contactos;

--Ver algunas columnas de la tabla(se indica la lista de campos)
select nombre, apellido,telefono from contactos;

--Guardar varios registros en la tabla
insert into contactos(nombre,apellido,telefono,direccion,
correo_electronico)
values
('Yolanda','Tortoza','02123741234','Catia La Mar','yt@hotmail.com'),
('LIBIA','COLS','02123534100','GUARENAS','lc@gmail.com'),
('HERDRINA','MONASTERIOS','02126741234','LOS VALLES DEL TUY','hm@hotmail.com');

-- Borrar registros de la tabla

--Borrado Total

delete from contactos;-- Mantiene el contador de registros

--Otra forma

Truncate contactos;--Reinicia el contador de registros (auto incrementos)

--Borrado condicionado
delete from contactos where nombre = 'Ana';

--Modificacion de la estructura de tablas
--Borrar un campo de la tabla
alter table contactos drop column telefono;

--Añadir un campo en la tabla
--Se añadira el campo de id (identificador) de tipo
--entero y auto incremental, al principio
--Este campo debe clave primaria
alter table contactos add column id integer auto_increment primary key first;

--Agregar campos en una tabla
--Por omision los campos se agregan al final
alter table contactos add column telefono_ofi varchar(11);

--Agregar campo despues de campo pre existente
alter table contactos add column telefono_hab varchar(11) after correo_electronico;

alter table contactos add column telefono_cel varchar(11) after telefono_hab;

--Cambiar nombre de campos
alter table contactos change column telefono_cel telf_cel varchar(11);
alter table contactos change column telefono_ofi telf_ofi varchar(11);
alter table contactos change column telefono_hab telf_hab varchar(11);

--Actualizacion del contenido de un campo en la tabla

