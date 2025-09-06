-- CONEXIÓN A LA BASE DE DATOS
mysql -u root -p


-- CREACIÓN DE BASE DE DATOS
create database bd_barbara_20250830;


-- VISUALIZAR LAS BASES DE DATOS CONTENIDAS EN EL SERVIDOR
show databases;


-- MOSTRAR LAS BASES DE DATOS, QUE EN EL CONTENIDO DEL NOMBRE SE ENCUENTRE EL TEXTO _20250830
show databases like '%_20250830%'; 


-- CREACIÓN DE LA  TABLA CONTACTOS
create table contactos(
    nombre varchar(80),
    apellido varchar(80),
    telefono varchar(11),
    direccion text,
    correo_electronico text
);


-- CONSULTAR ESTRUCTURA DE UNA TABLA
-- 1era. Forma:
describe contactos;
-- 2da. Forma:
show create table contactos;


-- GUARDAR DATOS EN UNA TABLA
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
value
('ANA', 'VAZQUEZ', '02121234567', 'SANTA FE', 'av@gmail.com');


-- CONSULTAR DATOS EN UNA TABLA
-- VER TODAS LAS COLUMNAS
select * from contactos;


-- VER ALGUNAS COLUMNAS DE LA TABLA (se indica la lista de campos)
select nombre, apellido, telefono from contactos;


--GUARDAR VARIOS REGISTROS EN LA TABLA
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
values
('YOLANDA', 'TORTOZA', '02127894561', 'CATIA LA MAR', 'yt@gmail.com'),
('LIBIA', 'COLS', '02125896314', 'GUARENAS', 'lc@gmail.com'),
('HENDRINA', 'MONASTERIOS', '02127412589', 'LOS VALLES DEL TUY', 'hm@gmail.com');


-- PARA BORRAR REGISTROS DE LA TABLA
-- BORRADO TOTAL
delete from contactos; --Mantiene el contador de registros
-- OTRA FORMA
truncate contactos; --Reinicia el contador de registros
-- BORRADO CONDICIONADO
delete from contactos where nombre = 'ANA';


-- MODIFICACIÓN DE LA ESTRUCTURA DE TABLAS
-- BORRAR CAMPO DE LA TABLA
alter table contactos drop column telefono;


-- AÑADIR UN CAMPO EN LA TABLA
-- Se añadirá el campo id (identificador) de tipo entero y auto incremental, al principio.
alter table contactos add column id integer auto_increment primary key first;


-- AÑADIR CAMPO EN UNA TABLA
-- Por omisión los campos se añaden al final
alter table contactos add column telefono_ofi varchar(11);


-- AÑADIR CAMPO DESPUÉS DE CAMPO PRE EXISTENTE
alter table contactos add column telefono_hab varchar(11) after correo_electronico;

alter table contactos add column telefono_cel varchar(11) after telefono_hab;


-- CAMBIAR NOMBRE DE CAMPOS O TIPOS DE DATOS
alter table contactos change column telefono_cel telf_cel varchar(11);
alter table contactos change column telefono_hab telf_hab varchar(11);
alter table contactos change column telefono_ofi telf_ofi varchar(11);

-- ACTUALIZACIÓN DEL CONTENIDO DE UN CAMPO EN LA TABLA
-- todos los registros
update contactos set telf_hab = '02125554433';