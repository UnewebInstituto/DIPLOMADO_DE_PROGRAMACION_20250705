--Conexión a la base de datos
mysql -u root -p

-- Creación de base de datos
create database bd_movi_30482481;

--Visualizar las bases de datos contenidas en el servidor
show databases;

--Monstrar las bases de datps, que en el contenido del nombre se encuentre el texto %_%
show database like '%_30482481%'

--Creacion de la tabla de contactos
create table contactos(
    nombre varchar(80),
    apellido varchar(80),
    telefono varchar(11),
    direccion text,
    correo_electronico text
);

--Consultar estructura
--1ra. Forma:
describe contactos;
--2da. Forma:
show create table contactos;

--Guardar datos en una tabla
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
value
('Movi', 'Games', '+58 0424-1538457', 'Antimano', 'moviby2004gmail.com');

--Consultar datos de una tabla, ver todas las columnas
select * from contactos;

--Ver algunas columnas de la tabla (se indica la lista de campos)
select nombre, apellido, telefono from contactos;

--Guardar varios registros en la tabla
insert into contactos(nombre, apellido, telf_hab, direccion, correo_electronico)
value
('YOLANDA','TORTOZA','02123741234','CATIA LA MAR','yt@hotmail.com'),
('LIBIA','COLS','02123534100','GUARENAS','lc@gmail.com'),
('Movi', 'Games', '+58 0424-1538457', 'Antimano', 'moviby2004gmail.com');

--Borrar registro de la tabla, Borrado Total
Delete from contactos;
--Otra forma
Truncate contactos;
--Borrado condicionado
Delete from contactos where nombre = 'Ana';

-- Modificacion de una estructura de tablas, (Borrar campo de la tabla)
Alter table contactos drop column telefono;

--Añadir un campo en la tabla, se añadira el campo id (Identificador) de tipo entero y auto incremental, al princioo.

-- Este campo debe ser clave primaria.

Alter table contactos add column id integer auto_increment primary key first;

--Añadir campos a una  tabla, por omision los campos se añaden al final
alter table contactos add column telefono_ofi varchar(11);

--Añadir campo despues de campo pre existente 
alter table contactos add column telefono_hab after correo_electronico varchar(11);

alter table contactos add column telefono_cel after telefono_hab varchar(11);

--Cambiar nombre de campos o tipos de datos
Alter table contactos change column telefono_ofi telf_ofi varchar(11);
Alter table contactos change column telefono_cel telf_cel varchar(11);
Alter table contactos change column telefono_hab telf_hab varchar(11);

--Actualizacion del contenido de un campo en la tabla
update contactos set telf_hab = '02125554433';
