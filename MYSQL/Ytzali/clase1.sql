--Conexión a la base de datos 
mysql -u root -p


-- Creación de base de datos 
create database bd_ytzali_20250830;

--Vizualizar las bases de datos contenidas en el servidor
show databases;

-- Mostrar las bases de datos, que en el contenido de nombre se encuentren la base filtrada 
show databases like '%_20250830%'; 

-- Cambiar Base de Datos
use bd_ytzali_20250830;

-- Ver Tablas
show tables;


-- Creación de la tabla de contactos 
create table contactos(
    nombre varchar(80),
    apellido varchar(80),
    telefono varchar(11),
    direccion text,
    correo_electronico text
);

-- Consultar estructura de una tabla
-- 1era, Forma:
describe contactos;

--2da, Forma:
show create table contactos; 

-- Guardar datos en una tabla 
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
value 
('ANA', 'VASQUEZ', '02121234567', 'SANTA FE', 'av@gmail.com');


-- Consultar los datos de una tabla
-- Ver todas las columnas *
select * from contactos;

--Ver algunas columnas de las tablas (se indica la lista de campos)
select nombre, apellido, telefono from contactos;

--Guardar varios registros en la tabla 
insert into contactos(nombre, apellido, telefono, direccion, correo_electronico)
values
('ANA', 'VASQUEZ', '02121234567', 'SANTA FE', 'av@gmail.com'),
("Yolanda", "Tortoza", "02124526798", "Catia La Mar", "yt@gmail.com"),
("Ytzali", "Rodriguez", "02122795183", "Charallave o Los Teques", "yr@gmail.com"),
("Ytali", "Rodriguez", "02122795186", "Charallave o Los Teques", "ytr@gmail.com");

-- Borrar registros de la tabla 
--Borrado total
delete from contactos; -- Mantiene el contador de registros
--Otra forma
truncate contactos; -- Reinicia el contador de registros (Auto increment) 
--Borrado condicionado 
delete from contactos WHERE nombre = 'ANA';

-- Modificacion de Tabla
--Borrar Campo de la Tabla
alter table contactos drop column telefono;

-- Añadir un Campo en la Tabla
--Se añadirá el campo id (identificador) de tipo entero y auto incremental, al principio
-- Este campo debe ser clave primaria
alter table contactos add column id integer auto_increment primary key first;

--Añadir campos en una tabla 
-- Por omisión, los campos se añaden al final 
alter table contactos add column telefono_ofi varchar(11);

--Añadir el campo despues de un campo pre existente
alter table contactos add column telefono_hab varchar(11)
after correo_electronico;

alter table contactos add column telefono_cel varchar(11)
after telefono_hab;

--Cambiar el nombre de los campos o tipos de datos 
alter table contactos change column telefono_cel telf_cel varchar(11);

alter table contactos change column telefono_hab telf_hab varchar(11);

alter table contactos change column telefono_ofi telf_ofi varchar(11);

--Actualización del contenido de un campo en la tabla 
-- Todos los registros
update contactos set telf_hab = '02123815041';




