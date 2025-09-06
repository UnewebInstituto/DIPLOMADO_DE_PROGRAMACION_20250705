-- CONEXIÓN A LA BASE DE DATOS
mysql -u root -p 

-- CREACIÓN DE BASE DE DATOS
create database bd_frayner_20250830;

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





