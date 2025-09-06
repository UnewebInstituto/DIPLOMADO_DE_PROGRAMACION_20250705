-- CONEXIÓN A LA BASE DE DATOS
mysql -u root -p 

-- CREACIÓN DE BASE DE DATOS
create database bd_profesor_20250830;

-- VISUALIZAR LAS BASES DE DATOS CONTENIDAS
-- EN EL SERVIDOR
show databases;

-- MOSTRAR LAS BASES DE DATOS, QUE EN EL CONTENIDO
-- DEL NOMBRE SE ENCUENTRE EL TEXTO _20250830
show databases like '%_20250830%';

-- CREACIÓN DE LA TABLA CONTACTOS
create table contactos(
    nombre varchar(80),
    apellido varchar(80),
    telefono varchar(11),
    direccion text,
    correo_electronico text
);

-- CONSULTAR ESTRUCTURA DE UNA TABLA
-- 1ra. Forma:
describe contactos;
-- 2da. Forma:
show create table contactos;

-- GUARDAR DATOS EN UNA TABLA
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
value
('ANA','VASQUEZ','02121234567','SANTA FE','av@gmail.com');

-- CONSULTAR DATOS DE UNA TABLA
-- VER TODAS LAS COLUMNAS *
select * from contactos;

-- VER ALGUNAS COLUMNAS DE LA TABLA (se indica la lista de campos)
select nombre, apellido, telefono from contactos;

-- GUARDAR VARIOS REGISTROS EN LA TABLA
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
values
('YOLANDA','TORTOZA','02123741234','CATIA LA MAR','yt@hotmail.com'),
('LIBIA','COLS','02123534100','GUARENAS','lc@gmail.com'),
('HERDRINA','MONASTERIOS','02126741234','LOS VALLES DEL TUY','hm@hotmail.com');

-- BORRAR REGISTROS DE LA TABLA 
-- BORRARDO TOTAL
DELETE FROM contactos; -- Mantiene el contador de registros
-- OTRA FORMA
TRUNCATE contactos; -- Reinicia el contador de registros (auto increment)
-- BORRADO CONDICIONADO
DELETE FROM contactos WHERE nombre = 'ANA';
DELETE FROM contactos WHERE nombre = 'YOLANDA';

-- MODIFICACIÓN DE LA ESTRUCTURA DE TABLAS
-- BORRAR CAMPO DE LA TABLA
ALTER TABLE contactos DROP COLUMN telefono;

-- AÑADIR UN CAMPO EN LA TABLA
-- Se añadirá el campo id (identificador) de tipo
-- entero y auto incremental, al principio.
-- Este campo debe clave primaria
ALTER TABLE contactos add column id integer auto_increment primary key first;

-- AÑADIR CAMPOS EN UNA TABLA
-- POR OMISIÓN LOS CAMPOS SE AÑADEN AL FINAL
alter table contactos add column telefono_ofi varchar(11);

-- AÑADIR CAMPO DESPUÉS DE CAMPO PRE EXISTENTE
alter table contactos add column telefono_hab  varchar(11) after correo_electronico;

alter table contactos add column telefono_cel  varchar(11) after telefono_hab;

-- CAMBIAR NOMBRE DE CAMPOS O TIPOS DE DATOS
alter table contactos change column telefono_cel telf_cel varchar(11);
alter table contactos change column telefono_hab telf_hab varchar(11);
alter table contactos change column telefono_ofi telf_ofi varchar(11);

-- ACTUALIZACIÓN DEL CONTENIDO DE UN CAMPO EN LA TABLA
-- todos los registros
UPDATE CONTACTOS SET telf_hab = '02125554433';










